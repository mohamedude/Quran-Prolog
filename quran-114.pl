lord(X, Y) :- is_lord(X), Y = mankind.
mankind(Y) :- Y = mohamed.

/*********************************************************************
                            Al Nas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
gracious(allah).
merciful(allah).

/* Say, "I seek refuge in the Lord of mankind, */
seek_refuge(Y, X, mankind) :- believer(Y), lord(X, mankind).

/* The Sovereign of mankind. */
is_sovereign(X, mankind) :- sovereign(X).

/* The God of mankind, */
is_god(X, mankind) :- god(X).

/* From the evil of the retreating whisperer - */

/* Who whispers [evil] into the breasts of mankind - */

/* From among the jinn and mankind." */
evil(create(X,Y)):- god(X), (jinn(Y); mankind(Y)).
