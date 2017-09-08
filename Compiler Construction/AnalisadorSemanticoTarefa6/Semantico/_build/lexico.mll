{
  open Lexing
  open Printf
  open Sintatico

  exception Erro of string

  let incr_num_linha lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
      { pos with pos_lnum = pos.pos_lnum + 1;
                 pos_bol = pos.pos_cnum
      }

  let pos_atual lexbuf = lexbuf.lex_start_p

}

let digito = ['0' - '9']
let inteiro = '-'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "--" [^ '\r' '\n' ]*

rule token =
  parse
  | brancos { token lexbuf }
  | novalinha  { incr_num_linha lexbuf; token lexbuf }
  | comentario { token lexbuf }
  | "/*"       { comentario_bloco 0 lexbuf }
  | '+'   { MAIS (pos_atual lexbuf) }
  | '-'   { MENOS (pos_atual lexbuf) }
  | '*'   { MULT (pos_atual lexbuf) }
  | '/'   { DIV (pos_atual lexbuf) }
  | '<'   { MENOR (pos_atual lexbuf) }
  | '='   { IGUAL (pos_atual lexbuf) }
  | "!="  { DIFER (pos_atual lexbuf) }
  | '>'   { MAIOR (pos_atual lexbuf) }
  | "&&"  { ELOG (pos_atual lexbuf) }
  | "||"  { OULOG (pos_atual lexbuf) }
  | '^'   { CONCAT (pos_atual lexbuf) }
  | '('   { APAR (pos_atual lexbuf) }
  | ')'   { FPAR (pos_atual lexbuf) }
  | '['   { ACOL (pos_atual lexbuf) }
  | ']'   { FCOL (pos_atual lexbuf) }
  | ','   { VIRG (pos_atual lexbuf) }
  | ".."  { PPTO (pos_atual lexbuf) }
  | '.'   { PTO (pos_atual lexbuf) }
  | ':'   { DPTOS (pos_atual lexbuf) }
  | ';'   { PTV (pos_atual lexbuf) }
  | ":="  { ATRIB (pos_atual lexbuf) }
  | '"'   { let buffer = Buffer.create 1 in
            let str = leia_string buffer lexbuf in
               STRING (str, pos_atual lexbuf) }
  | "programa"   { PROGRAMA (pos_atual lexbuf) }
  | "funcao"     { FUNCAO (pos_atual lexbuf) }
  | "retorne"    { RETORNE (pos_atual lexbuf) }
  | "inicio"     { INICIO (pos_atual lexbuf) }
  | "fim"        { FIM (pos_atual lexbuf) }
  | "inteiro"    { INTEIRO (pos_atual lexbuf) }
  | "cadeia"     { CADEIA (pos_atual lexbuf) }
  | "booleano"   { BOOLEANO (pos_atual lexbuf) }
  | "arranjo"    { ARRANJO (pos_atual lexbuf) }
  | "de"         { DE (pos_atual lexbuf) }
  | "registro"   { REGISTRO (pos_atual lexbuf) }
  | "fim"        { FIM (pos_atual lexbuf) }
  | "se"         { SE (pos_atual lexbuf) }
  | "entao"      { ENTAO (pos_atual lexbuf) }
  | "senao"      { SENAO (pos_atual lexbuf) }
  | "entrada"    { ENTRADA (pos_atual lexbuf) }
  | "saida"      { SAIDA (pos_atual lexbuf) }
  | "verdadeiro" { BOOL (true, pos_atual lexbuf) }
  | "falso"      { BOOL (false, pos_atual lexbuf) }
  | identificador as x    { ID (x, pos_atual lexbuf) }
  | inteiro as n  { INT (int_of_string n, pos_atual lexbuf) }
  | _  { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf)) }
  | eof   { EOF }

and comentario_bloco n = parse
   "*/"   { if n=0 then token lexbuf
            else comentario_bloco (n-1) lexbuf }
| "/*"    { comentario_bloco (n+1) lexbuf }
| _       { comentario_bloco n lexbuf }
| eof     { raise (Erro "Comentário não terminado") }

and leia_string buffer = parse
   '"'      { Buffer.contents buffer}
| "\\t"     { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"     { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\' { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof       { raise (Erro "A string não foi terminada") }

