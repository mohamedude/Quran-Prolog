/*********************************************************************
                            Al Fatiha
**********************************************************************/

/* In the name of Allah, the Entirely Merciful, the Especially Merciful. */
merciful(allah).
gracious(allah).

/* [All] praise is [due] to Allah, Lord of the worlds - */
praise(Y, X) :- praise(Y), god(X), god(X, _World).

/* The Entirely Merciful, the Especially Merciful, */
god001(X) :- merciful(X), gracious(X).

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
