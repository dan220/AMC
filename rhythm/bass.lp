
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
timeMax(22).
time(1..TM) :- timeMax(TM).
barTime(1..6,1).
barTime(7..11,2).
barTime(12..17,3).
barTime(18..22,4).

% First note of bar on root of chord
chosenNote(1,1,1).
chosenNote(1,7,2).
chosenNote(1,12,3).
chosenNote(1,18,4).

% End line on root of chord
chosenNote(1,TM,BM) :- timeMax(TM), barTime(T,B), barMax(BM).