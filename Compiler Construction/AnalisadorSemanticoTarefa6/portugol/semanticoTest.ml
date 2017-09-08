open Printf
open Lexing

open Ast
exception Erro_Sintatico of string

module S = MenhirLib.General (* Streams *)
module I = Parser.MenhirInterpreter

open Semantico

let message =
  fun s ->
    match s with
   | 0 ->
        "<Erro: in\195\173cio do programa incorreto>\n"
    | 1 ->
        "<Erro: ap\195\179s palavra reservada algoritmo>\n"
    | 4 ->
        "<Erro: ap\195\179s palavra reservada algoritmo>\n"
    | 5 ->
        "<Erro: declara\195\167\195\163o de vari\195\161veis incorreta>\n"
    | 6 ->
        "<Erro: declara\195\167\195\163o de vari\195\161veis incorreta>\n"
    | 7 ->
        "<Erro: declara\195\167\195\163o de vari\195\161veis incorreta>\n"
    | 11 ->
        "<Erro: declara\195\167\195\163o de vari\195\161veis incorreta>\n"
    | 16 ->
        "<Erro: declara\195\167\195\163o de vari\195\161veis incorreta>\n"
    | 9 ->
        "<Erro: declara\195\167\195\163o de vari\195\161veis incorreta>\n"
    | 183 ->
        "<Erro: ap\195\179s palavra reservada in\195\173cio>\n"
    | 37 ->
        "<Erro: comando se>\n"
    | 96 ->
        "<Erro: comando se>\n"
    | 97 ->
        "<Erro: comando se>\n"
    | 169 ->
        "<Erro: comando senao>\n"
    | 172 ->
        "<Erro: comando se>\n"
    | 168 ->
        "<Erro: comando se>\n"
    | 39 ->
        "<Erro: comando se>\n"
    | 49 ->
        "<Erro: comando se>\n"
    | 47 ->
        "<Erro: comando se>\n"
    | 86 ->
        "<Erro: express\195\163o incorreta>\n"
    | 98 ->
        "<Erro: ap\195\179s retorne>\n"
    | 55 ->
        "<Erro: express\195\163o incorreta>\n"
    | 56 ->
        "<Erro: express\195\163o incorreta>\n"
    | 101 ->
        "<Erro: express\195\163o incorreta>\n"
    | 57 ->
        "<Erro: express\195\163o incorreta>\n"
    | 58 ->
        "<Erro: express\195\163o incorreta>\n"
    | 67 ->
        "<Erro: express\195\163o incorreta>\n"
    | 68 ->
        "<Erro: express\195\163o incorreta>\n"
    | 59 ->
        "<Erro: express\195\163o incorreta>\n"
    | 60 ->
        "<Erro: express\195\163o incorreta>\n"
    | 83 ->
        "<Erro: express\195\163o incorreta>\n"
    | 84 ->
        "<Erro: express\195\163o incorreta>\n"
    | 61 ->
        "<Erro: express\195\163o incorreta>\n"
    | 62 ->
        "<Erro: express\195\163o incorreta>\n"
    | 63 ->
        "<Erro: express\195\163o incorreta>\n"
    | 64 ->
        "<Erro: express\195\163o incorreta>\n"
    | 69 ->
        "<Erro: express\195\163o incorreta>\n"
    | 70 ->
        "<Erro: express\195\163o incorreta>\n"
    | 71 ->
        "<Erro: express\195\163o incorreta>\n"
    | 72 ->
        "<Erro: express\195\163o incorreta>\n"
    | 73 ->
        "<Erro: express\195\163o incorreta>\n"
    | 74 ->
        "<Erro: express\195\163o incorreta>\n"
    | 75 ->
        "<Erro: express\195\163o incorreta>\n"
    | 76 ->
        "<Erro: express\195\163o incorreta>\n"
    | 77 ->
        "<Erro: express\195\163o incorreta>\n"
    | 78 ->
        "<Erro: express\195\163o incorreta>\n"
    | 79 ->
        "<Erro: express\195\163o incorreta>\n"
    | 80 ->
        "<Erro: express\195\163o incorreta>\n"
    | 65 ->
        "<Erro: express\195\163o incorreta>\n"
    | 66 ->
        "<Erro: express\195\163o incorreta>\n"
    | 81 ->
        "<Erro: express\195\163o incorreta>\n"
    | 82 ->
        "<Erro: express\195\163o incorreta>\n"
    | 142 ->
        "<Erro: ap\195\179s \"inicio\" bloco de comandos deve estar incorreto>\n"
    | 184 ->
        "<Erro: ap\195\179s \"inicio\" bloco de comandos deve estar incorreto>\n"
    | 102 ->
        "<Erro: comando para>\n"
    | 104 ->
        "<Erro: comando para>\n"
    | 105 ->
        "<Erro: comando para>\n"
    | 106 ->
        "<Erro: comando para>\n"
    | 107 ->
        "<Erro: comando para>\n"
    | 108 ->
        "<Erro: comando para>\n"
    | 109 ->
        "<Erro: comando para>\n"
    | 110 ->
        "<Erro: comando para>\n"
    | 115 ->
        "<Erro: comando para>\n"
    | 112 ->
        "<Erro: comando para>\n"
    | 116 ->
        "<Erro: comando para>\n"
    | 166 ->
        "<Erro: comando para>\n"
    | 117 ->
        "<Erro: comando leia>\n"
    | 118 ->
        "<Erro: comando leia>\n"
    | 119 ->
        "<Erro: comando leia>\n"
    | 120 ->
        "<Erro: comando leia>\n"
    | 149 ->
        "<Erro: ap\195\179s identificador>\n"
    | 43 ->
        "<Erro: ap\195\179s \"inicio\" bloco de comandos deve estar incorreto>\n"
    | 150 ->
        "<Erro: atribui\195\167\195\163o incorreta>\n"
    | 151 ->
        "<Erro: atribui\195\167\195\163o incorreta>\n"
    | 44 ->
        "<Erro: ap\195\179s \"inicio\" bloco de comandos deve estar incorreto>\n"
    | 93 ->
        "<Erro: express\195\163o incorreta>\n"
    | 92 ->
        "<Erro: express\195\163o incorreta>\n"
    | 50 ->
        "<Erro: ap\195\179s abrir colchetes>\n"
    | 54 ->
        "<Erro: ap\195\179s abrir colchetes>\n"
    | 186 ->
        "<Erro: ap\195\179s fimalgoritmo>\n"
    | 122 ->
        "<Erro: comando escreval>\n"
    | 123 ->
        "<Erro: comando escreval>\n"
    | 125 ->
        "<Erro: comando escreval>\n"
    | 127 ->
        "<Erro: comando escreva>\n"
    | 128 ->
        "<Erro: comando escreva>\n"
    | 130 ->
        "<Erro: comando escreva>\n"
    | 132 ->
        "<Erro: comando escolha>\n"
    | 133 ->
        "<Erro: comando escolha>\n"
    | 134 ->
        "<Erro: comando escolha>\n"
    | 135 ->
        "<Erro: comando escolha>\n"
    | 164 ->
        "<Erro: comando escolha>\n"
    | 158 ->
        "<Erro: comando escolha>\n"
    | 161 ->
        "<Erro: comando escolha>\n"
    | 162 ->
        "<Erro: comando escolha>\n"
    | 136 ->
        "<Erro: ap\195\179s palavra-chave enquanto>\n"
    | 137 ->
        "<Erro: ap\195\179s enquanto>\n"
    | 138 ->
        "<Erro: ap\195\179s comando faca>\n"
    | 155 ->
        "<Erro: Comando enquando sem fimenquanto >\n"
    | 22 ->
        "<Erro: ap\195\179s palavra-chave funcao>\n"
    | 23 ->
        "<Erro: ap\195\179s nome de uma fun\195\167\195\163o>\n"
    | 24 ->
        "<Erro: ap\195\179s abertura de paranteses dos par\195\162metros de uma fun\195\167\195\163o>\n"
    | 25 ->
        "<Erro: ap\195\179s identificador de par\195\162metro de uma fun\195\167\195\163o>\n"
    | 26 ->
        "<Erro: ap\195\179s \":\" dentro dos par\195\162metros de uma fun\195\167\195\163o>\n"
    | 179 ->
        "<Erro: ap\195\179s tipo de par\195\162metro de uma fun\195\167\195\163o>\n"
    | 180 ->
        "<Erro: entre par\195\162metros de uma fun\195\167\195\163o>\n"
    | 30 ->
        "<Erro: ap\195\179s fechamento do paranteses de uma fun\195\167\195\163o >\n"
    | 35 ->
        "<Erro: ap\195\179s declara\195\167\195\163o de vari\195\161veis de uma fun\195\167\195\163o>\n"
    | 36 ->
        "<Erro: ap\195\179s inicio de uma fun\195\167\195\163o>\n"
    | 174 ->
        "<Erro: ap\195\179s retorno de uma fun\195\167\195\163o>\n"
    | 188 ->
        "<Erro: ap\195\179s fimfuncao>\n"
    | 31 ->
        "<Erro: ap\195\179s \":\" da declaracao de uma fun\195\167\195\163o>\n"
    | 33 ->
        "<Erro: ap\195\179s tipo de retorno de uma fun\195\167\195\163o>\n"
    | _ ->
        raise Not_found

