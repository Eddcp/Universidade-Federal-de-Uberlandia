open Lexing

type identificador = string
type 'a pos =  'a * Lexing.position (* tipo e posição no arquivo fonte *)

type 'expr prog = Prog of var_decl * ('expr func_decl_list) * ('expr statements)
and declaracao_algoritmo = DeclAlg
and var_decl = vars list
and vars = DecVar of (identificador pos) * tipo
and 'expr func_decl_list = ('expr func_decl) list
and 'expr func_decl = FuncDecl of ('expr decfun)
and fparams = fparam list
and fparam =  identificador * tipo
and functype = tipo
and 'expr funcbloc = ('expr stm_list) list
and 'expr statements = ('expr stm_list) list

and 'expr decfun = {
	fn_id: identificador pos;
	fn_params: (identificador pos * tipo) list;
	fn_tiporet: functype;
	fn_locais: var_decl;
	fn_corpo: 'expr funcbloc;

}

and tipo = TipoInteiro
		  |TipoReal
		  |TipoBooleano
		  |TipoVoid
		  |TipoCaractere

and 'expr stm_list  = Attrib of 'expr * 'expr
		  	   |Chamada of 'expr
		  	   |Retorne of 'expr option
		  	   |Se of 'expr * 'expr stm_list list * ('expr senao) option
		  	   |Escolha of identificador pos * 'expr case list * 'expr stm_list list
		  	   |Para of ('expr) * 'expr * 'expr * ('expr )  * 'expr statements 
		  	   |Leia of 'expr list
		  	   |Escreva of 'expr list
		  	   |Escreval of 'expr list
		  	   |Enquanto of 'expr * 'expr stm_list list


and 'expr senao = 'expr stm_list list

and 'expr case = CaseInt of int pos * 'expr stm_list list
		  |CaseChar of char pos * 'expr stm_list list

and 'expr lvalue = Var of identificador pos
			|VarElement of ('expr lvalue) * 'expr

and op = Soma
		|Subtracao
		|Multiplicacao
		|Divisao
		|Potencia
		|Modulo
		|Igual
		|Diferente
		|Menor
		|MenorIgual
		|Maior
		|MaiorIgual
		|ELogico
		|OuLogico
		|XouLogico

(*let arguments:
  match args with
    None -> []
    Some xs -> xs*)
and 'expr fargs = 'expr list

and logico_value = Verdadeiro of bool
				  |Falso of bool
			