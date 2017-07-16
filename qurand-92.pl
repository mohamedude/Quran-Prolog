:- discontiguous(ease_toward/3).

god(X) :- X = allah.
praise(turn_around).

/*********************************************************************
                            Al Layl
**********************************************************************/

/* By the night when it covers */


/* And [by] the day when it appears */


/* And [by] He who created the male and female, */

create(X, Y) :- (male(Y); female(Y)), god(X).

/* Indeed, your efforts are diverse. */


/* As for he who gives and fears Allah */

gives(Y) :- gives(Y,Z), poor(Z).
fears(Y, X) :- stress(Y), praise(P), praise_to(P,X), god(X).

/* And believes in the best [reward], */

believe(Y) :- best(Y).

/* We will ease him toward ease. */

ease_toward(X, Y, ease) :- believer(Y), gives(Y), fears(Y, X), god(X).

/* But as for he who withholds and considers himself free of need */

/* And denies the best [reward], */

denies(Y) :- not(best(Y)).

/* We will ease him toward difficulty. */

ease_toward(X, Y, difficulty) :- denies(Y), withholds(Y), free_of_need(Y, X), god(X).

/* And what will his wealth avail him when he falls?. */

avail(Y, wealth) :- falls(Y).

/* Indeed, [incumbent] upon Us is guidance. */

is_guide(X, Y).

/* And indeed, to Us belongs the Hereafter and the first [life]. */

belongs(X, hearafter).
belongs(X, the_first_life).

/* So I have warned you of a Fire which is blazing. */

warned(Y, fire).

/* None will [enter to] burn therein except the most wretched one. */

burn_in(most_wretched(Y), fire).

/* Who had denied and turned away. */

most_wretched(Y) :- denie(Y), turned_away(Y).

/* But the righteous one will avoid it - */

avoid_it(righteous(Y), fire).

% from quran-002.pl conscious(Y, god(X))

/* [He] who gives [from] his wealth to purify himself */

reighteous(Y) :- gives(Y).

/* And not [giving] for anyone who has [done him] a favor to be rewarded */

/* But only seeking the countenance of his Lord, Most High. */

/* And he is going to be satisfied. */
