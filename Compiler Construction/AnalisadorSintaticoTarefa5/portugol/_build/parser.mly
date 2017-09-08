
%{
  open Ast
%}

%token <int> INT
%token <float> FLOAT
%token <string> ID
%token <string> LITSTRING
%token <char> LITCHAR  
%token ALGORITMO
%token SOMA SUB MULT DIVISAO MOD
%token POTENCIA
%token APAR
%token FPAR
%token ACOL
%token FCOL
%token IGUAL
%token DIFERENTE
%token MAIOR
%token MAIORIGUAL
%token MENOR
%token MENORIGUAL
%token E OU NAO XOU
%token EOF
%token ATRIB
%token DECLARA 
%token PTV
%token VAR
%token INTEIRO
%token LOGICO
%token REAL
%token ATE 
%token CARACTER
%token CASO
%token DE
%token VIRGULA
%token INICIO
%token FUNCAO
%token FIMFUNCAO
%token FIMPARA 
%token FIMSE
%token FIMENQUANTO
%token FIMESCOLHA
%token SE
%token ENTAO
%token SENAO
%token ENQUANTO
%token ESCOLHA
%token ESCREVA
%token ESCREVAL
%token LEIA
%token FACA
%token OUTROCASO
%token PARA 
%token PASSO 
%token RETORNE
%token VERDADEIRO
%token FALSO
%token FIMALGORITMO


%left OU XOU
%left E
%left IGUAL DIFERENTE
%left MAIOR MAIORIGUAL MENOR MENORIGUAL
%left SOMA SUB
%left MULT DIVISAO MOD
%right POTENCIA

%nonassoc NAO


%start <Ast.prog> prog

%%
   
prog:
    | da=declaracao_algoritmo vdb=var_decl_block? fd=func_decl* stmb=stm_block  EOF { Prog (da,vdb,fd,stmb) }
    ;

declaracao_algoritmo:
    | ALGORITMO LITSTRING { DeclAlg }
    ;

var_decl_block:
    | VAR v=var_decl* { VarDeclBlock (v) }
    ;

var_decl:
    | ids = separated_nonempty_list(VIRGULA, ID) DECLARA t=tp_primitivo PTV {  List.map (fun id -> (id,t)) ids }
    ;


tp_primitivo:
    | INTEIRO { Inteiro }
    | REAL { Real }
    | CARACTER { Caractere }
    | LOGICO { Booleano }
    ;

stm_block:
    | INICIO stms=stm_list* FIMALGORITMO { StmBlock(stms)}
    ;

stm_list:
    | stm=stm_attr {stm}
    | stm=fcall {stm}
    | stm=stm_ret {stm}
    | stm=stm_se {stm}
    | stm=stm_enquanto {stm}
    | stm=stm_para {stm}
    | stm=stm_leia {stm}
    | stm=stm_escreva {stm}
    | stm=stm_escreval {stm}
    | stm=stm_escolha {stm}
    ;

stm_ret:
    | RETORNE expr=expr? PTV { Retorne(expr)}
    ;

lvalue: 
    | id=ID { Var(id) }
    | lv=lvalue ACOL e=expr FCOL {VarElement(lv,e)}
    ;


stm_attr:
    | v=lvalue ATRIB e=expr PTV { Attrib(v,e) }
    ;

stm_se:
    | SE e=expr ENTAO stms=stm_list* senao=stm_senao? FIMSE { Se(e,stms,senao)}
    ;

stm_senao:
    | SENAO stm=stm_list* { SeNao(stm) }
    ;

stm_escolha:
    | ESCOLHA id=ID c=case+ OUTROCASO stms=stm_list* FIMESCOLHA {Escolha(id,c,stms) }
    ;

case:
    | CASO c=LITCHAR stms=stm_list* {CaseChar(c,stms)}
    | CASO i=INT stms=stm_list* {CaseInt(i,stms) }
    ;

stm_enquanto:
    | ENQUANTO expr FACA stm=stm_list* FIMENQUANTO { Enquanto stm }
    ;

stm_para:
    | PARA lvalue DE expr ATE expr passo? FACA stm=stm_list* FIMPARA {Para stm }
    ;

stm_leia:
    | LEIA APAR id=ID FPAR PTV {Leia id}
    ;

stm_escreva:
    | ESCREVA APAR stm=separated_nonempty_list(VIRGULA, expr) FPAR PTV {Escreva stm}
    ;

stm_escreval:
    | ESCREVAL APAR stm=separated_nonempty_list(VIRGULA, expr) FPAR PTV {Escreval stm }
    ;

passo:
    | PASSO SOMA INT { }
    | PASSO SUB INT { }
    ; 

expr:  
   | e1=expr o=op e2=expr { ExpOp(e1,o,e2) }
   | f=fcall { ExpFunCall f }
   | l=literal { ExpLit l }
   | lv=lvalue { ExpVar lv } 
   | NAO e=expr { Not e}
   | APAR e=expr FPAR { e }
   ;

%inline op:
  | SOMA { Soma }
  | SUB  { Subtracao }
  | MULT { Multiplicacao }
  | DIVISAO { Divisao }
  | POTENCIA { Potencia }
  | MOD { Modulo }
  | IGUAL { Igual }
  | DIFERENTE { Diferente }
  | MENOR { Menor }
  | MENORIGUAL { MenorIgual }
  | MAIOR { Maior }
  | MAIORIGUAL { MaiorIgual }
  | E { ELogico }
  | OU { OuLogico }
  | XOU { XouLogico }
  ;

literal:
  | s=LITSTRING { LitString s}
  | i=INT { Int i}
  | f=FLOAT { Float f}
  | c=LITCHAR { LitChar c}
  | l=logico_value { Bool l}
  ;

logico_value:
  | VERDADEIRO { true }
  | FALSO  { false }
  ;

fcall:
    | id=ID APAR args=fargs? FPAR { Fcallargs(id,(match args with
                                                  | None -> []
                                                  | Some fargs -> fargs )) }
    ;

fargs:
    | exprs=separated_nonempty_list(VIRGULA, expr) {  List.map (fun expr -> expr) exprs}
    ;

/*Declaração de funções*/
func_decl:
    | FUNCAO id=ID APAR fp=fparams? FPAR fy=func_type? fv=fvar_decl fb=func_bloc { FuncDecl (id, (match fp with
                                                                                                  | None -> []
                                                                                                  | Some args -> args)
                                                                                          ,fy,fv,fb) }
	  ;

func_type:
    | DECLARA t=tp_primitivo { FuncTipo(t) }
    ;
/* */

func_bloc:
    | INICIO stm=stm_list* FIMFUNCAO {FuncBloc(stm)}
    ;

/*Declaração de variáveis*/
fvar_decl:
    | v=var_decl_block? { FVarDecl(v) }
    ;

/*Parâmetro de funções*/
fparams:
    | fparam=separated_nonempty_list(VIRGULA,fparam){ fparam }
    ;

fparam:
    | id=ID DECLARA t=tp_primitivo {(id,t)}
    ;
