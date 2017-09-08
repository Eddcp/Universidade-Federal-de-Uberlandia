type estado = int
type entrada = string
type simbolo = char
type posicao = int

type dfa = {
  transicao : estado -> simbolo -> estado;
  estado: estado;
  posicao: posicao
}

type token =
 | If
 | Then
 | Else
 | Print
 | Id of string
 | Int of string
 | APar
 | FPar
 | Op of string
 | Atribuicao
 | PVir
 | Branco
 | EOF

type estado_lexico = {
   pos_inicial: posicao; (* posição inicial na string *)
   pos_final: posicao; (* posicao na string ao encontrar um estado final recente *)
   ultimo_final: estado; (* último estado final encontrado *)
   dfa : dfa;
   rotulo : estado -> entrada -> token
}

let estado_morto:estado = -1

let estado_inicial:estado = 0

let eh_letra (c:simbolo) = ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')

let eh_digito (c:simbolo) = '0' <= c && c <= '9'

let eh_branco (c:simbolo) = c = ' ' || c = '\t' || c = '\n'

let eh_operador (c:simbolo) = c = '+' || c = '-' || c = '*' || c = '>' || c = '<' || c= '/'

let eh_estado_final e el =
  let rotulo = el.rotulo in
  try
      let _ = rotulo e "" in true
  with _ -> false

let obtem_token_e_estado (str:entrada) el =
  let inicio =  el.pos_inicial
  and fim = el.pos_final
  and estado_final = el.ultimo_final
  and rotulo = el.rotulo in
  let tamanho = fim - inicio + 1 in
  let lexema = String.sub str inicio tamanho in
  let token = rotulo estado_final lexema in
  let proximo_el = { el with pos_inicial = fim + 1;
                             pos_final = -1;
                             ultimo_final = -1;
                             dfa = { el.dfa with estado = estado_inicial;
                                                 posicao = fim + 1 }}
  in
   (token, proximo_el)


let rec analisador (str:entrada) tam el =
  let posicao_atual = el.dfa.posicao
  and estado_atual = el.dfa.estado in
  if posicao_atual >= tam
  then
    if el.ultimo_final >= 0
    then let token, proximo_el = obtem_token_e_estado str el in
      [token; EOF]
    else [EOF]
  else
    let simbolo = str.[posicao_atual]
    and transicao = el.dfa.transicao in
    let proximo_estado = transicao estado_atual simbolo in
    if proximo_estado = estado_morto
    then let token, proximo_el = obtem_token_e_estado str el in
      token :: analisador str tam proximo_el
    else
      let proximo_el =
        if eh_estado_final proximo_estado el
        then { el with pos_final = posicao_atual;
                       ultimo_final = proximo_estado;
                       dfa = { el.dfa with estado = proximo_estado;
                                           posicao = posicao_atual + 1 }}
        else { el with dfa = { el.dfa with estado = proximo_estado;
                                           posicao = posicao_atual + 1 }}
      in
      analisador str tam proximo_el

let lexico (str:entrada) =
  let trans (e:estado) (c:simbolo) =
    match (e,c) with
    | (0, 'i') -> 1 
    | (0, 't') -> 2
    | (0, 'p') -> 5
    | (0, 'e') -> 9
    | (0, ':') -> 12
    | (0, '(') -> 22
    | (0, ')') -> 23
    | (0, ';') -> 24
    | (0, _) when eh_letra c -> 21
    | (0, _) when eh_digito c -> 13
    | (0, _) when eh_branco c -> 14
    | (0, _) when eh_operador c -> 15
    | (0, _) -> failwith ("Erro lexico: caracter desconhecido " ^ Char.escaped c)
    | (1, 'f') -> 17
    | (1, _) when eh_letra c || eh_digito c -> 21
    | (2, 'h') -> 3
    | (2, _) when eh_letra c || eh_digito c -> 21
    | (3, 'e') -> 4
    | (3, _) when eh_letra c || eh_digito c -> 21
    | (4, 'n') -> 18
    | (4, _) when eh_letra c || eh_digito c -> 21
    | (5, 'r') -> 6
    | (5, _) when eh_letra c || eh_digito c -> 21
    | (6, 'i') -> 7
    | (6, _) when eh_letra c || eh_digito c -> 21
    | (7, 'n') -> 8
    | (7, _) when eh_letra c || eh_digito c -> 21
    | (8, 't') -> 19
    | (8, _) when eh_letra c || eh_digito c -> 21
    | (9, 'l') -> 10
    | (9, _) when eh_letra c || eh_digito c -> 21
    | (10, 's') -> 11
    | (10, _) when eh_letra c || eh_digito c -> 21
    | (11, 'e') -> 20 
    | (11, _) when eh_letra c || eh_digito c -> 21
    | (12, '=') -> 16
    | (13, _) when eh_digito c -> 13
    | (14, _) when eh_branco c -> 14
    | (17, _) when eh_letra c || eh_digito c -> 21
    | (18, _) when eh_letra c || eh_digito c -> 21
    | (19, _) when eh_letra c || eh_digito c -> 21
    | (20, _) when eh_letra c || eh_digito c -> 21
    | (21, _) when eh_letra c || eh_digito c -> 21
    | _ -> estado_morto
 and rotulo e str =
  match e with
  | 17 -> If
  | 1
  | 2
  | 3
  | 4
  | 5
  | 6
  | 7
  | 8
  | 9
  | 10
  | 11
  | 21 -> Id str
  | 13 -> Int str
  | 14 -> Branco
  | 15 -> Op str
  | 16 -> Atribuicao
  | 18 -> Then
  | 19 -> Print
  | 20 -> Else
  | 22 -> APar
  | 23 -> FPar
  | 24 -> PVir
  | _ -> failwith ("Erro lexico: sequencia desconhecida " ^ str)
in let dfa = { transicao = trans;
               estado = estado_inicial;
               posicao = 0 }
in let estado_lexico = {
  pos_inicial = 0;
  pos_final = -1;
  ultimo_final = -1;
  rotulo = rotulo;
  dfa = dfa
} in
  analisador str (String.length str) estado_lexico
