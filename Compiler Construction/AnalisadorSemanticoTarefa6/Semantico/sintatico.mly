
%{
open Lexing
open Ast
open Sast
%}

%token <int * Lexing.position> INT
%token <string * Lexing.position> ID
%token <string * Lexing.position> STRING
%token <bool * Lexing.position> BOOL
%token <Lexing.position> PROGRAMA
%token <Lexing.position> INICIO
%token <Lexing.position> FIM
%token <Lexing.position> FUNCAO
%token <Lexing.position> VIRG DPTOS PTO PPTO PTV
%token <Lexing.position> ACOL FCOL
%token <Lexing.position> APAR FPAR
%token <Lexing.position> INTEIRO CADEIA BOOLEANO
%token <Lexing.position> ARRANJO DE
%token <Lexing.position> REGISTRO
%token <Lexing.position> SE ENTAO SENAO
%token <Lexing.position> ENTRADA
%token <Lexing.position> SAIDA
%token <Lexing.position> ATRIB RETORNE
%token <Lexing.position> MAIS
%token <Lexing.position> MENOS
%token <Lexing.position> MULT
%token <Lexing.position> DIV
%token <Lexing.position> MENOR
%token <Lexing.position> IGUAL
%token <Lexing.position> DIFER
%token <Lexing.position> MAIOR
%token <Lexing.position> ELOG
%token <Lexing.position> OULOG
%token <Lexing.position> CONCAT
%token EOF

%left OULOG
%left ELOG
%left IGUAL DIFER
%left MAIOR MENOR
%left CONCAT
%left MAIS MENOS
%left MULT DIV


%start <Sast.expressao Ast.programa> programa

%%

programa: PROGRAMA
          ds = declaracao_de_variavel*
          fs = declaracao_de_funcao*
          INICIO
            cs = comando*
          FIM PTV
          EOF { Programa (List.flatten ds, fs, cs) }


declaracao_de_variavel:
  ids = separated_nonempty_list(VIRG, ID) DPTOS t = tipo PTV {
                   List.map (fun id -> DecVar (id,t)) ids  }

declaracao_de_funcao:
  FUNCAO nome = ID APAR formais = separated_list(VIRG, parametro) FPAR DPTOS tret = tipo
  ds = declaracao_de_variavel*
  INICIO
  cs = comando*
  FIM PTV {
    DecFun {
      fn_nome = nome;
      fn_tiporet = tret ;
      fn_formais = formais;
      fn_locais = List.flatten ds;
      fn_corpo = cs
    }
 }

parametro: nome = ID DPTOS t = tipo { (nome, t) }

tipo: t=tipo_simples  { t }
    | t=tipo_arranjo  { t }
    | t=tipo_registro { t }


tipo_simples: INTEIRO  { TipoInt    }
            | CADEIA   { TipoString }
            | BOOLEANO { TipoBool   }


tipo_arranjo: ARRANJO ACOL lim=limites FCOL DE tp=tipo {
                let (inicio, fim) = lim in
                TipoArranjo (tp, inicio, fim)
            }

tipo_registro: REGISTRO
                 campos=nonempty_list(id=ID DPTOS tp=tipo PTV { (id,tp) } )
               FIM REGISTRO { TipoRegistro campos }


limites: inicio=INT PPTO fim=INT { (inicio, fim) }

comando: c=comando_atribuicao { c }
       | c=comando_se         { c }
       | c=comando_entrada    { c }
       | c=comando_saida      { c }
       | c=comando_chamada    { c }
       | c=comando_retorno    { c }

comando_atribuicao: esq=expressao ATRIB dir=expressao PTV {
      CmdAtrib (esq,dir)
}

comando_se: SE APAR teste=expressao FPAR ENTAO
               entao=comando+
               senao=option(SENAO cs=comando+ {cs})
            FIM SE PTV {
              CmdSe (teste, entao, senao)
            }

comando_entrada: ENTRADA xs=separated_nonempty_list(VIRG, expressao) PTV {
                   CmdEntrada xs
               }

comando_saida: SAIDA xs=separated_nonempty_list(VIRG, expressao) PTV {
                 CmdSaida xs
         }

comando_chamada: exp=chamada PTV { CmdChamada exp }

comando_retorno: RETORNE e=expressao? PTV { CmdRetorno e}

expressao:
         | v=variavel { ExpVar v    }
         | i=INT      { ExpInt i    }
         | s=STRING   { ExpString s }
         | b=BOOL     { ExpBool b   }
	 | e1=expressao op=oper e2=expressao { ExpOp (op, e1, e2) }
         | c = chamada  { c }
 	 | APAR e=expressao FPAR { e }

chamada : nome=ID APAR args=separated_list(VIRG, expressao) FPAR {
             ExpChamada  (nome, args)}

%inline oper:
	| pos = MAIS   { (Mais, pos)  }
        | pos = MENOS  { (Menos, pos) }
        | pos = MULT   { (Mult, pos)  }
        | pos = DIV    { (Div, pos)   }
        | pos = MENOR  { (Menor, pos) }
        | pos = IGUAL  { (Igual, pos) }
        | pos = DIFER  { (Difer, pos) }
        | pos = MAIOR  { (Maior, pos) }
        | pos = ELOG   { (E, pos)     }
        | pos = OULOG  { (Ou, pos)    }
        | pos = CONCAT { (Concat, pos)}

variavel:
        | x=ID       { VarSimples x }
        | v=variavel PTO x=ID { VarCampo (v,x) }
        | v=variavel ACOL e=expressao FCOL { VarElemento (v,e) }


