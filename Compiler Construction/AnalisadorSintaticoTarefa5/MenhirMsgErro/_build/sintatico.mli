
(* The type of tokens. *)

type token = 
  | VIRG
  | STRING of (string)
  | SENAO
  | SE
  | SAIDA
  | REGISTRO
  | PTV
  | PTO
  | PROGRAMA
  | PPTO
  | OULOG
  | MULT
  | MENOS
  | MENOR
  | MAIS
  | MAIOR
  | INTEIRO
  | INT of (int)
  | INICIO
  | IGUAL
  | ID of (string)
  | FPAR
  | FIM
  | FCOL
  | EOF
  | ENTRADA
  | ENTAO
  | ELOG
  | DPTOS
  | DIV
  | DIFER
  | DE
  | CONCAT
  | CADEIA
  | BOOLEANO
  | BOOL of (bool)
  | ATRIB
  | ARRANJO
  | APAR
  | ACOL

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Ast.programa) MenhirInterpreter.checkpoint
  
end
