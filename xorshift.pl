% Segunda Practica ProLog

% Grupo:
%	Roberto Garcia Salgado
%	Sergio Gaspar Gomez
%	Marcos Gomez Diaz
%	Oleksandr Tarasyuk
%	Antoni Torregrosa Povedano


%%%%%% DEFINICIONES

% Define a binary digit type.

bind(0).

bind(1).

% Define an hex digit (nibble) type.

hexd(0).

hexd(1).

hexd(2).

hexd(3).

hexd(4).

hexd(5).

hexd(6).

hexd(7).

hexd(8).

hexd(9).

hexd(a).

hexd(b).

hexd(c).

hexd(d).

hexd(e).

hexd(f).

% Define a binary byte as a list of 8 binary digits.

binary_byte([bind(B7), bind(B6), bind(B5), bind(B4), bind(B3), bind(B2), bind(B1), bind(B0)]) :-

bind(B7),

bind(B6),

bind(B5),

bind(B4),

bind(B3),

bind(B2),

bind(B1),

bind(B0).

% Define an hex byte as a list of 2 hex nibbles.

hex_byte([hexd(H1), hexd(H0)]) :-

hexd(H1),

hexd(H0).

% Define a byte type either as a binary byte or as an hex byte.

byte(BB) :-

binary_byte(BB).

byte(HB) :-

hex_byte(HB).


%%%%%% PREDICADOS AUXILIARES

% Cierto si X esta en la lista (segundo argumento)
miembro(X,[X|_]).
miembro(X, [_|T]):-
	miembro(X,T).

% Concatena la lista en el primer argumento con la lista 
% en el segundo argumento y lo devuelve en el tercer argumento.
concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-
	concatenar(L1,L2,L3).


%%%%%% PREDICADOS

byte_list([L|T]):-
binary_byte(L),
byte_list_Bin(T).

byte_list([L|T]):-
hex_byte(L),
byte_list_Bin(T).

byte_list_Bin([L|T]):-
binary_byte(L),
byte_list_Bin(T).

byte_list_Hex([L|T]):-
hex_byte(L),
byte_list_Hex(T).


byte_conversion(HexByte, BinByte).

byte_list_conversion(HL, BL). % Usa el anterior

get_nth_bit_from_byte(N, B, BN).

byte_list_clsh(L, CLShL).

byte_list_crsh(L, CRShL).

byte_xor(B1, B2, B3).

% Opcionales

xorshift_encrypt(ClearData, EncKey, EncData).

xorshift_encrypt(ClearData, EncKey, EncData).