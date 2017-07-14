
/*********************************************************************
                            Al Fatiha
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_merciful(allah).
is_gracious(allah).

/* [All] praise is [due] to Allah, Lord of the worlds - */
praise_to(P, X) :- praise(P), god(X), lord(X, World).

/* The Entirely Merciful, the Especially Merciful, */
is_merciful(X).
is_gracious(X).

/* Sovereign of the Day of Recompense. */
is_sovereign(X, day_of_recompense).

/* It is You we worship and You we ask for help. */
worship(Y, X).
help(X, Y).

/* Guide us to the straight path - */
guide(X, Y, straight(path)).

/* The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray. */
straight(path) :- bestowed(Y), anger(X, not(Y)), astray(not(Y)).
