/*********************************************************************
                            Al Ikhlas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
merciful(allah).
gracious(allah).

/* Say, "He is Allah, [who is] One, */
one(allah).

/* Allah, the Eternal Refuge. */
absolute(allah).

/* He neither begets nor is born, */
god(X) :- not(begets(X)), not(born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X, Y)).
