% One note per time step
1{chosenNote(N,T,B) : cmajor(N), bar(B)}1 :- time(T), barTime(T,B).

% Notes
cmixolydian(1;3;5;6;8;10;11).
cmajor(1;3;5;6;8;10;12).

% Bars
bar(1..BM) :- barMax(BM).
barMax(4).

% Time
timeMax(16).
time(1..TM) :- timeMax(TM).
barTime(1..4,1).
barTime(5..8,2).
barTime(9..12,3).
barTime(13..16,4).

% End line on perfect cadence 
chosenNote(8,TM - 1,BM) :- timeMax(TM), barMax(BM).
chosenNote(1,TM,BM) :- timeMax(TM), barMax(BM).

% No repetitions
:- chosenNote(N,T+1,B) : chosenNote(N,T,B).

