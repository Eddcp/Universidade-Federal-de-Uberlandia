
module Basics = struct
  
  exception Error
  
  type token = 
    | XOU
    | VIRGULA
    | VERDADEIRO
    | VAR
    | SUB
    | SOMA
    | SENAO
    | SE
    | RETORNE
    | REAL
    | PTV
    | POTENCIA
    | PASSO
    | PARA
    | OUTROCASO
    | OU
    | NAO
    | MULT
    | MOD
    | MENORIGUAL
    | MENOR
    | MAIORIGUAL
    | MAIOR
    | LOGICO
    | LITSTRING of (string)
    | LITCHAR of (string)
    | LEIA
    | INTEIRO
    | INT of (int)
    | INICIO
    | IGUAL
    | ID of (string)
    | FUNCAO
    | FPAR
    | FLOAT of (float)
    | FIMSE
    | FIMPARA
    | FIMFUNCAO
    | FIMESCOLHA
    | FIMENQUANTO
    | FIMALGORITMO
    | FCOL
    | FALSO
    | FACA
    | ESCREVAL
    | ESCREVA
    | ESCOLHA
    | EOF
    | ENTAO
    | ENQUANTO
    | E
    | DIVISAO
    | DIFERENTE
    | DECLARA
    | DE
    | CASO
    | CARACTER
    | ATRIB
    | ATE
    | APAR
    | ALGORITMO
    | ACOL
  
end

include Basics

let _eRR =
  Basics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState188
  | MenhirState183
  | MenhirState180
  | MenhirState169
  | MenhirState164
  | MenhirState161
  | MenhirState158
  | MenhirState150
  | MenhirState142
  | MenhirState138
  | MenhirState136
  | MenhirState135
  | MenhirState133
  | MenhirState128
  | MenhirState123
  | MenhirState116
  | MenhirState107
  | MenhirState105
  | MenhirState102
  | MenhirState98
  | MenhirState97
  | MenhirState93
  | MenhirState83
  | MenhirState81
  | MenhirState79
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState55
  | MenhirState50
  | MenhirState47
  | MenhirState44
  | MenhirState39
  | MenhirState37
  | MenhirState36
  | MenhirState33
  | MenhirState31
  | MenhirState26
  | MenhirState24
  | MenhirState21
  | MenhirState11
  | MenhirState9
  | MenhirState7
  | MenhirState5
  | MenhirState4
  
  open Ast

let rec _menhir_goto_option_passo_ : _menhir_env -> 'ttv_tail -> (unit option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FACA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ENQUANTO ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | ESCOLHA ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | ESCREVA ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | ESCREVAL ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | LEIA ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | PARA ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | RETORNE ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | SE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | FIMPARA ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_passo : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (unit)) = _v in
    let _v : (unit option) =     ( Some x ) in
    _menhir_goto_option_passo_ _menhir_env _menhir_stack _v

