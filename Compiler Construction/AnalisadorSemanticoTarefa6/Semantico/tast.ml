open Ast

type expressao = ExpVar of (expressao variavel) * tipo
              | ExpInt of int * tipo
              | ExpString of string * tipo
              | ExpBool of bool * tipo
              | ExpOp of (oper * tipo) * (expressao * tipo) * (expressao * tipo)
              | ExpChamada of ident * (expressao expressoes) * tipo


