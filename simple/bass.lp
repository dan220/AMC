% Pick a note at each time step
1{chosenNote(N,T,B) : c7Chord(N), bar(B)}1 :- time(T), barTime(T,B).

% Only two repetitions of notes in the same bar
:- 3{chosenNote(N,T,B) : time(T)}, c7Chord(N), bar(B).

% Notes
c7Chord(1;5;8).

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

% First note of bar on root of chord
chosenNote(1,1,1).
chosenNote(1,5,2).
chosenNote(1,9,3).
chosenNote(1,13,4).

% End line on root of chord
chosenNote(1,TM,BM) :- timeMax(TM), barTime(T,B), barMax(BM).