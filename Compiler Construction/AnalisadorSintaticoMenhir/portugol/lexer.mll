
{
  open Parser
  open Lexing
  open Printf

  let incr_num_linha lexbuf = 
    let pos = lexbuf.lex_curr_p in
     lexbuf.lex_curr_p <- { pos with
        pos_lnum = pos.pos_lnum + 1;
        pos_bol = pos.pos_cnum;
     }

  let msg_erro lexbuf c =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "%d-%d: caracter desconhecido %c" lin col c

  let erro lin col msg =
    let mensagem = sprintf "%d-%d: %s" lin col msg in
       failwith mensagem

}

let digito = ['0' - '9']
let int = '-'? digito+
let float = '-' ? digito+ '.'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "{"       { comentario_bloco 0 lexbuf }
| "("        { APAR }
| ")"        { FPAR }
| "["        { ACOL }
| "]"        { FCOL } 
| "<-"       { ATRIB }
| ":"        { DECLARA}
| ";"        { PTV }
| "+"        { SOMA }
| "-"        { SUB }
| "*"        { MULT }
| "/"        { DIVISAO }
| ","        { VIRGULA }
| "^"        { POTENCIA }
| "%"
| "MOD"      { MOD }
| "="        { IGUAL }
| "<"        { MENOR }
| ">"        { MAIOR }
| "<="       { MENORIGUAL }
| ">="       { MAIORIGUAL }
| "<>"       { DIFERENTE }
| "nao"      { NAO }
| "ou"       { OU }
| "e"        { E }
| "xou"      { XOU }
| "algoritmo" { ALGORITMO } 
| "ate"       { ATE }
| "caso"      { CASO }
| "caractere" { CARACTER }
| "de"        { DE }
| "enquanto"  { ENQUANTO }
| "entao"     { ENTAO }
| "escolha"   { ESCOLHA }
| "escreva"   { ESCREVA }
| "escreval"  { ESCREVAL }
| "faca"      { FACA }
| "falso"     { FALSO }
| "fimalgoritmo" { FIMALGORITMO }
| "fimenquanto" { FIMENQUANTO }
| "fimescolha"  { FIMESCOLHA }
| "fimfuncao" { FIMFUNCAO }
| "fimpara"   { FIMPARA }
| "fimse"     { FIMSE }
| "funcao"    { FUNCAO }
| "inicio"    { INICIO }
| "inteiro"   { INTEIRO }
| "leia"      { LEIA }
| "logico"    { LOGICO }
| "outrocaso" { OUTROCASO }
| "para"      { PARA }
| "passo"     { PASSO }
| "real"      { REAL }
| "se"        { SE }
| "senao"     { SENAO }
| "retorne"   { RETORNE }
| "var"       { VAR }
| "verdadeiro"  { VERDADEIRO }
| identificador    { ID (Lexing.lexeme lexbuf) }
| int   { INT (int_of_string (Lexing.lexeme lexbuf)) }
| float { FLOAT (float_of_string (Lexing.lexeme lexbuf))}
| '''        { let buffer = Buffer.create 1 in 
               let c = leia_string buffer lexbuf in
                LITCHAR c }
| '"'        { let buffer = Buffer.create 1 in 
               let str = leia_string buffer lexbuf in
                LITSTRING str }
| eof   { EOF }
and comentario_bloco n = parse
   "}"   { if n=0 then token lexbuf 
            else comentario_bloco (n-1) lexbuf }
| "{"    { comentario_bloco (n+1) lexbuf }
| _       { comentario_bloco n lexbuf }
| eof     { failwith "Comentário não fechado" }
and leia_string buffer = parse
  '"'    { Buffer.contents buffer}
| '''     { Buffer.contents buffer}
| "\\t"   { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"   { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\'  { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof     { failwith "A string não foi fechada"}
