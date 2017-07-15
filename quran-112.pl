
/*********************************************************************
                            Al Ikhlas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
gracious(allah).
merciful(allah).

/* Say, "He is Allah, [who is] One, */
one(allah).

/* Allah, the Eternal Refuge. */
eternal(allah).

/* He neither begets nor is born, */
not(begets(X)).
not(born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X1, X2)):- god(X1), god(X2).
