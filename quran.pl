/*********************************************************************
                            Al Fatiha
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
merciful(allah).
gracious(allah).

/* [All] praise is [due] to Allah, Lord of the worlds - */
praise(Y, X) :- praise(Y), god(X), god(X, _World).

/* The Entirely Merciful, the Especially Merciful, */
god(X) :- merciful(X), gracious(X).

/* Sovereign of the Day of Recompense. */
recompense(today).
master(allah, recompense(today)).

/* It is You we worship and You we ask for help. */
worship(mohamed,allah).
askforhelp(mohamed, allah).
guide(allah, mohamed).

/* Guide us to the straight path - */
guide(mohamed, allah).

/* The path of those upon whom You have bestowed favor, not of those who have evoked [Your] anger or of those who are astray. */
guide(allah, Someone, straight(path)) :- bestowed(Someone), anger(allah, not(Someone)), astray(not(Someone)).

/*********************************************************************
                            Al Baqarah
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
/* defined earlier */

/* This is the Book about which there is no doubt, a guidance for those conscious of Allah - */
/*********************************************************************
                            Al Ikhlas
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
/* defined earlier */

/* Say, "He is Allah, [who is] One, */
one(allah).

/* is_one(allah). */

/* Allah, the Eternal Refuge. */
absolute(allah).

/* He neither begets nor is born, */
god(X) :- not(begets(X)), not(born(X)).

/* Nor is there to Him any equivalent." */
not(equivalent(X, Y)).

/* Y is seen as lambda here */

