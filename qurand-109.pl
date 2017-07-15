god(X) :- X = allah.

/*********************************************************************
                            Al Kafirun
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
gracious(allah).
merciful(allah).

/* Say, "O disbelievers, */
not(believer(Y)) :- Y= quraysh.

/* I do not worship what you worship. */
worship(Y1, X1) :- worship(Y2, X2), not(worship(Y1, X2)), god(X1), god(X2).

/* Nor are you worshippers of what I worship. */
% worship(Y2, X2) :- worship(Y1, X1), not(worship(Y1, X2)), god(X1), god(X2).

/* Nor will I be a worshipper of what you worship. */

/* Nor will you be worshippers of what I worship. */

/* For you is your religion, and for me is my religion." */
% religion(Y1) :- worship(Y1, X1), god(X1), praise(P).
religion(Y) :- worship(Y, X), god(X).
