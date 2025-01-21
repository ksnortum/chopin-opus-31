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

pocoAPocoCrescMarkup = 
  \markup \large \italic \whiteout \pad-markup #0.25 "poco a poco cresc."
pocoAPocoCresc =
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
               'span-text pocoAPocoCrescMarkup)

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

glyphOneA = \tweak X-offset -0.25 ^\markup { "  " \musicglyph "one" }
glyphOneB = \tweak X-offset 0 ^\markup { "  " \musicglyph "one" }
glyphOneC = \tweak X-offset -0.5 ^\markup { "  " \musicglyph "one" }
glyphOneD = \tweak X-offset -0.25 ^\markup { " " \musicglyph "one" }
glyphOneE = \tweak X-offset -0.25 ^\markup { "   " \musicglyph "one" }

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
dolce = \markup \large \italic dolce
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
sempreConFuoco = \markup \large \italic "sempre con fuoco"
sempreF = \markup { \large \italic sempre \dynamic f }
fzMarkup = \markup \dynamic fz

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 2) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 2) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 2) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . -1) (0 . 0) (0 . 1) (0 . -2)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 1) (0 . 0) (3 . -1)) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 1) (0 . 1))
                        ((0 . 3) (0 . 3) (0 . 1) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 0.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 0))
                      ) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -5)) \etc
slurShapeO = \shape #'(
                        ((0 . 1) (0.5 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . -3) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . -1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (4 . -3))
                      ) \etc
slurShapeS = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 5) (0 . 4))
                        ((0 . 1) (0 . 2) (0 . 0) (0 . 0))
                      ) \etc
slurShapeT = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -5)) \etc
slurShapeU = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 0.5))
                        ((0 . 0) (0 . 1) (0 . 2) (0 . 2))
                        ((0.5 . 3) (1 . 2.5) (0 . 1) (0 . 0.5))
                      ) \etc
slurShapeV = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))
                      ) \etc
slurShapeW = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                      ) \etc
slurShapeX = \shape #'((0 . 1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeY = \shape #'((0 . 1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeZ = \shape #'((0 . 1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeAA = \shape #'((0 . 0) (0 . 0) (6 . -1) (6 . -1)) \etc
slurShapeAB = \shape #'(
                         ((0 . 0) (0 . 0) (0 . 0) (0 . -0.5))
                         ((0 . 0) (0 . 0) (2 . 2) (4 . -4))
                       ) \etc

tieShapeA = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
tieShapeB = \shape #'(
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((0 . -1) (0 . -1) (0 . -1) (0 . -1))
                     ) \etc
tieShapeC = \shape #'((0 . 0) (0 . -0.8) (0 . -0.8) (0 . 0)) \etc

moveNaturalA = \tweak extra-offset #'(0 . -3) \etc
