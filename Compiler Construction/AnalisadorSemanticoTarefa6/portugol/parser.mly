
%{
  open Lexing
  open Ast
  open Sast
%}

%token <int * Lexing.position> INT
%token <float * Lexing.position> FLOAT
%token <string * Lexing.position> ID
%token <string * Lexing.position> LITSTRING
%token <char * Lexing.position> LITCHAR  
%token <Lexing.position> ALGORITMO
%token <Lexing.position> SOMA SUB MULT DIVISAO MOD
%token <Lexing.position> POTENCIA
%token <Lexing.position> APAR
%token <Lexing.position> FPAR
%token <Lexing.position> ACOL
%token <Lexing.position> FCOL
%token <Lexing.position> IGUAL
%token <Lexing.position> DIFERENTE
%token <Lexing.position> MAIOR
%token <Lexing.position> MAIORIGUAL
%token <Lexing.position> MENOR
%token <Lexing.position> MENORIGUAL
%token <Lexing.position> E OU XOU
%token <Lexing.position> ATRIB
%token <Lexing.position> DECLARA 
%token <Lexing.position> PTV
%token <Lexing.position> VAR
%token <Lexing.position> INTEIRO
%token <Lexing.position> LOGICO
%token <Lexing.position> REAL
%token <Lexing.position> ATE 
%token <Lexing.position> CARACTER
%token <Lexing.position> CASO
%token <Lexing.position> DE
%token <Lexing.position> VIRGULA
%token <Lexing.position> INICIO
%token <Lexing.position> FUNCAO
%token <Lexing.position> FIMFUNCAO
%token <Lexing.position> FIMPARA 
%token <Lexing.position> FIMSE
%token <Lexing.position> FIMENQUANTO
%token <Lexing.position> FIMESCOLHA
%token <Lexing.position> SE
%token <Lexing.position> ENTAO
%token <Lexing.position> SENAO
%token <Lexing.position> ENQUANTO
%token <Lexing.position> ESCOLHA
%token <Lexing.position> ESCREVA
%token <Lexing.position> ESCREVAL
%token <Lexing.position> LEIA
%token <Lexing.position> FACA
%token <Lexing.position> OUTROCASO
%token <Lexing.position> PARA 
%token <Lexing.position> PASSO 
%token <Lexing.position> RETORNE
%token <Lexing.position> VERDADEIRO
%token <Lexing.position> VOID
%token <Lexing.position> FALSO
%token <Lexing.position> FIMALGORITMO
%token EOF


%left OU XOU
%left E
%left IGUAL DIFERENTE
%left MAIOR MAIORIGUAL MENOR MENORIGUAL
%left SOMA SUB
%left MULT DIVISAO MOD
%right POTENCIA

/*%nonassoc NAO*/


%start <Sast.expressao Ast.prog> prog

%%
   
prog:
    | da=declaracao_algoritmo VAR vdb=var_decl* fd=func_decl* stmb=stm_block  EOF { Prog (List.flatten vdb,fd,stmb) }
    ;

declaracao_algoritmo:
    | ALGORITMO LITSTRING { DeclAlg }
    ;

var_decl:
    | ids = separated_nonempty_list(VIRGULA, ID) DECLARA t=tp_primitivo PTV {  List.map (fun id -> DecVar(id,t)) ids }
    ;


tp_primitivo:
    | INTEIRO { TipoInteiro }
    | REAL { TipoReal }
    | CARACTER { TipoCaractere }
    | LOGICO { TipoBooleano }
    | VOID { TipoVoid }
    ;

stm_block:
    | INICIO stms=stm_list* FIMALGORITMO { (stms)}
    ;

stm_list:
    | stm=stm_attr {stm}
    | stm=stm_fcall {stm}
    | stm=stm_ret {stm}
    | stm=stm_se {stm}
    | stm=stm_enquanto {stm}
    | stm=stm_para {stm}
    | stm=stm_leia {stm}
    | stm=stm_escreva {stm}
    | stm=stm_escreval {stm}
    | stm=stm_escolha {stm}
    ;

stm_fcall:
    | exp=fcall PTV {Chamada exp}
    ;

stm_ret:
    | RETORNE expr=expr? PTV { Retorne(expr)}
    ;

lvalue: 
    | id=ID { Var(id) }
    | lv=lvalue ACOL e=expr FCOL {VarElement(lv,e)}
    ;


