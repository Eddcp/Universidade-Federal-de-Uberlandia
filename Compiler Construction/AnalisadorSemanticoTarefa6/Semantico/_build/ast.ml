(* The type of the abstract syntax tree (AST). *)
open Lexing

type ident = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr programa = Programa of declaracoes * ('expr funcoes) * ('expr comandos)
and declaracoes = declaracao list
and 'expr funcoes = ('expr funcao) list
and 'expr comandos = ('expr comando) list

and declaracao = DecVar of (ident pos) * tipo

and 'expr funcao = DecFun of ('expr decfn)

and 'expr decfn = {
  fn_nome:    ident pos;
  fn_tiporet: tipo;
  fn_formais: (ident pos * tipo) list;
  fn_locais:  declaracoes;
  fn_corpo:   'expr comandos
}

and tipo = TipoInt
         | TipoString
         | TipoBool
         | TipoVoid
         | TipoArranjo of tipo * (int pos) * (int pos)
         | TipoRegistro of campos

and campos = campo list
and campo = ident pos * tipo

and 'expr comando =
  | CmdAtrib of 'expr * 'expr
  | CmdSe of 'expr * ('expr comandos) * ('expr comandos option)
  | CmdEntrada of ('expr expressoes)
  | CmdSaida of ('expr expressoes)
  | CmdRetorno of 'expr option
  | CmdChamada of 'expr

and 'expr variaveis = ('expr variavel) list
and 'expr variavel =
  | VarSimples of ident pos
  | VarCampo of ('expr variavel) * (ident pos)
  | VarElemento of ('expr variavel) * 'expr
and 'expr expressoes = 'expr list

and oper =
  | Mais
  | Menos
  | Mult
  | Div
  | Menor
  | Igual
  | Difer
  | Maior
  | E
  | Ou
  | Concat

