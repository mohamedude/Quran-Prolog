praise(jump).
is_lord(X, World):- X = pharaon, World = world.
god(X):- X = ra.
know(egypt).

/*********************************************************************
                            Al Fatiha
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
gracious(allah).
merciful(allah).

/* [All] praise is [due] to Allah, Lord of the worlds - */
praise_to(P, X) :- praise(P), is_lord(X, World), know(World).

/* The Entirely Merciful, the Especially Merciful, */
% is_gracious(X) ?
% is_merciful(X) ?

/* Sovereign of the Day of Recompense. */
is_sovereign(X, day_of_recompense) :- god(X).

/* It is You we worship and You we ask for help. */
worship(Y, X):- believer(Y), god(X).
help(X, Y):- believer(Y), god(X).

/* Guide us to the straight path - */
guide(X, Y, straight(path)) :- believer(Y), god(X).

/* The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray. */
straight(path, Y) :- god(X), bestowed(Y), anger(X, not(Y)), astray(not(Y)).

/*********************************************************************

 You can ask :
 god(pharaon) -> true, it means pharaon is a god
 god(X) -> X = pharaon, it means who is the god ? it's pharaon

**********************************************************************/
