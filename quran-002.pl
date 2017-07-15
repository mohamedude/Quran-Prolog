
/*********************************************************************
                            Al Baqarah
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
is_gracious(allah).
is_merciful(allah).

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
guide(is_lord(X), Y).
successful(Y).

/* Indeed, those who disbelieve - it is all the same for them whether you warn them or do not warn them - they will not believe. */
not(believe(Y1)) :- warm(Y1).

/* Allah has set a seal upon their hearts and upon their hearing, and over their vision is a veil. And for them is a great punishment. */
set_seal(allah, heart(Y1), ears(Y1), eyes(Y1)).
great(punish(Y1)).

/* And of the people are some who say, "We believe in Allah and the Last Day," but they are not believers. */
mankind(Y, Y1) :- believer(Y), not(believer(Y1)).

/* They [think to] deceive Allah and those who believe, but they deceive not except themselves and perceive [it] not. */
deceive(Y1, allah, believer(Y)).

/* In their hearts is disease, so Allah has increased their disease; and for them is a painful punishment because they [habitually] used to lie. */

/* And when it is said to them, "Do not cause corruption on the earth," they say, "We are but reformers." */

/* Unquestionably, it is they who are the corrupters, but they perceive [it] not. */

/* And when it is said to them, "Believe as the people have believed," they say, "Should we believe as the foolish have believed?" Unquestionably, it is they who are the foolish, but they know [it] not. */

/* And when they meet those who believe, they say, "We believe"; but when they are alone with their evil ones, they say, "Indeed, we are with you; we were only mockers." */

/* [But] Allah mocks them and prolongs them in their transgression [while] they wander blindly. */

/* Those are the ones who have purchased error [in exchange] for guidance, so their transaction has brought no profit, nor were they guided. */

/* Their example is that of one who kindled a fire, but when it illuminated what was around him, Allah took away their light and left them in darkness [so] they could not see. */

/* Deaf, dumb and blind - so they will not return [to the right path]. */

/* Or [it is] like a rainstorm from the sky within which is darkness, thunder and lightning. They put their fingers in their ears against the thunderclaps in dread of death. But Allah is encompassing of the disbelievers. */

/* The lightning almost snatches away their sight. Every time it lights [the way] for them, they walk therein; but when darkness comes over them, they stand [still]. And if Allah had willed, He could have taken away their hearing and their sight. Indeed, Allah is over all things competent. */
