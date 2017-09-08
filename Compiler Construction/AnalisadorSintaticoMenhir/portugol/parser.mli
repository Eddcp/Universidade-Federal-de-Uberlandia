
(* The type of tokens. *)

type token = 
  | XOU
  | VIRGULA
  | VERDADEIRO
  | VAR
  | SUB
  | SOMA
  | SENAO
  | SE
  | RETORNE
  | REAL
  | PTV
  | POTENCIA
  | PASSO
  | PARA
  | OUTROCASO
  | OU
  | NAO
  | MULT
  | MOD
  | MENORIGUAL
  | MENOR
  | MAIORIGUAL
  | MAIOR
  | LOGICO
  | LITSTRING of (string)
  | LITCHAR of (string)
  | LEIA
  | INTEIRO
  | INT of (int)
  | INICIO
  | IGUAL
  | ID of (string)
  | FUNCAO
  | FPAR
  | FLOAT of (float)
  | FIMSE
  | FIMPARA
  | FIMFUNCAO
  | FIMESCOLHA
  | FIMENQUANTO
  | FIMALGORITMO
  | FCOL
  | FALSO
  | FACA
  | ESCREVAL
  | ESCREVA
  | ESCOLHA
  | EOF
  | ENTAO
  | ENQUANTO
  | E
  | DIVISAO
  | DIFERENTE
  | DECLARA
  | DE
  | CASO
  | CARACTER
  | ATRIB
  | ATE
  | APAR
  | ALGORITMO
  | ACOL

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)
