{
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


type tokens = APAR
            | FPAR
            | ACOL 
            | FCOL
            | ATRIB
            | SOMA
            | SUB
            | MULT
            | DIVISAO
            | POTENCIA
            | MOD
            | IGUAL
            | MENOR
            | MENORIGUAL
            | MAIOR
            | MAIORIGUAL
            | DIFERENTE
            | NAO
            | OU
            | E
            | XOU
            | ALEATORIO
            | ALGORITMO
            | ARQUIVO
            | ASC
            | ATE
            | CARAC
            | CARACPNUM
            | CARACTER
            | CASO
            | COMPR
            | COPIA
            | CRONOMETRO
            | DE
            | DEBUG
            | DECLARA
            | ECO
            | ENQUANTO
            | ENTAO
            | ESCOLHA
            | ESCREVA
            | ESCREVAL
            | FACA
            | FALSO
            | FIMALGORITMO
            | FIMENQUANTO
            | FIMESCOLHA
            | FIMFUNCAO
            | FIMPARA
            | FIMPROCEDIMENTO
            | FIMREPITA
            | FIMSE
            | FUNCAO
            | INICIO
            | INT
            | INTEIRO
            | INTERROMPA
            | LEIA
            | LIMPATELA
            | LOGICO
            | MAIUSC
            | MINUSC
            | NUMPCARAC
            | OUTROCASO
            | PARA
            | PASSO
            | PAUSA
            | POS
            | REAL
            | PROCEDIMENTO
            | REPITA
            | RETORNE
            | SE
            | SENAO
            | TIMER
            | VAR
            | VETOR
            | VERDADEIRO
            | VIRGULA
            | LITINT of int
            | LITSTRING of string
            | LITCHAR of string 
            | ID of string
            | EOF
}

let digito = ['0' - '9']
let inteiro = digito+

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
| ','        { VIRGULA }
| '('        { APAR }
| ')'        { FPAR }
| '['        { ACOL }
| ']'        { FCOL }
| "<-"       { ATRIB }
| ':'        { DECLARA }
| '+'        { SOMA }
| '-'        { SUB }
| '*'        { MULT }
| '/'        { DIVISAO }
| '^'        { POTENCIA }
| '%'        
| "MOD"      { MOD }
| '='        { IGUAL }
| '<'        { MENOR }
| '>'        { MAIOR }
| "<="       { MENORIGUAL }
| ">="       { MAIORIGUAL }
| "<>"       { DIFERENTE }
| "nao"      { NAO }
| "ou"       { OU }
| "e"        { E }
| "xou"      { XOU }
| inteiro as num { let numero = int_of_string num in 
                    LITINT numero  } 
| "aleatorio" { ALEATORIO }
| "algoritmo" { ALGORITMO }
| "arquivo"   { ARQUIVO }
| "asc"       { ASC }
| "ate"       { ATE }
| "carac"     { CARAC }
| "caracpnum" { CARACPNUM }
| "caractere" { CARACTER }
| "caso"      { CASO }
| "compr"     { COMPR }
| "copia"     { COPIA }
| "cronometro"  { CRONOMETRO }
| "de"        { DE }
| "debug"     { DEBUG }
| "eco"       { ECO }
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
| "fimprocedimento" { FIMPROCEDIMENTO }
| "fimrepita" { FIMREPITA }
| "fimse"     { FIMSE }
| "funcao"    { FUNCAO }
| "inicio"    { INICIO }
| "int"       { INT }
| "inteiro"   { INTEIRO }
| "interrompa"  { INTERROMPA }
| "leia"      { LEIA }
| "limpatela" { LIMPATELA }
| "logico"    { LOGICO }
| "maiusc"    { MAIUSC }
| "minusc"    { MINUSC }  
| "numpcarac" { NUMPCARAC }
| "outrocaso" { OUTROCASO }
| "para"      { PARA }
| "passo"     { PASSO }
| "pausa"     { PAUSA }
| "pos"       { POS }
| "real"      { REAL }
| "procedimento"  { PROCEDIMENTO }
| "repita"    { REPITA }
| "retorne"   { RETORNE } 
| "se"        { SE }
| "senao"     { SENAO }
| "timer"     { TIMER }
| "var"       { VAR }
| "vetor"     { VETOR }
| "verdadeiro"  { VERDADEIRO }
| identificador as id { ID id }
| '''        { let buffer = Buffer.create 1 in 
               let c = leia_string buffer lexbuf in
                LITCHAR c }
| '"'        { let buffer = Buffer.create 1 in 
               let str = leia_string buffer lexbuf in
                LITSTRING str }
| _ as c  { failwith (msg_erro lexbuf c) }
| eof        { EOF }
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




