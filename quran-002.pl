
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
