
/*********************************************************************
                            Al Ikhlas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_merciful(allah).
is_gracious(allah).

/* Say, "He is Allah, [who is] One, */
is_one(allah).

/* Allah, the Eternal Refuge. */
is_absolute(allah).

/* He neither begets nor is born, */
not(is_begets(X)).
not(is_born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X, Y)):- god(X), god(Y).

/* Y is seen as lambda here */