stm_attr:
    | v=expr ATRIB e=expr PTV { Attrib(v,e) }
    ;

stm_se:
    | SE e=expr ENTAO stms=stm_list* senao=stm_senao? FIMSE { Se(e,stms,senao)}
    ;

stm_senao:
    | SENAO stm=stm_list* { stm }
    ;

stm_escolha:
    | ESCOLHA id=ID c=case+ OUTROCASO stms=stm_list* FIMESCOLHA {Escolha(id,c,stms) }
    ;

case:
    | CASO c=LITCHAR stms=stm_list* {CaseChar(c,stms)}
    | CASO i=INT stms=stm_list* {CaseInt(i,stms) }
    ;

stm_enquanto:
    | ENQUANTO e=expr FACA stm=stm_list* FIMENQUANTO { Enquanto (e,stm) }
    ;

stm_para:
    | PARA lv=expr DE e1=expr ATE e2=expr p=passo FACA stm=stm_list* FIMPARA {Para (lv,e1,e2,p,stm) }
    ;

stm_leia:
    | LEIA APAR stm=separated_nonempty_list(VIRGULA, expr) FPAR PTV {Leia stm}
    ;

stm_escreva:
    | ESCREVA APAR stm=separated_nonempty_list(VIRGULA, expr) FPAR PTV {Escreva stm}
    ;

stm_escreval:
    | ESCREVAL APAR stm=separated_nonempty_list(VIRGULA, expr) FPAR PTV {Escreval stm }
    ;

passo:
    | PASSO i=INT {ExpInt i}
   /* | PASSO SUB i=INT {ExpInt i} */
    ; 

expr:  
   | e1=expr o=op e2=expr { ExpOp(o,e1,e2) }
   | f=fcall { f }
   | s=LITSTRING { ExpString s}
   | i=INT { ExpInt i}
   | f=FLOAT { ExpFloat f}
   | c=LITCHAR { ExpChar c}
   | l=logico_value { ExpBool l}
   | lv=lvalue { ExpVar lv } 
   /*| pos=NAO e=expr { ExpNot (e, pos)}*/
   | APAR e=expr FPAR { e }
   ;

%inline op:
  | pos = SOMA { (Soma, pos) }
  | pos = SUB  { (Subtracao, pos) }
  | pos = MULT { (Multiplicacao, pos) }
  | pos = DIVISAO { (Divisao, pos) }
  | pos = POTENCIA { (Potencia, pos) }
  | pos = MOD { (Modulo, pos) }
  | pos = IGUAL { (Igual, pos) }
  | pos = DIFERENTE { (Diferente, pos) }
  | pos = MENOR { (Menor, pos) }
  | pos = MENORIGUAL { (MenorIgual, pos) }
  | pos = MAIOR { (Maior, pos) }
  | pos = MAIORIGUAL { (MaiorIgual, pos) }
  | pos = E { (ELogico, pos) }
  | pos = OU { (OuLogico, pos) }
  | pos = XOU { (XouLogico, pos) }
  ;


logico_value:
  | pos=VERDADEIRO { (true,pos) }
  | pos=FALSO  { (false,pos) }
  ;

fcall:
    | id=ID APAR args=fargs? FPAR { ExpFunCall(id,(match args with
                                                  | None -> []
                                                  | Some fargs -> fargs )) }
    ;

fargs:
    | exprs=separated_nonempty_list(VIRGULA, expr) {  List.map (fun expr -> expr) exprs}
    ;

/*Declaração de funções*/
func_decl:
    | FUNCAO id=ID APAR fp=fparams? FPAR fy=func_type VAR fv=var_decl* fb=func_bloc { FuncDecl {
                                                                                             fn_id = id; 
                                                                                             fn_params = (match fp with
                                                                                                  | None -> []
                                                                                                  | Some args -> args); 
                                                                                             fn_tiporet = fy;
                                                                                             fn_locais = List.flatten fv;
                                                                                             fn_corpo = fb }
                                                                                           }
	  ;

func_type:
    | DECLARA t=tp_primitivo { (t) }
    ;
/* */

func_bloc:
    | INICIO stm=stm_list* FIMFUNCAO {(stm)}
    ;


/*Parâmetro de funções*/
fparams:
    | fparam=separated_nonempty_list(VIRGULA,fparam){ fparam }
    ;

fparam:
    | id=ID DECLARA t=tp_primitivo {(id,t)}
    ;
