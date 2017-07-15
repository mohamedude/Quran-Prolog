
/*********************************************************************
                            Al Nas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_gracious(allah).
is_merciful(allah).

/* Say, "I seek refuge in the Lord of mankind, */
seek_refuge(Y, X) :- is_lord(X, mankind(Y)).

/* The Sovereign of mankind. */
is_sovereign(X, mankind(Y)) :- god(X), believer(Y).

/* The God of mankind, */
is_god(X, mankind(Y)):- god(X), believer(Y).

/* From the evil of the retreating whisperer - */

/* Who whispers [evil] into the breasts of mankind - */

/* From among the jinn and mankind." */
evil(create(X,Y)):- god(X), (jinn(Y); mankind(Y)).
