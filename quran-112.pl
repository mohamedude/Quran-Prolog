
/*********************************************************************
                            Al Ikhlas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_gracious(allah).
is_merciful(allah).

/* Say, "He is Allah, [who is] One, */
is_one(allah).

/* Allah, the Eternal Refuge. */
is_eternal(allah).

/* He neither begets nor is born, */
not(begets(X)).
not(born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X, Y)):- god(X), god(Y).