and _menhir_goto_separated_nonempty_list_VIRGULA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (exprs : (Ast.expr list))) = _menhir_stack in
        let _v : (Ast.fargs) =                                                    (  List.map (fun expr -> Fargs(expr)) exprs) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.fargs)) = _v in
        let _v : (Ast.fargs option) =     ( Some x ) in
        _menhir_goto_option_fargs_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.expr))), _, (xs : (Ast.expr list))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_VIRGULA_expr_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PTV ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (stm : (Ast.expr list))) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (Ast.stm_list) =                                                                         (StmEscreval stm ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (stm : (Ast.stm_list)) = _v in
                let _v : (Ast.stm_list) =                        (stm) in
                _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | PTV ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _, (stm : (Ast.expr list))) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (Ast.stm_list) =                                                                        (StmEscreva stm) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (stm : (Ast.stm_list)) = _v in
                let _v : (Ast.stm_list) =                       (stm) in
                _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_nonempty_list_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.case list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | OUTROCASO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENQUANTO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | ESCOLHA ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | ESCREVA ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | ESCREVAL ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
            | LEIA ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | PARA ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | RETORNE ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | SE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | FIMESCOLHA ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.case))), _, (xs : (Ast.case list))) = _menhir_stack in
        let _v : (Ast.case list) =     ( x :: xs ) in
        _menhir_goto_nonempty_list_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.lvalue) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | FCOL ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (lv : (Ast.lvalue))), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (Ast.lvalue) =                                  (VarElement(lv,e)) in
            _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | ENTAO | FACA | FCOL | FPAR | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                      ( XouLogico )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | OU | PASSO | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                       ( Subtracao )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | DIVISAO | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MOD | MULT | OU | PASSO | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                           ( Potencia )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | DIVISAO | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MOD | MULT | OU | PASSO | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                       ( Multiplicacao )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | DIVISAO | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MOD | MULT | OU | PASSO | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                      ( Modulo )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | DIVISAO | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MOD | MULT | OU | PASSO | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                          ( Divisao )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | OU | PASSO | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                       ( Soma )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                             ( MenorIgual )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                        ( Menor )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                             ( MaiorIgual )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                        ( Maior )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                        ( Igual )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | E | ENTAO | FACA | FCOL | FPAR | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                    ( ELogico )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | E | ENTAO | FACA | FCOL | FPAR | IGUAL | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                            ( Diferente )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | ATE | ENTAO | FACA | FCOL | FPAR | OU | PASSO | PTV | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _10 = () in
            let _v : (Ast.expr) = let o =
              let _1 = _10 in
                     ( OuLogico )
            in
                                      ( ExpOp(e1,o,e2) ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | FPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) =                       ( e ) in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState128 | MenhirState123 | MenhirState93 | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FALSO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | FLOAT _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | INT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LITCHAR _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LITSTRING _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | NAO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | VERDADEIRO ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_VIRGULA_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | ENTAO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENQUANTO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ESCOLHA ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ESCREVA ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ESCREVAL ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | LEIA ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | PARA ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | RETORNE ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | SE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FIMSE | SENAO ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | PTV ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr option) =     ( Some x ) in
            _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ATE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FALSO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FLOAT _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | INT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | LITCHAR _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | LITSTRING _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | NAO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | VERDADEIRO ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | PASSO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SOMA ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | INT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_3 : (int)) = _v in
                    let _2 = () in
                    let _1 = () in
                    let _v : (unit) =                      ( ) in
                    _menhir_goto_passo _menhir_env _menhir_stack _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | SUB ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | INT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_3 : (int)) = _v in
                    let _2 = () in
                    let _1 = () in
                    let _v : (unit) =                     ( ) in
                    _menhir_goto_passo _menhir_env _menhir_stack _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | FACA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (unit option) =     ( None ) in
            _menhir_goto_option_passo_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState136 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | FACA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENQUANTO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ESCOLHA ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ESCREVA ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ESCREVAL ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | LEIA ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | PARA ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | RETORNE ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | SE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | FIMENQUANTO ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState150 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFERENTE ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
        | DIVISAO ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack)
        | E ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack)
        | IGUAL ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | MAIOR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | MAIORIGUAL ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack)
        | MENOR ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack)
        | MENORIGUAL ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | MOD ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack)
        | OU ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack)
        | POTENCIA ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | PTV ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (v : (Ast.lvalue))), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (Ast.stm_list) =                                 ( StmAttrib(v,e) ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (stm : (Ast.stm_list)) = _v in
            let _v : (Ast.stm_list) =                    (stm) in
            _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
        | SOMA ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | XOU ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRGULA_fparam_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.fparam list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (fparam : (Ast.fparam list)) = _v in
        let _v : (Ast.fparams) =                                                     (FParams(fparam)) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.fparams)) = _v in
        let _v : (Ast.fparams option) =     ( Some x ) in
        _menhir_goto_option_fparams_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.fparam list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.fparam))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.fparam list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_VIRGULA_fparam_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_stm_senao_ : _menhir_env -> 'ttv_tail -> (Ast.senao option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FIMSE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (e : (Ast.expr))), _, (stms : (Ast.stm_list list))), (senao : (Ast.senao option))) = _menhir_stack in
        let _6 = () in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.stm_list) =                                                             ( StmSe(e,stms,senao)) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (stm : (Ast.stm_list)) = _v in
        let _v : (Ast.stm_list) =                  (stm) in
        _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_case : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.case) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CASO ->
        _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState164
    | OUTROCASO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.case))) = _menhir_stack in
        let _v : (Ast.case list) =     ( [ x ] ) in
        _menhir_goto_nonempty_list_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164

