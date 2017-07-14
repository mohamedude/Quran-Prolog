
praise(fajr).
praise(duhur).
praise(asr).
praise(maghrib).
praise(isha).
prophet(mohamed, allah).

/*********************************************************************
                            Al Fatiha
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_merciful(allah).
is_gracious(allah).

/* [All] praise is [due] to Allah, Lord of the worlds - */
praise_to(P, X) :- praise(P), god_001(X), lord(X, World).

/* The Entirely Merciful, the Especially Merciful, */
god_001(X) :- is_merciful(X), is_gracious(X).

/* Sovereign of the Day of Recompense. */
is_sovereign(X, day_of_recompense).

/* It is You we worship and You we ask for help. */
worship(Y, god_001(X)).
help(god_001(X), Y).

/* Guide us to the straight path - */
guide(god_001(X), Y, straight(path)).

/* The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray. */
guide(god_001(X), Y, straight(path)) :- bestowed(Y), anger(god_001(X), not(Y)), astray(not(Y)).

/*********************************************************************
                            Al Baqarah
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_merciful(allah).
is_gracious(allah).

/* This is the Book about which there is no doubt, a guidance for those conscious of Allah - */
not(doubt(quran)).
guide(quran, conscious(Y, allah)).

/* Who believe in the unseen, establish prayer, and spend out of what We have provided for them, */
conscious(Y, god(X)) :- belive(Y, unseen), prayer(Y), spend_out(provided(X, Y)).
prayer(Y) :- pray(Y, X).

/* And who believe in what has been revealed to you, [O Muhammad], and what was revealed before you, and of the Hereafter they are certain [in faith]. */
believe(Y) :- believe(Y, reveal(mohamed, prophet(X, allah))).
certain(Y, hereafter).

/* Those are upon [right] guidance from their Lord, and it is those who are the successful. */
guide(is_god(X), Y).
successful(Y).

/* Indeed, those who disbelieve - it is all the same for them whether you warn them or do not warn them - they will not believe. */
disbelieve(Y1) :- warm(Y1).

/* Allah has set a seal upon their hearts and upon their hearing, and over their vision is a veil. And for them is a great punishment. */
set_seal(allah, heart(Y1), ears(Y1), eyes(Y1)).
great(punish(Y1)).

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
god_112(X) :- not(is_begets(X)), not(is_born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X, Y)):- god(X), god(Y).

/* Y is seen as lambda here */

/*********************************************************************
                            Al Falaq
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_merciful(allah).
is_gracious(allah).

/* Say, "I seek refuge in the Lord of daybreak */
seek_refuge(mohamed, X) :- lord(X, daybreak).

/* From the evil of that which He created */
evil(Something).
create(X, Something).

/* And from the evil of darkness when it settles */
settles(darkness).

/* And from the evil of the blowers in knots */


/* And from the evil of an envier when he envies." */

/*********************************************************************
                            Al Nas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_merciful(allah).
is_gracious(allah).

/* Say, "I seek refuge in the Lord of mankind, */
seek_refuge(Y, X) :- is_lord(X, mankind).

/* The Sovereign of mankind. */
is_sovereign(X, mankind).

/* The God of mankind, */
is_god(X, mankind).

/* From the evil of the retreating whisperer - */

/* Who whispers [evil] into the breasts of mankind - */

/* From among the jinn and mankind." */
/*
should be fine to say la ilah a illa allah
*/

god(X) :- god_001(X), god_112(X).

