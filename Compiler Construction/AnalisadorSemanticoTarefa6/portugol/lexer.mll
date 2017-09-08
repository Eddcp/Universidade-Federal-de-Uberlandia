
{
  open Parser
  open Lexing
  open Printf

  exception Erro of string

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

  let pos_atual lexbuf = lexbuf.lex_start_p
}

let digito = ['0' - '9']
let int = '-'? digito+
let float = '-' ? digito+ '.'? digito+

let letra = ['a' - 'z' 'A' - 'Z']
let char = ''' (letra | digito) '''
let identificador = letra ( letra | digito | '_')*

let brancos = [' ' '\t']+
let novalinha = '\r' | '\n' | "\r\n"

let comentario = "//" [^ '\r' '\n' ]*

rule token = parse
  brancos    { token lexbuf }
| novalinha  { incr_num_linha lexbuf; token lexbuf }
| comentario { token lexbuf }
| "{"       { comentario_bloco 0 lexbuf }
| "("        { APAR (pos_atual lexbuf)}
| ")"        { FPAR (pos_atual lexbuf)}
| "["        { ACOL (pos_atual lexbuf)}
| "]"        { FCOL (pos_atual lexbuf)} 
| "<-"       { ATRIB (pos_atual lexbuf)}
| ":"        { DECLARA (pos_atual lexbuf)}
| ";"        { PTV (pos_atual lexbuf)}
| "+"        { SOMA (pos_atual lexbuf)}
| "-"        { SUB (pos_atual lexbuf)}
| "*"        { MULT (pos_atual lexbuf)}
| "/"        { DIVISAO (pos_atual lexbuf)}
| ","        { VIRGULA (pos_atual lexbuf)}
| "^"        { POTENCIA (pos_atual lexbuf)}
| "%"
| "MOD"      { MOD (pos_atual lexbuf)}
| "="        { IGUAL (pos_atual lexbuf)}
| "<"        { MENOR (pos_atual lexbuf)}
| ">"        { MAIOR (pos_atual lexbuf)}
| "<="       { MENORIGUAL (pos_atual lexbuf)}
| ">="       { MAIORIGUAL (pos_atual lexbuf)}
| "<>"       { DIFERENTE (pos_atual lexbuf)} 
| "ou"       { OU (pos_atual lexbuf)}
| "e"        { E (pos_atual lexbuf)}
| "xou"      { XOU (pos_atual lexbuf)}
| "algoritmo" { ALGORITMO (pos_atual lexbuf)} 
| "ate"       { ATE (pos_atual lexbuf)}
| "caso"      { CASO (pos_atual lexbuf)}
| "caractere" { CARACTER (pos_atual lexbuf)}
| "de"        { DE (pos_atual lexbuf)}
| "enquanto"  { ENQUANTO (pos_atual lexbuf)}
| "entao"     { ENTAO (pos_atual lexbuf)}
| "escolha"   { ESCOLHA (pos_atual lexbuf)}
| "escreva"   { ESCREVA (pos_atual lexbuf)}
| "escreval"  { ESCREVAL (pos_atual lexbuf)}
| "faca"      { FACA (pos_atual lexbuf)}
| "falso"     { FALSO (pos_atual lexbuf)}
| "fimalgoritmo" { FIMALGORITMO (pos_atual lexbuf)}
| "fimenquanto" { FIMENQUANTO (pos_atual lexbuf)}
| "fimescolha"  { FIMESCOLHA (pos_atual lexbuf)}
| "fimfuncao" { FIMFUNCAO (pos_atual lexbuf)}
| "fimpara"   { FIMPARA (pos_atual lexbuf)}
| "fimse"     { FIMSE (pos_atual lexbuf)}
| "funcao"    { FUNCAO (pos_atual lexbuf)}
| "inicio"    { INICIO (pos_atual lexbuf)}
| "inteiro"   { INTEIRO (pos_atual lexbuf)}
| "leia"      { LEIA (pos_atual lexbuf)}
| "logico"    { LOGICO (pos_atual lexbuf)}
| "outrocaso" { OUTROCASO (pos_atual lexbuf)}
| "para"      { PARA (pos_atual lexbuf)}
| "passo"     { PASSO (pos_atual lexbuf)}
| "real"      { REAL (pos_atual lexbuf)}
| "se"        { SE (pos_atual lexbuf)}
| "senao"     { SENAO (pos_atual lexbuf)}
| "retorne"   { RETORNE (pos_atual lexbuf)}
| "var"       { VAR (pos_atual lexbuf)}
| "vazio"     { VOID (pos_atual lexbuf)}
| "verdadeiro"  { VERDADEIRO (pos_atual lexbuf)}
| identificador as id   { ID (id, pos_atual lexbuf) }
| int as n { INT (int_of_string n, pos_atual lexbuf) }
| float as f { FLOAT (float_of_string f, pos_atual lexbuf)}
| char as c { LITCHAR (c.[1],pos_atual lexbuf)}
| '"'        { let buffer = Buffer.create 1 in 
               let str = leia_string buffer lexbuf in
                LITSTRING (str, pos_atual lexbuf)}
| _  { raise (Erro ("Caracter desconhecido: " ^ Lexing.lexeme lexbuf)) }
| eof   { EOF }
and comentario_bloco n = parse
   "}"    { if n=0 then token lexbuf 
            else comentario_bloco (n-1) lexbuf }
| "{"     { comentario_bloco (n+1) lexbuf }
| "\n"    { incr_num_linha lexbuf; comentario_bloco n lexbuf}
| _       { comentario_bloco n lexbuf }
| eof     { raise (Erro "Comentário não terminado") }
and leia_string buffer = parse
  '"'    { Buffer.contents buffer}
| "\\t"   { Buffer.add_char buffer '\t'; leia_string buffer lexbuf }
| "\\n"   { Buffer.add_char buffer '\n'; leia_string buffer lexbuf }
| '\\' '"'  { Buffer.add_char buffer '"'; leia_string buffer lexbuf }
| '\\' '\\'  { Buffer.add_char buffer '\\'; leia_string buffer lexbuf }
| _ as c    { Buffer.add_char buffer c; leia_string buffer lexbuf }
| eof     { raise (Erro "A string não foi fechada") }