let posicao lexbuf =
    let pos = lexbuf.lex_curr_p in
    let lin = pos.pos_lnum
    and col = pos.pos_cnum - pos.pos_bol - 1 in
    sprintf "linha %d, coluna %d" lin col

(* [pilha checkpoint] extrai a pilha do autômato LR(1) contida em checkpoint *)

let pilha checkpoint =
  match checkpoint with
  | I.HandlingError amb -> I.stack amb
  | _ -> assert false (* Isso não pode acontecer *)

let estado checkpoint : int =
  match Lazy.force (pilha checkpoint) with
  | S.Nil -> (* O parser está no estado inicial *)
     0
  | S.Cons (I.Element (s, _, _, _), _) ->
     I.number s

let sucesso v = Some v

let falha lexbuf (checkpoint : (Sast.expressao Ast.prog) I.checkpoint) =
  let estado_atual = estado checkpoint in
  let msg = message estado_atual in
  raise (Erro_Sintatico (Printf.sprintf "%d - %s.\n"
                                      (Lexing.lexeme_start lexbuf) msg))

let loop lexbuf resultado =
  let fornecedor = I.lexer_lexbuf_to_supplier Lexer.token lexbuf in
  I.loop_handle sucesso (falha lexbuf) fornecedor resultado


let parse_com_erro lexbuf =
  try
    Some (loop lexbuf (Parser.Incremental.prog lexbuf.lex_curr_p))
  with
  | Lexer.Erro msg ->
     printf "Erro lexico na %s:\n\t%s\n" (posicao lexbuf) msg;
     None
  | Erro_Sintatico msg ->
     printf "Erro sintático na %s %s\n" (posicao lexbuf) msg;
     None

let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = parse_com_erro lexbuf in
  ast

let parse_arq nome =
  let ic = open_in nome in
  let lexbuf = Lexing.from_channel ic in
  let ast = parse_com_erro lexbuf in
  let _ = close_in ic in
  ast

let verifica_tipos nome =
  let ast = parse_arq nome in
  match ast with
    Some (Some ast) -> semantico ast
  | _ -> failwith "Nada a fazer!\n"

(* Para compilar:
     ocamlbuild -use-ocamlfind -use-menhir -menhir "menhir --table" -package menhirLib semanticoTest.byte
  
   Para usar, entre no ocaml 

     rlwrap ocaml

   e se desejar ver apenas a árvore sintática que sai do analisador sintático, digite

     parse_arq "exemplos/ex2.tip";;

   Depois, para ver a saída do analisador semântico já com a árvore anotada com 
   o tipos, digite:

   verifica_tipos "exemplos/ex2.tip";;

   Note que o analisador semântico está retornando também o ambiente global. Se 
   quiser separá-los, digite:

   let (arv, amb) = verifica_tipos "exemplos/ex2.tip";;

    

 *)
