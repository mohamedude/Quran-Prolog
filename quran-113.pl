
/*********************************************************************
                            Al Falaq
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
gracious(allah).
merciful(allah).

/* Say, "I seek refuge in the Lord of daybreak */
seek_refuge(Y, X) :- is_lord(X, daybreak).

/* From the evil of that which He created */
evil(create(X, Y)).

/* And from the evil of darkness when it settles */
evil(settles(darkness)).

/* And from the evil of the blowers in knots */
evil(blowers).

/* And from the evil of an envier when he envies." */
evil(envier(Y)) :- envie(envier(Y)).
