
% Pick notes for C chord
1{chosenNote(N,T,B) : cmixolydian(N), barC(B)}1 :- timeC(T), barTimeC(T,B).

% Pick notes for f chord
1{chosenNote(N,T,B) : fmixolydian(N), barF(B)}1 :- timeF(T), barTimeF(T,B).

% Pick notes for g chord
1{chosenNote(N,T,B) : gmixolydian(N), barG(B)}1 :- timeG(T), barTimeG(T,B).

% Notes mixolydian
cmixolydian(1;3;5;6;8;10;11).
fmixolydian(6;8;10;11;1;3;4).
gmixolydian(8;10;12;1;3;5;6).

% Notes major
cmajor(1;3;5;6;8;10;12).
fmajor(6;8;10;11;1;3;5).
gmajor(8;10;12;1;3;5;7).

% Bars
barMax(12).

% Time
timeMax(48).
time(1..TM) :- timeMax(TM).

% Bar C chord
barC(1..4;7..8;11..12).

% Time C chord
timeC(1..16;25..32;41..48).

% Bar Time C chord
barTimeC(1..4,1).
barTimeC(5..8,2).
barTimeC(9..12,3).
barTimeC(13..16,4).
barTimeC(25..28,7).
barTimeC(29..32,8).
barTimeC(41..44,11).
barTimeC(45..48,12).

% Bar F chord
barF(5..6;10).

% Time F chord
timeF(17..24;37..40).

% Bar Time F chord
barTimeF(17..20,5).
barTimeF(21..24,6).
barTimeF(37..40,10).

% Bar G Chord
barG(9).

% Time G Chord
timeG(33..36).

%Bar Time G Chord
barTimeG(33..36,9).

% End line on perfect cadence 
chosenNote(8,TM - 1,BM) :- timeMax(TM), barMax(BM).
chosenNote(1,TM,BM) :- timeMax(TM), barMax(BM).

% No repetitions
:- chosenNote(N,T+1,B) : chosenNote(N,T,B).

