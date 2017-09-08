
(* The type of tokens. *)

type token = 
  | XOU of (Lexing.position)
  | VOID of (Lexing.position)
  | VIRGULA of (Lexing.position)
  | VERDADEIRO of (Lexing.position)
  | VAR of (Lexing.position)
  | SUB of (Lexing.position)
  | SOMA of (Lexing.position)
  | SENAO of (Lexing.position)
  | SE of (Lexing.position)
  | RETORNE of (Lexing.position)
  | REAL of (Lexing.position)
  | PTV of (Lexing.position)
  | POTENCIA of (Lexing.position)
  | PASSO of (Lexing.position)
  | PARA of (Lexing.position)
  | OUTROCASO of (Lexing.position)
  | OU of (Lexing.position)
  | MULT of (Lexing.position)
  | MOD of (Lexing.position)
  | MENORIGUAL of (Lexing.position)
  | MENOR of (Lexing.position)
  | MAIORIGUAL of (Lexing.position)
  | MAIOR of (Lexing.position)
  | LOGICO of (Lexing.position)
  | LITSTRING of (string * Lexing.position)
  | LITCHAR of (char * Lexing.position)
  | LEIA of (Lexing.position)
  | INTEIRO of (Lexing.position)
  | INT of (int * Lexing.position)
  | INICIO of (Lexing.position)
  | IGUAL of (Lexing.position)
  | ID of (string * Lexing.position)
  | FUNCAO of (Lexing.position)
  | FPAR of (Lexing.position)
  | FLOAT of (float * Lexing.position)
  | FIMSE of (Lexing.position)
  | FIMPARA of (Lexing.position)
  | FIMFUNCAO of (Lexing.position)
  | FIMESCOLHA of (Lexing.position)
  | FIMENQUANTO of (Lexing.position)
  | FIMALGORITMO of (Lexing.position)
  | FCOL of (Lexing.position)
  | FALSO of (Lexing.position)
  | FACA of (Lexing.position)
  | ESCREVAL of (Lexing.position)
  | ESCREVA of (Lexing.position)
  | ESCOLHA of (Lexing.position)
  | EOF
  | ENTAO of (Lexing.position)
  | ENQUANTO of (Lexing.position)
  | E of (Lexing.position)
  | DIVISAO of (Lexing.position)
  | DIFERENTE of (Lexing.position)
  | DECLARA of (Lexing.position)
  | DE of (Lexing.position)
  | CASO of (Lexing.position)
  | CARACTER of (Lexing.position)
  | ATRIB of (Lexing.position)
  | ATE of (Lexing.position)
  | APAR of (Lexing.position)
  | ALGORITMO of (Lexing.position)
  | ACOL of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sast.expressao Ast.prog)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val prog: Lexing.position -> (Sast.expressao Ast.prog) MenhirInterpreter.checkpoint
  
end
