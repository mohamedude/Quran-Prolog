
/*********************************************************************
                            Al Fatiha
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_gracious(allah).
is_merciful(allah).

/* [All] praise is [due] to Allah, Lord of the worlds - */
praise_to(P, X) :- praise(P), god(X), lord(X, world).

/* The Entirely Merciful, the Especially Merciful, */
is_gracious(X) :- god(X).
is_merciful(X) :- god(X).

/* Sovereign of the Day of Recompense. */
is_sovereign(X, day_of_recompense) :- god(X).

/* It is You we worship and You we ask for help. */
worship(Y, X):- believer(Y), god(X).
help(X, Y):- beliver(Y), god(X).

/* Guide us to the straight path - */
guide(X, Y, straight(path)) :- beliver(Y), god(X).

/* The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray. */
straight(path, Y) :- bestowed(Y), anger(X, not(Y)), astray(not(Y)).
