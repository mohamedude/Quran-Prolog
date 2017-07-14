
/*********************************************************************
                            Al Ikhlas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */

/* Say, "He is Allah, [who is] One, */
one(allah).

/* is_one(allah). */

/* Allah, the Eternal Refuge. */
absolute(allah).

/* He neither begets nor is born, */
god112(X) :- not(begets(X)), not(born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X, Y)):- god(X), god(Y).

/* Y is seen as lambda here */