and _menhir_goto_lvalue : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.lvalue) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState150 | MenhirState136 | MenhirState128 | MenhirState123 | MenhirState107 | MenhirState105 | MenhirState98 | MenhirState37 | MenhirState39 | MenhirState93 | MenhirState44 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState50 | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ACOL ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | ATE | DIFERENTE | DIVISAO | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MOD | MULT | OU | PASSO | POTENCIA | PTV | SOMA | SUB | VIRGULA | XOU ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (lv : (Ast.lvalue))) = _menhir_stack in
            let _v : (Ast.termo) =               (TermoVar lv) in
            _menhir_goto_termo _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ACOL ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | DE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FALSO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FLOAT _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | INT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | LITCHAR _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | LITSTRING _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | NAO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | VERDADEIRO ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState183 | MenhirState36 | MenhirState169 | MenhirState97 | MenhirState116 | MenhirState161 | MenhirState158 | MenhirState135 | MenhirState138 | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ACOL ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | ATRIB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APAR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | FALSO ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | FLOAT _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | INT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | LITCHAR _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | LITSTRING _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | NAO ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | VERDADEIRO ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_termo : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.termo) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState150 | MenhirState136 | MenhirState128 | MenhirState123 | MenhirState107 | MenhirState105 | MenhirState98 | MenhirState37 | MenhirState93 | MenhirState44 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState50 | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (t : (Ast.termo)) = _v in
        let _v : (Ast.expr) =              (ExpTerm t) in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (t : (Ast.termo)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.expr) =                  ( ExpTermNeg t) in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_literal : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.literal) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (l : (Ast.literal)) = _v in
    let _v : (Ast.termo) =               (TermoLiteral l) in
    _menhir_goto_termo _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_logico_value : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.logico_value) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (l : (Ast.logico_value)) = _v in
    let _v : (Ast.literal) =                    ( Bool l) in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_func_type_ : _menhir_env -> 'ttv_tail -> (Ast.functype option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INICIO ->
        _menhir_reduce59 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_goto_tp_primitivo : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.tipo) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | PTV ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (ids : (Ast.identificador list))), _, (t : (Ast.tipo))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (Ast.var_decl) =                                                                             (  List.map (fun id -> VarDecl (id,t)) ids ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
            | FUNCAO | INICIO ->
                _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState9
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (id : (string))), _, (t : (Ast.tipo))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.fparam) =                                    (FParam(id,t)) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VIRGULA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180)
        | FPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.fparam))) = _menhir_stack in
            let _v : (Ast.fparam list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_VIRGULA_fparam_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (t : (Ast.tipo))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.functype) =                              ( FuncTipo(t) ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.functype)) = _v in
        let _v : (Ast.functype option) =     ( Some x ) in
        _menhir_goto_option_func_type_ _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_stm_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.stm_list list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.stm_list))), _, (xs : (Ast.stm_list list))) = _menhir_stack in
        let _v : (Ast.stm_list list) =     ( x :: xs ) in
        _menhir_goto_list_stm_list_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIMENQUANTO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (_2 : (Ast.expr))), _, (stm : (Ast.stm_list list))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.stm_list) =                                                    ( StmEnquanto stm ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (stm : (Ast.stm_list)) = _v in
            let _v : (Ast.stm_list) =                        (stm) in
            _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), (_2 : (string))), _, (stms : (Ast.stm_list list))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.case) =                                   (StmCase(stms)) in
        _menhir_goto_case _menhir_env _menhir_stack _menhir_s _v
    | MenhirState158 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), (_2 : (int))), _, (stms : (Ast.stm_list list))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.case) =                               (StmCase(stms) ) in
        _menhir_goto_case _menhir_env _menhir_stack _menhir_s _v
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIMESCOLHA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (id : (string))), _, (c : (Ast.case list))), _, (stms : (Ast.stm_list list))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _1 = () in
            let _v : (Ast.stm_list) =                                                                 (StmEscolha(id,c,stms) ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (stm : (Ast.stm_list)) = _v in
            let _v : (Ast.stm_list) =                       (stm) in
            _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIMPARA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (_2 : (Ast.lvalue))), _, (_4 : (Ast.expr))), _, (_6 : (Ast.expr))), (_7 : (unit option))), _, (stm : (Ast.stm_list list))) = _menhir_stack in
            let _10 = () in
            let _8 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.stm_list) =                                                                      (StmPara stm ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (stm : (Ast.stm_list)) = _v in
            let _v : (Ast.stm_list) =                    (stm) in
            _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SENAO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENQUANTO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | ESCOLHA ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | ESCREVA ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | ESCREVAL ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
            | LEIA ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | PARA ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | RETORNE ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | SE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | FIMSE ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169)
        | FIMSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ast.senao option) =     ( None ) in
            _menhir_goto_option_stm_senao_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _, (stm : (Ast.stm_list list))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.senao) =                           ( StmSeNao(stm) ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.senao)) = _v in
        let _v : (Ast.senao option) =     ( Some x ) in
        _menhir_goto_option_stm_senao_ _menhir_env _menhir_stack _v
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIMFUNCAO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (stm : (Ast.stm_list list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.funcbloc) =                                      (FuncBloc(stm)) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (fb : (Ast.funcbloc)) = _v in
            let (((((_menhir_stack, _menhir_s), (_2 : (string))), _, (fp : (Ast.fparams option))), (fy : (Ast.functype option))), _, (fv : (Ast.fvardecl))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.func_decl) =                                                                               ( FuncDecl (fp,fy,fv,fb) ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FUNCAO ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | INICIO ->
                _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIMALGORITMO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (stms : (Ast.stm_list list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.statements) =                                          ( StmBlock(stms)) in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, (da : (Ast.declaracao_algoritmo))), _, (vdb : (Ast.var_decl_block option))), _, (fd : (Ast.func_decl_list))), (stmb : (Ast.statements))) = _menhir_stack in
                let _5 = () in
                let _v : (Ast.prog) =                                                                                     ( Prog (da,vdb,fd,stmb) ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (Ast.prog)) = _v in
                Obj.magic _1
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PTV ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (expr : (Ast.expr option))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.stm_list) =                              ( StmRetorne(expr)) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (stm : (Ast.stm_list)) = _v in
        let _v : (Ast.stm_list) =                   (stm) in
        _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_stm_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.stm_list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ENQUANTO ->
        _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | ESCOLHA ->
        _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | ESCREVA ->
        _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | ESCREVAL ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | LEIA ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | PARA ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | RETORNE ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | SE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | CASO | FIMALGORITMO | FIMENQUANTO | FIMESCOLHA | FIMFUNCAO | FIMPARA | FIMSE | OUTROCASO | SENAO ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142

