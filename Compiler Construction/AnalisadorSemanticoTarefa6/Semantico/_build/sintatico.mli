
(* The type of tokens. *)

type token = 
  | VIRG of (Lexing.position)
  | STRING of (string * Lexing.position)
  | SENAO of (Lexing.position)
  | SE of (Lexing.position)
  | SAIDA of (Lexing.position)
  | RETORNE of (Lexing.position)
  | REGISTRO of (Lexing.position)
  | PTV of (Lexing.position)
  | PTO of (Lexing.position)
  | PROGRAMA of (Lexing.position)
  | PPTO of (Lexing.position)
  | OULOG of (Lexing.position)
  | MULT of (Lexing.position)
  | MENOS of (Lexing.position)
  | MENOR of (Lexing.position)
  | MAIS of (Lexing.position)
  | MAIOR of (Lexing.position)
  | INTEIRO of (Lexing.position)
  | INT of (int * Lexing.position)
  | INICIO of (Lexing.position)
  | IGUAL of (Lexing.position)
  | ID of (string * Lexing.position)
  | FUNCAO of (Lexing.position)
  | FPAR of (Lexing.position)
  | FIM of (Lexing.position)
  | FCOL of (Lexing.position)
  | EOF
  | ENTRADA of (Lexing.position)
  | ENTAO of (Lexing.position)
  | ELOG of (Lexing.position)
  | DPTOS of (Lexing.position)
  | DIV of (Lexing.position)
  | DIFER of (Lexing.position)
  | DE of (Lexing.position)
  | CONCAT of (Lexing.position)
  | CADEIA of (Lexing.position)
  | BOOLEANO of (Lexing.position)
  | BOOL of (bool * Lexing.position)
  | ATRIB of (Lexing.position)
  | ARRANJO of (Lexing.position)
  | APAR of (Lexing.position)
  | ACOL of (Lexing.position)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programa: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Sast.expressao Ast.programa)

module MenhirInterpreter : sig
  
  (* The incremental API. *)
  
  include MenhirLib.IncrementalEngine.INCREMENTAL_ENGINE
    with type token = token
  
end

(* The entry point(s) to the incremental API. *)

module Incremental : sig
  
  val programa: Lexing.position -> (Sast.expressao Ast.programa) MenhirInterpreter.checkpoint
  
end
