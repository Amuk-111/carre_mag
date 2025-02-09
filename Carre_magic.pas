program carre_magic;

uses crt;
type
map_t = array [1..19,1..19] of integer;

var
Lettre_d,Lettre_f: integer;
map: map_t;

procedure Start_up(var Lettre_d: integer; var Lettre_f: integer);
Begin
        writeln('Nombre de lignes et de colonnes:');
        repeat;
        readln(lettre_d);
        until odd (Lettre_d);
        writeln('Valeur de depart:');
        readln(Lettre_f);
End;

procedure map_p (map: map_t; Lettre_d,lettre_f:integer);
var
i,j: integer;
Begin
        for i:= 1 to lettre_d do
                begin
                        for j := 1 to lettre_f do
                                write(map[I,J]:4);
                                writeln;
                End
End;

function f(X,N: integer):integer;
Begin
        if x < 1 then
                F := F(X + N ,N)
        else if x > N then
                F := F(X - N ,N)
        else
                F := X
End;

procedure construc (lettre_d, lettre_f: integer ; var map: map_t);
var i,j,x: integer;
Begin
        for i := 1 to lettre_d do for j := 1 to lettre_d do map[i,j]:= 0;
                Begin
                        i := (lettre_d div 2) + 1;
                        j := i-1;
                End;
        for x := 0 to (lettre_d*lettre_d) - 1 do
                Begin
                        if map[f(i+1,lettre_d),f(j+1,lettre_d)] = 0 then
                                Begin
                                        i := f (i+1,lettre_d);
                                        j := f (j+1,lettre_d);
                                End
                        else
                                repeat i := f (i+2, lettre_d) until map[i,j] = 0;
                                map[i,j] := x + lettre_f
                        End;
                End;


BEGIN
clrscr;
joueur (lettre_d, lettre_f);
construc (lettre_d, lettre_f, map);
map_p (map, lettre_d, lettre_d);
writeln('la somme vaut:',(lettre_d*(lettre_d*lettre_d-1)div 2)+ lettre_d*lettre_f);
readln;
END.