and _menhir_reduce43 : _menhir_env -> 'ttv_tail * _menhir_state * (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : (string))) = _menhir_stack in
    let _v : (Ast.lvalue) =             ( Var(id) ) in
    _menhir_goto_lvalue _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_option_fargs_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.fargs option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (id : (string))), _, (args : (Ast.fargs option))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : (Ast.stm_list) =                                   ( Fcallargs(id,args) ) in
        (match _menhir_s with
        | MenhirState150 | MenhirState136 | MenhirState128 | MenhirState123 | MenhirState107 | MenhirState105 | MenhirState98 | MenhirState37 | MenhirState39 | MenhirState93 | MenhirState44 | MenhirState47 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState57 | MenhirState55 | MenhirState50 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (f : (Ast.stm_list)) = _v in
            let _v : (Ast.termo) =             ( TermoFcall f) in
            _menhir_goto_termo _menhir_env _menhir_stack _menhir_s _v
        | MenhirState183 | MenhirState36 | MenhirState97 | MenhirState169 | MenhirState116 | MenhirState161 | MenhirState158 | MenhirState135 | MenhirState138 | MenhirState142 ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (stm : (Ast.stm_list)) = _v in
            let _v : (Ast.stm_list) =                 (stm) in
            _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            _menhir_fail ())
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run134 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ENQUANTO ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | ESCOLHA ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | ESCREVA ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | ESCREVAL ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | LEIA ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | PARA ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | RETORNE ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | SE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | CASO | OUTROCASO ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158)
    | LITCHAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ENQUANTO ->
            _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ESCOLHA ->
            _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ESCREVA ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ESCREVAL ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | LEIA ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | PARA ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | RETORNE ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | SE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | CASO | OUTROCASO ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.logico_value) =                ( Verdadeiro ) in
    _menhir_goto_logico_value _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (string)) = _v in
    let _v : (Ast.literal) =               ( LitString) in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (string)) = _v in
    let _v : (Ast.literal) =             ( LitChar) in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (int) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (int)) = _v in
    let _v : (Ast.literal) =           ( Int i) in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (float) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (f : (float)) = _v in
    let _v : (Ast.literal) =             ( Float f) in
    _menhir_goto_literal _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.logico_value) =            ( Falso ) in
    _menhir_goto_logico_value _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_goto_list_func_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.func_decl_list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INICIO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENQUANTO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ESCOLHA ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ESCREVA ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ESCREVAL ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | LEIA ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | PARA ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | RETORNE ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | SE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | FIMALGORITMO ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.func_decl))), _, (xs : (Ast.func_decl_list))) = _menhir_stack in
        let _v : (Ast.func_decl_list) =     ( x :: xs ) in
        _menhir_goto_list_func_decl_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_fparams_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.fparams option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DECLARA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CARACTER ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | INTEIRO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LOGICO ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | REAL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
        | INICIO | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ast.functype option) =     ( None ) in
            _menhir_goto_option_func_type_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DECLARA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CARACTER ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INTEIRO ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LOGICO ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | REAL ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.tipo) =            ( Real ) in
    _menhir_goto_tp_primitivo _menhir_env _menhir_stack _menhir_s _v

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.tipo) =              ( Booleano ) in
    _menhir_goto_tp_primitivo _menhir_env _menhir_stack _menhir_s _v

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.tipo) =               ( Inteiro ) in
    _menhir_goto_tp_primitivo _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.tipo) =                ( Caractere ) in
    _menhir_goto_tp_primitivo _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.stm_list list) =     ( [] ) in
    _menhir_goto_list_stm_list_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | PTV ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState98 in
        let _v : (Ast.expr option) =     ( None ) in
        _menhir_goto_option_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState102 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FPAR ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | PTV ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s), (id : (string))) = _menhir_stack in
                    let _5 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : (Ast.stm_list) =                                (StmLeia id) in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (stm : (Ast.stm_list)) = _v in
                    let _v : (Ast.stm_list) =                    (stm) in
                    _menhir_goto_stm_list _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FALSO ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FLOAT _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | INT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LITCHAR _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LITSTRING _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | NAO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | VERDADEIRO ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState44 in
            let _v : (Ast.fargs option) =     ( None ) in
            _menhir_goto_option_fargs_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | ACOL | ATE | ATRIB | DIFERENTE | DIVISAO | E | ENTAO | FACA | FCOL | FPAR | IGUAL | MAIOR | MAIORIGUAL | MENOR | MENORIGUAL | MOD | MULT | OU | PASSO | POTENCIA | PTV | SOMA | SUB | VIRGULA | XOU ->
        _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run122 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | FALSO ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | FLOAT _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | INT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LITCHAR _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LITSTRING _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | NAO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | VERDADEIRO ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run127 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | FALSO ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | FLOAT _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | INT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | LITCHAR _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | LITSTRING _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | NAO ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | VERDADEIRO ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run132 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CASO ->
            _menhir_run134 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run136 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APAR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | FALSO ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | FLOAT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | INT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | LITCHAR _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | LITSTRING _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
    | NAO ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | VERDADEIRO ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState136
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.func_decl_list) =     ( [] ) in
    _menhir_goto_list_func_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | FPAR ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState24 in
                let _v : (Ast.fparams option) =     ( None ) in
                _menhir_goto_option_fparams_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_list_var_decl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.var_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.var_decl list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Ast.var_decl))) = _menhir_stack in
        let _v : (Ast.var_decl list) =     ( x :: xs ) in
        _menhir_goto_list_var_decl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (v : (Ast.var_decl list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.var_decl_block) =                       ( VarDeclBlock (v) ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.var_decl_block)) = _v in
        let _v : (Ast.var_decl_block option) =     ( Some x ) in
        _menhir_goto_option_var_decl_block_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VIRGULA_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.identificador list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string))), _, (xs : (Ast.identificador list))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.identificador list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_VIRGULA_ID_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState5 | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DECLARA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CARACTER ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | INTEIRO ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | LOGICO ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | REAL ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_var_decl_block_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.var_decl_block option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FUNCAO ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INICIO ->
            _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (Ast.var_decl_block option))) = _menhir_stack in
        let _v : (Ast.fvardecl) =                         ( FVarDecl(v) ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INICIO ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ENQUANTO ->
                _menhir_run136 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | ESCOLHA ->
                _menhir_run132 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | ESCREVA ->
                _menhir_run127 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | ESCREVAL ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | ID _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
            | LEIA ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | PARA ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | RETORNE ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | SE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | FIMFUNCAO ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState36
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.var_decl list) =     ( [] ) in
    _menhir_goto_list_var_decl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VIRGULA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
    | DECLARA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (string))) = _menhir_stack in
        let _v : (Ast.identificador list) =     ( [ x ] ) in
        _menhir_goto_separated_nonempty_list_VIRGULA_ID_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState158 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState150 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState136 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState128 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.var_decl_block option) =     ( None ) in
    _menhir_goto_option_var_decl_block_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | FUNCAO | INICIO ->
        _menhir_reduce34 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALGORITMO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LITSTRING _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_2 : (string)) = _v in
            let _1 = () in
            let _v : (Ast.declaracao_algoritmo) =                           ( DeclAlg ) in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VAR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
            | FUNCAO | INICIO ->
                _menhir_reduce59 _menhir_env (Obj.magic _menhir_stack) MenhirState4
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)
  

