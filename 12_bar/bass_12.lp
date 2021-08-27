
% Pick a note at each time step, c chord for first 4 bars
1{chosenNote(N,T,B) : c7Chord(N), barC(B)}1 :- timeC(T), barTimeC(T,B).

% Pick a note at each time step, f chord for bars 5 and 6
1{chosenNote(N,T,B) : f7Chord(N), barF(B)}1 :- timeF(T), barTimeF(T,B).

% Pick a note at each time step, g chord for bar 9
1{chosenNote(N,T,B) : g7Chord(N), barG(B)}1 :- timeG(T), barTimeG(T,B).

%Only one note per time step
:- chosenNote(2,1,B); chosenNote(1,1,B).

% Only two repetitions of notes in the same bar
:- 3{chosenNote(N,T,B) : timeC(T)}, c7Chord(N), barC(B).

% Notes
cChord(1;5;8).
fChord(6;10;1).
gChord(8;12;3).

% Notes seventh
c7Chord(1;5;8;11).
f7Chord(6;10;1;4).
g7Chord(8;12;3;6).

% Bars
barMax(8).

% Time
timeMax(24).

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

% First note of bar on root of chord
chosenNote(1,1,1).
chosenNote(1,5,2).
chosenNote(1,9,3).
chosenNote(1,13,4).
chosenNote(6,17,5).
chosenNote(6,21,6).
chosenNote(1,25,7).
chosenNote(1,29,8).
chosenNote(8,33,9).
chosenNote(6,37,10).
chosenNote(1,41,11).
chosenNote(1,45,12).

% End line on root of chord
chosenNote(1,TM,BM) :- timeMax(TM), barTimeC(T,B), barMax(BM).