is_lord(pharaon).
god(X) :- X = allah.
mankind(Y) :- Y = mohamed.

/*********************************************************************
                            Al Nas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_gracious(allah).
is_merciful(allah).

/* Say, "I seek refuge in the Lord of mankind, */
seek_refuge(Y, X, mankind) :- believer(Y), is_lord(X).

/* The Sovereign of mankind. */
sovereign(X, mankind) :- god(X).

/* The God of mankind, */
god(X, mankind):- god(X).

/* From the evil of the retreating whisperer - */

/* Who whispers [evil] into the breasts of mankind - */

/* From among the jinn and mankind." */
evil(create(X,Y)):- god(X), (jinn(Y); mankind(Y)).
