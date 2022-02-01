; ww | w pertence a [a,b]*
0 _ * * 6
0 * * * 0o

0o a X r 0o
0o b Y r 0o
0o _ _ l 4
0o * * * reject 

; tendo a primeira palavra separada por letras maiúsculas, a cada elemento que lê novamente,
; troca o marcador
1 X x r 1o
1 Y y r 1i
1 a * * 5
1 b * * 5
1 * * * reject

; insere o elemento lido no final da fita
1o * * r 1o
1o _ a l 4
1i * * r 1i
1i _ b l 4

; anda com o cabeçote para a direita até achar espaço em branco ou marcador
4 x * r 1
4 y * r 1
4 _ _ r 1
4 * * l 4

5 * * l 5
5 _ _ r 5o
5o x a r 5o
5o y b r 5o
5o * * * 6

6 * * r 6
6 _ _ * accept

accept * : r accept2
accept2 * ) * halt-accept

reject _ : r reject2
reject * _ l reject
reject2 * ( * halt-reject