let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.token lexbuf in
  ast

let parse_arq arq =
  let ic = open_in arq in
  let lexbuf = Lexing.from_channel ic in
  let ast = Parser.prog Lexer.token lexbuf in
  let _ = close_in ic in
  ast