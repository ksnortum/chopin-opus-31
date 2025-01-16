%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

% % ly:expect-warning only works to suppress once.  This function allows
% % you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

% makeSpanner =
% #(define-music-function (mrkup) (markup?)
%   #{
%     \override TextSpanner.bound-details.left.text = #mrkup
%     \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
%     \override TextSpanner.bound-details.left-broken.text = ##f
%   #})

pocoAPocoCrescMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "poco a poco cresc."
pocoAPocoCresc =
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
               'span-text pocoAPocoCrescMarkup)

% ffz = #(make-dynamic-script "ffz")

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

glyphOne = \tweak X-offset -0.25 ^\markup { " " \musicglyph "one" }

trillNatural = \markup \teeny \concat { " " \natural }

insideSlur = \tweak avoid-slur #'inside \etc

%
% Markup
%

sottoVoce = \markup \large \italic "sotto voce"
sottoVoceWO = \markup \large \italic \whiteout \pad-markup #0.25 "sotto voce"
delecatissimo = \markup \large \italic \whiteout \pad-markup #0.25 delecatissimo
slentando = \markup \large \italic \whiteout \pad-markup #0.25 slentando
legatoSempre = \markup \large \italic "legato sempre"
legato = \markup \large \italic legato
espress = \markup \large \italic espress.
% ten = \markup \large \italic ten.
dolce = \markup \large \italic dolce
% riten = \markup \large \italic riten.
leggiero = \markup \large \italic leggiero
calando = \markup \large \italic calando
smorzando = \markup \large \italic smorzando
marcatoMarkup = \markup \large \italic marcato
piuMosso = \markup \large \italic "più mosso"
strettoCresc = 
  \markup \large \italic \whiteout \pad-markup #0.25 "stretto cresc."
sostenuto = \markup \large \italic sostenuto
agitato = \markup \large \italic agitato
pocoRiten = \markup \large \italic "poco riten."
conAnima = \markup \large \italic "con anima"
crescEdAnimato = 
  \markup \large \italic \whiteout \pad-markup #0.25 "cresc. ed animato"
sempreConFuoco = 
  \markup \large \italic \whiteout \pad-markup #0.25 "sempre con fuoco"
% aTempo = \markup \large \italic "a tempo"
% piuPresto = \markup \large \italic "più presto"
% piuF = \markup { \large più \dynamic f }
sempreF = \markup { \large \italic sempre \dynamic f }
% secondVolta = \markup \bold "2nd volta"
% ffEnergico = \markup { \dynamic ff \normal-text \large \italic energico }
% pEspress = \markup { \dynamic p \normal-text \large \italic espress. }
% ritenEMoltoCresc = \markup \large \italic "riten. e molto cresc."
% firstVoltaSecondVolta = \markup {
%   \whiteout { \pad-markup #0.25 { \large { \normal-text { "1st volta:" }
%   "soto voce," \normal-text{ "2nd volta:" } forte } } }
% }
% parenPiuP = \markup { \concat { \large \italic "(più " \dynamic p ")" } }
% 
% edAccelSpanner = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.25 
%   "ed accel."
% smorzSpanner = \makeSpanner \markup \large \italic smorz.
% dimERallSpanner = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.25 
%   "dim. e rall."
fzMarkup = \markup \dynamic fz

%
% Positions and shapes
%

moveNaturalA = \tweak extra-offset #'(0 . -3) \etc

% rotateHairpinA = \once \override Hairpin.rotation = #'(7 -1 0)
