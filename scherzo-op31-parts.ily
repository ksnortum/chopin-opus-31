%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "scherzo-op31-other.ily"

#(ly:expect-warning-times 4 "cyclic dependency")

global = {
  \time 3/4
  \key bf \minor
  % \override Staff.Hairpin.to-barline = ##f
%   \override Staff.Hairpin.after-line-breaking = ##f
%   \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \omit MultiMeasureRestNumber
  bf2( \tuplet 3/2 { a8 bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  bf,4-. r r |
  \ottava 1 <bf'' gf' bf>2.~( |
  q2. |
  <ef, c' ef>4. <f c' f>8 <gf c gf'>4 |
  
  \barNumberCheck 9
  <f df' f>-!) \ottava 0 r \tuplet 3/2 { a,,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  af,!4-. r r |
  \ottava 1 <af'' f' af>2.~( |
  q2. |
  <ef c' ef>4. <f c' f>8 <gf c gf'>4 |
  
  \barNumberCheck 17
  <f df' f>-!) \ottava 0 r r |
  <a, f'>2-> r4 |
  <a, f'>2-> r4 |
  R2. * 3 |
  \compressMMRests { R2. * 2 | }
  
  \barNumberCheck 25
  r4 r \tuplet 3/2 { a8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  bf,4-. r r |
  \ottava 1 <bf'' gf' bf>2.~( |
  q4. <ef, c' ef>8 q4 |
  q4. <f c' f>8 <gf c gf'>4 |
  
  \barNumberCheck 33
  <f df' f>4-!) \ottava 0 r \tuplet 3/2 { a,,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  \clef bass c,4-. r r |
  \clef treble \ottava 1 <c''' af' c>2.~( |
  q2. |
  <g e' g>4. <af e' af>8 <bf e bf'>4 |
  
  \barNumberCheck 41
  <af f' af>4-.) \ottava 0 r r |
  <af, c f af>2-> r4 |
  <af, c f af>2-> r4 |
  R2. * 3 |
  \compressMMRests { R2. * 2 | }
  
  \barNumberCheck 49
  \ottava 1 f''''2.~( |
  f4 ef8 df af f |
  \ottava 0 ef8 df af f ef df |
  af4) r r |
  c8( df ef f gf af |
  bff8-.) r r4 r |
  bff8( af g gf f ff |
  ef8-.) r r4 r |
  
  \barNumberCheck 57
  \ottava 1 f''2.~( |
  f4 ef8 df af f |
  \ottava 0 ef8 df af f ef df |
  af4) r r |
  c8( df ef f gf af |
  bff8-.) r r4 r |
  bff8( af g gf f ff |
  ef8-.) r r4 r | \break % TODO remove
  
  \barNumberCheck 65
  \voiceOne f2.~(^\conAnima | 
  f4 ef4. df8 |
  df2. |
  gf2.~ |
  gf2 f4 |
  f4 ef df |
  bf'2. |
  bf2 bf4) |
  
  \barNumberCheck 73
  \grace { g,16( df' } bf'2)( ef,4~ |
  ef4 f4.-\insideSlur \prall -\insideSlur -\moveNaturalA ^\trillNatural ef8) |
  ef2.( |
  af2.~ |
  af4 g f |
  g4 f4. ef8 |
  c'2. |
  c2 c4) |
  
  \barNumberCheck 81
  \oneVoice c2.~( |
  c4 bf4. af8 |
  af2. |
  df2. |
  df2 c4 |
  c4 bf4. af8 |
  f'2. |
  f2 f4) |
  
  \barNumberCheck 89
  f2.( |
  ef4 df bf |
  c2. |
  bf4 af f |
  bf4 af gf |
  gf-\insideSlur \prall f4. e8 |
  e2. |
  f2) af4~( |
  
  \barNumberCheck 97
  \voiceOne af2. |
  \oneVoice <c, c'>4 <bf bf'>4. <af af'>8 |
  q2.~ |
  <df af' df>2. |
  <df df'>2 <c c'>4 |
  <c af' c>4. <bf bf'>8 <af af'>4 |
  <f' af f'>2. |
  q2 q4) |
  
  \barNumberCheck 105
  q2.( |
  <ef gf ef'>4 <df gf df'>4. <bf gf' bf>8 |
  <c af' c>2. |
  <bf gf' bf>4 <af f' af> <bf f' bf> |
  <cf f cf'>2 <bf f' bf>4 |
  <cf f cf'>2.~ |
  q2 <bf f' bf>4 |
  <cf f cf'>4 <bf f' bf> <cf f cf'>) |
  
  \barNumberCheck 113
  <cf gf' cf>2->( <bf gf' bf>4) |
  \ottava 1 <bf' gf' bf>2.~(-> |
  q4. \ottava 0 <c, gf' c>8 q4 |
  q4. <f af f'>8 <ef gf ef'>4 |
  <df f df'>4-.) r r |
  f,8->( df' af' \ottava 1 f df' bf' |
  <c, af'>4-.) \ottava 0 r r |
  gf,8->( c af' \ottava 1 gf c af' |
  
  \barNumberCheck 121
  <df, f>4-.) \ottava 0 r r |
  f,,8->( df' af' \ottava 1 f df' bf' |
  <c, af'>4-.) \ottava 0 r r |
  gf,8->( c af' \ottava 1 gf c af' |
  <df, f>4-.) \ottava 0 r r |
  f,,8( df' af' \ottava 1 f df' af' \ottava 0 |
  df,8 f, af df, f, af |
  df,8 \staffDown f, af df, f, df') |
  
  \barNumberCheck 129
  \staffUp R2. |
  \ottava 1 <df''' df'>2.-> \ottava 0 |
  \compressMMRests { R2. * 2 } |
  r4 r \tuplet 3/2 { a,,8(^\sottoVoce bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 137
  bf,4-. r r |
  \ottava 1 <bf'' gf' bf>2.~( |
  q2. |
  <ef, c' ef>4. <f c' f>8 <gf c gf'>4 |
  <f df' f>-!) \ottava 0 r \tuplet 3/2 { a,,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 145
  af,!4-. r r |
  \ottava 1 <af'' f' af>2.~ |
  q2. |
  \tuplet 5/3 { <ef c' ef>4( <e c' e> <f c' f> <af c af'> <gf c gf'> } |
  <f df' f>4-!) \ottava 0 r r |
  <a, f'>2-> r4 |
  <a, f'>2-> r4 |
  R2. |
  
  \barNumberCheck 153
  R2. * 2 |
  \compressMMRests { R2. * 2 } |
  r4 r \tuplet 3/2 { a8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 161
  bf,4-. r r |
  \ottava 1 <bf'' gf' bf>2.~( |
  q4. <ef, c' ef>8 q4 |
  q4. <f c' f>8 <gf c gf'>4 |
  <f df' f>4-!) \ottava 0 r \tuplet 3/2 { a,,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 169
  \clef bass c,4-. r r |
  \clef treble \ottava 1 <c''' af' c>2.~ |
  q2. |
  \tuplet 4/3 { <df g df'>4( <c g' c> <f, c' f> <g c g'> } |
  <af c af'>4-.) \ottava 0 r r |
  <af, c f af>2-> r4 |
  <af, c f af>2-> r4 |
  R2. |
  
  \barNumberCheck 177
  R2. | \break % TODO remove
  \clef bass f,2.\( |
  \grace { d16[( ef!]) } \slashedGrace { f8 } \afterGrace 7/8
    { ef2.~\startTrillSpan % |
  ef2. } { d16(\stopTrillSpan ef)\) } |
  \clef treble \ottava 1 f'''''2.~( |
  f4 ef8 df af f |
  \ottava 0 ef df af f ef df |
  af4) r r |
  
  \barNumberCheck 185
  c8( df ef f gf af |
  bff8-.) r r4 r |
  bff8( af g gf f ff |
  ef8-.) r r4 r |
  \ottava 1 f''2.~( |
  f4 ef8 df af f |
  \ottava 0 ef8 df af f ef df |
  af4) r r |
  
  \barNumberCheck 193
  c8( df ef f gf af |
  bff8-.) r r4 r |
  bff8( af g gf f ff |
  ef8-.) r r4 r | \break % TODO remove
  \voiceOne f2.~(^\conAnima | 
  f4 ef4. df8 |
  df2. |
  gf2.~ |
  
  \barNumberCheck 201
  gf2 f4 |
  f4 ef df |
  bf'2. |
  bf2 bf4) |
  \grace { g,16( df' } bf'2)( ef,4~ |
  ef4 f4.-\insideSlur \prall -\insideSlur -\moveNaturalA ^\trillNatural ef8) |
  ef2.( |
  af2.~ |
  
  \barNumberCheck 209
  af4 g f |
  g4 f4. ef8 |
  c'2. |
  c2 c4) |
  \oneVoice c2.~( |
  c4 bf4. af8 |
  af2. |
  df2.) |
  
  \barNumberCheck 217
  df2( c4 |
  c4 bf4. af8 |
  f'2. |
  f2 f4) |
  f2.( |
  ef4 df bf |
  c2. |
  bf4 af f |
  
  \barNumberCheck 225
  bf4 af gf |
  gf-\insideSlur \prall f4. e8 |
  e2. |
  f2) af4~(-> |
  \voiceOne af2. |
  \oneVoice <c, c'>4 <bf bf'>4. <af af'>8 |
  q2.~ |
  <df af' df>2.) |
  
  \barNumberCheck 233
  <df df'>4.( <c c'>8 <c gf' af c>4 |
  q4. <bf gf' bf>8 <af gf' af>4 |
  <f' af f'>2. |
  q2 q4) |
  q2.( |
  <ef gf ef'>4 <df gf df'>4. <bf gf' bf>8 |
  <c af' c>2. |
  <bf gf' bf>4 <af f' af> <bf f' bf> |
  
  \barNumberCheck 241
  <cf f cf'>2 <bf f' bf>4 |
  <cf f cf'>2.~ |
  q2 <bf f' bf>4 |
  <cf f cf'>4 <bf f' bf> <cf f cf'>) |
  <cf gf' cf>2( <bf gf' bf>4) |
  \ottava 1 <bf' gf' bf>2.->~( |
  q4. \ottava 0 <c,! gf' c!>8 q4 |
  q4. <f af f'>8 <ef gf ef'>4 |
  
  \barNumberCheck 249
  % like 117
  <df f df'>4) r r |
  f,8->( df' af' \ottava 1 f df' bf' |
  <c, af'>4-.) \ottava 0 r r |
  gf,8->( c af' \ottava 1 gf c af' |
  <df, f>4-.) \ottava 0 r r |
  f,,8->( df' af' \ottava 1 f df' bf' |
  <c, af'>4-.) \ottava 0 r r |
  gf,8->( c af' \ottava 1 gf c af' |
  
  \barNumberCheck 257
  <df, f>4-.) \ottava 0 r r |
  f,,8( df' af' \ottava 1 f df' af' \ottava 0 |
  df,8 f, af df, f, af |
  df,8 \staffDown f, af df, f, df') |
  \staffUp R2. |
  \ottava 1 <df''' df'>2.-> \ottava 0 |
  \compressMMRests { R2. * 2 } | \break % TODO remove
  
  \barNumberCheck 265
  \bar "||"
  \key a \major
  \clef bass
  <e,,, cs' e>2.~(^\sostenuto |
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  q2. |
  <e cs' e>2.~ |
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  q2. |
  
  \barNumberCheck 273
  <gs e'>2._~ |
  <gs b>2 a4 |
  cs2.~ |
  cs2.) |
  \clef treble \oneVoice cs'2.( |
  \grace { b16 cs } b4. a!8 b4 |
  cs4. d8 cs4 |
  \grace { b16 cs } b4. a!8 b4 | \break % TODO remove
  
  \barNumberCheck 281
  cs8) \magnifyMusic #2/3 {
    cs,(_\delecatissimo cs' gs cs gs |
    gs'8 cs, gs' cs, cs' gs |
    \ottava 1 cs8 gs gs' cs, gs' cs, |
    cs'8) 
  } \ottava 0 r r4 r |
  \clef bass <e,,,, cs' e>2.~( 
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  q2. |
  
  \barNumberCheck 289
  <e cs' e>2.~ |
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  q2.-\shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -5)) _~ |
  \hideNoteHead fs2. |
  <gs e'>2._~ |
  <gs b>2 a4 |
  cs2.~ |
  
  \barNumberCheck 297
  cs2.) |
  \oneVoice R2. | \break %TODO remove
  \clef treble cs'2.~( |
  cs2.~ | 
  cs8 ds fs e cs a) |
  \appoggiatura { gs16 gs } gs'2.( |
  \appoggiatura { fs16 gs } fs4. e!8 fs4 |
  gs4. a8 gs4 |
  
  \barNumberCheck 305
  \appoggiatura { fs16 gs } fs4. e!8 fs4 |
  gs2.)~ |
  gs4~ gs8 \magnifyMusic #2/3 {
    gs,( gs' ds |
    gs8 ds ds' gs, ds' gs, |
    gs'8) r 
  } \voiceOne gs,4( fs |
  e2.~ |
  e4 e ds |
  cs4) r r |
  
  \barNumberCheck 313
  r4 gs'( fs |
  e2.~ |
  e4 e ds |
  \oneVoice cs) s2 |
  \voiceOne r4 cs'( b! |
  a2.~ |
  a4 a gs |
  fs4) r r |
  
  \barNumberCheck 321
  r4 cs'( b! |
  a2.~ |
  a4 a gs |
  fs2.~ |
  fs4 gs a |
  gs4) r r |
  r4 fs( e |
  ds2.~ |
  
  \barNumberCheck 329
  ds4 ds cs |
  bs4) r r |
  r4 fs'( e |
  ds4) r r |
  r4 e( fs) |
  \oneVoice gs,8(^\leggiero b e gs fs e |
  gs b e gs fs e |
  b gs fs e b gs |
  
  \barNumberCheck 337
  fs e b gs' fs e) |
  cs8( e fs a cs e |
  fs8 a cs e fs a |
  gs8 fs ds a gs fs |
  ds8 b ds cs b a) |
  gs8( b e gs fs e |
  gs b e gs fs e |
  b gs fs e b gs |
  
  \barNumberCheck 345
  fs e b gs' fs e) |
  cs8( e fs a cs e |
  fs8 a cs e fs a |
  gs8 fs ds a gs fs |
  ds8 b ds cs b a) |
  gs8( b e gs fs e |
  gs b e gs fs e |
  c8 a fs e c a |
  
  \barNumberCheck 353
  fs8 e c a fs e |
  gs8 b e gs fs e |
  gs8 b e gs fs e |
  c8 a fs e c a |
  \clef bass fs8 e c a fs e) |
  r4  b'8( e a gs |
  \clef treble b8 e a gs b e |
  a8 gs b e a gs |
  
  \barNumberCheck 361
  e8 b a gs e b |
  a8 gs e b a gs |
  \clef bass e8 b a gs e b) |
  R2. * 2 | \break % TODO remove
  <e' cs' e>2.~(^\sostenuto |
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  
  \barNumberCheck 369
  q2. |
  <e cs' e>2.~ |
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  q2. |
  \acciaccatura { cs'8 } cs2 b4 |
  <gs e'>2._~ |
  <gs b>2 a4 |
  
  \barNumberCheck 377  
  cs2.~ |
  cs2.) |
  % like 277
  \clef treble \oneVoice cs'2.( |
  \grace { b16 cs } b4. a!8 b4 |
  cs4. d8 cs4 |
  \grace { b16 cs } b4. a!8 b4 |
  cs8) \magnifyMusic #2/3 {
    cs,(_\delecatissimo cs' gs cs gs |
    gs'8 cs, gs' cs, cs' gs |
    
    \barNumberCheck 385
    \ottava 1 cs8 gs gs' cs, gs' cs, |
    cs'8) 
  } \ottava 0 r r4 r |
  \clef bass <e,,,, cs' e>2.~( |
  <fs cs' fs>2.~ |
  <fs fs'>2.~ |
  q2. |
  <e cs' e>2.~-> |
  <fs cs' fs>2.~ |
  
  \barNumberCheck 393
  <fs fs'>2.~ |
  q2. |
  \clef treble \acciaccatura { cs'8 } \voiceFour cs2~ cs8 d |
  cs2. |
  <gs b>2 a4 |
  cs2. |
  cs2.) |
  \oneVoice R2. |
  
  \barNumberCheck 401
  % like 299
  \clef treble cs'2.~( |
  cs2.~ |
  cs8 ds fs e cs a) |
  \appoggiatura { gs16 gs } gs'2.( |
  \appoggiatura { fs16 gs } fs4. e!8 fs4 |
  gs4. a8 gs4 |
  \appoggiatura { fs16 gs } fs4. e!8 fs4 |
  gs2.)~ |
  
  \barNumberCheck 409
  gs4~ gs8 \magnifyMusic #2/3 {
    gs,( gs' ds |
    gs8 ds ds' gs, ds' gs, |
    gs'8) r 
  } \voiceOne gs,4( fs |
  % like 310
  e2.~ |
  e4 e ds |
  cs4) r r |
  r4 gs'( fs |
  e2.~ |
  
  \barNumberCheck 417
  e4 e ds |
  \oneVoice cs) s2 |
  % like 317
  \voiceOne r4 cs'( b! |
  a2.~ |
  a4 a gs |
  fs4) r r |
  r4 cs'( b! |
  a2.~ |
  
  \barNumberCheck 425
  a4 a gs |
  fs2.~ |
  fs4 gs a |
  gs4) r r |
  % like 327
  r4 fs( e |
  ds2.~ |
  ds4 ds cs |
  bs4) r r |
  
  \barNumberCheck 433
  r4 fs'( e |
  ds4) r r |
  r4 e( fs) |
  % like 334
  \oneVoice gs,8(^\leggiero b e gs fs e |
  gs b e gs fs e |
  b gs fs e b gs |
  fs e b gs' fs e) |
  cs8( e fs a cs e |
  
  \barNumberCheck 441
  fs8 a cs e fs a |
  gs8 fs ds a gs fs |
  ds8 b ds cs b a) |
  % like 342
  gs8( b e gs fs e |
  gs b e gs fs e |
  b gs fs e b gs |
  fs e b gs' fs e) |
  cs8( e fs a cs e |
  
  \barNumberCheck 449
  fs8 a cs e fs a |
  gs8 fs ds a gs fs |
  ds8 b ds cs b a) |
  % like 350
  gs8( b e gs fs e |
  gs b e gs fs e |
  c8 a fs e c a |
  fs8 e c a fs e |
  gs8 b e gs fs e |
  
  \barNumberCheck 457
  gs8 b e gs fs e |
  c8 a fs e c a |
  \clef bass fs8 e c a fs e) |
  % like 358
  r4  b'8( e a gs |
  \clef treble b8 e a gs b e |
  a8 gs b e a gs |
  e8 b a gs e b |
  a8 gs e b a gs |
  
  \barNumberCheck 465
  \clef bass e8 b a gs e b) |
  R2. * 2 |
  r4 b'8( f' a gs |
  \clef treble b8 f' a gs b f' |
  a8 gs b f' a gs |
  f8 b, a gs f b, |
  a8 gs f b, a gs |
  
  \barNumberCheck 473
  \clef bass f8 b, a gs g b,) |
  R2. * 2 |
  \clef treble r4 as'''8( gs b es |
  as8 gs b es as gs |
  as,8 e' gs fss e as, |
  gs fss e as, gs fss) |
  a,!8( ds gs fs a ds |
  
  \barNumberCheck 481
  gs8 fs a ds gs fs |
  gs,8 cs fs es cs gs |
  fs! es cs gs fs es) |
  c8( fs b a c fs |
  b a \ottava 1 c fs b a |
  b,8 f' a gs f b, |
  \ottava 0 a8 gs f b, a gs) |
  bf,8( e a g bf e |
  
  \barNumberCheck 489
  a g \ottava 1 bf e a g |
  a,8 d g fs d a |
  \ottava 0 g8 fs d a g fs) |
  <d g d'>4-.-> s2 |
  \voiceOne r4 << { d''( c } \new Voice { fs,!2 } >> |
  <g bf>4) s2 |
  r4 <bf, bf'>( <a a'> |
  <g g'>4) s2 |
  
  \barNumberCheck 497
  \voiceOne r4 << { d''( c } \new Voice { fs,!2 } >> |
  <g bf>4) s2 |
  r4 << { g( f } \new Voice { d2 } >> |
  <c ef>4) s2 |
  r4 << { g''( f } \new Voice { b,!2 } >> |
  <c ef>4) s2 |
  r4 <ef, ef'>( <d d'> |
  <c c'>4) s2 |
  
  \barNumberCheck 505
  r4 << { g'( f } \new Voice { b,!2 } >> |
  <c ef>4) s2 |
  r4 << { ef4( df } \new Voice { \voiceFour g,2 } >> |
  <af cf>4) s2 |
  r4 << { ef''4( df } \new Voice { bf2 } >> |
  <af cf>4) s2 |
  r4 <cf, cf'>( <bf bf'> |
  <af af'>4) s2 |
  
  \barNumberCheck 513
  r4 << { ef''( df } \new Voice { bf2 } >> |
  <af cf>4) s2 |
  r4 <cf, cf'>( <bf bf'> |
  <af af'>4) \oneVoice r r |
  \acciaccatura { gs'!8 } gs'4( fs!8 e! b! gs |
  fs8 e b gs fs e |
  b4-.) r r |
  ds'8( e fs gs a b |
  
  \barNumberCheck 521
  c4-.) r r |
  c8( b a gs fs e |
  ds4-.) r r |
  \acciaccatura { gs8 } gs'2.~ |
  gs4( fs8 e b gs |
  fs e b gs fs e |
  b4) r r |
  es'8( fs gs a b cs |
  
  \barNumberCheck 529
  d4-.) r r |
  d8( cs b a gs fs |
  es4-.) r r |
  fss8( gs as b cs ds |
  e4-.) r r |
  e8( ds cs b as gs |
  \bar "||"
  \key bf \minor
  g4-.) r r |
  \ottava 1 a8( bf c df ef f |
  
  \barNumberCheck 537
  gf8 ef' gf, f ef df |
  c8 df d ef e f |
  gf8 ef' gf, f ef! df! |
  c8) r f'( e ef c |
  a4) \ottava 0 r f,8[( e |
  ef c] a4) r |
  \clef bass f,8( e ef c) r4 |
  \clef treble <df'' df'>4-> e8( f \tuplet 3/2 { af gf f } |
  
  \barNumberCheck 545
  f4->) <e e'>( <f f'> |
  <bf, bf'>4-.->) c8( df \tuplet 3/2 { f ef df } |
  df4->) <c c'>( <df df'> |
  <gf, gf'>-.->) a8( bf \tuplet 3/2 { df c bf } |
  bf4->) <a a'>( <bf bf'> |
  <ef, ef'>-.->) s2 |
  \voiceOne r4 <d' f>( <ef gf> |
  \oneVoice <f, c' ef f>-.->) e8( f \tuplet 3/2 { af! gf f) } |
  
  \barNumberCheck 553
  <f, bf df f>4->\arpeggio <ef'' ef'>( <df df'> |
  <c f a c>4-.->)\arpeggio e,8( f \tuplet 3/2 { af! gf f) } |
  <f, bf df f>4->\arpeggio <c'' c' >( <bf bf'> |
  <a c f a>4-.->)\arpeggio e8( f \tuplet 3/2 { af! gf f) } |
  <f, bf df f>4->\arpeggio <ef'' ef'>( <df df'> |
  <c f a c>4-.->)\arpeggio e,8( f \tuplet 3/2 { af! gf f) } |
  <f, bf df f>4->\arpeggio <c'' c' >( <bf bf'> |
  <a c f a>4-.->)\arpeggio e8( f \tuplet 3/2 { af! gf f) } |
  
  \barNumberCheck 561
  f4-> <df' df'>( <c c'> |
  <a c f a>4-.->)\arpeggio b,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'( a |
  <a c f a>4-.->)\arpeggio e8( f \tuplet 3/2 { af! gf f) } |
  f4 <df' df'>( <c c'> |
  <a c f a>4->)\arpeggio b,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'( a |
  <a c f a>4-.->)\arpeggio b,8( c \tuplet 3/2 { ef df c) } |
  
  \barNumberCheck 569
  c4-> bf'( a |
  <a c f a>4-.->)\arpeggio b,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'( a |
  <a c f a>4-.->)\arpeggio \clef bass b,,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'!( a |
  f4->) b,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'!-.( a-. |
  f4-.->) r r |
  
  \barNumberCheck 577
  R2. |
  r4 b,8( c \tuplet 3/2 { ef df c) } |
  c4 bf'!-.( a-. |
  f4-.) r r |
  r4 bf,( a |
  f2.) |
  R2. |
  \clef treble r4 r \tuplet 3/2 { a'8(^\sottoVoce bf df } |
  
  \barNumberCheck 585
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  bf,4-. r r |
  \ottava 1 <bf'' gf' bf>2.~( |
  q2. |
  <ef, c' ef>4. <f c' f>8 <gf c gf'>4 |
  <f df' f>4-.) \ottava 0 r \tuplet 3/2 { a,,8( bf df } |
  
  \barNumberCheck 593
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  af,!4-. r r |
  \ottava 1 <af'' f' af>2.~(
  q2. |
  <ef c' ef>4. <f c' f>8 <gf c gf'>4 |
  <f  df' f>4-.) \ottava 0 r r |
  
  \barNumberCheck 601
  <a, f'>2-> r4 |
  <a, f'>2-> r4 |
  R2. * 3 |
  \compressMMRests { R2. * 2 } |
  r4 r \tuplet 3/2 { a8( bf df } |
  
  \barNumberCheck 609
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  bf,4-. r r |
  \ottava 1 <bf'' gf' bf>2.~( |
  q4. <ef, c' ef>8 q4 |
  q4. <f c' f>8 <gf c gf'>4 |
  <f df' f>4-.) \ottava 0 r \tuplet 3/2 { a,,8( bf df } |
  
  \barNumberCheck 617
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  \clef bass c,4-. r r |
  \ottava 1 \clef treble <c''' af' c>2.~( |
  q2. |
  <g e' g>4. <af e' af>8 <bf e bf'>4 |
  <af f' af>4-.) \ottava 0 r r |
  
  \barNumberCheck 625
  <af, c f af>2-> r4 |
  <af, c f af>2-> r4 |
  R2. * 2 |
  \clef bass f,2.( |
  \grace { d16[ ef!] } \slashedGrace { f8 } ef2.~\startTrillSpan |
  \afterGrace 7/8 ef2. { d16\stopTrillSpan ef) } |
  \clef treble \ottava 1 f'''''2.~( |
  
  \barNumberCheck 633
  f4 ef8 df af f \ottava 0 |
  ef8 df af f ef df |
  af4) r r |
  c8( df ef f gf af |
  bff8-.) r r4 r |
  bff8( af g gf f ff |
  ef8-.) r r4 r |
  \ottava 1 f''2.~( |
  
  \barNumberCheck 641
  f4 ef8 df af f \ottava 0 |
  ef8 df af f ef df |
  af4) r r |
  c8( df ef f gf af |
  bff8-.) r r4 r |
  bff8( af g gf f ff |
  ef8-.) r r4 r |
  % like 65
  \voiceOne f2.~\(^\conAnima |
  
  \barNumberCheck 649
  f4 ef4. df8 |
  df2. |
  gf2.~ |
  gf2 f4 |
  f4 ef df |
  bf'2. |
  bf2 bf4 |
  % like 73
  \grace { g,16( df' } bf'2) ef,4~ |
  
  \barNumberCheck 657
  ef4 f4.-\insideSlur \prall -\insideSlur -\moveNaturalA ^\trillNatural ef8 |
  ef2. |
  af2.~ |
  af4 g f |
  g4 f4. ef8 |
  c'2. |
  c2 c4\) |
  % like 81
  \oneVoice c2.~( |
  
  \barNumberCheck 665
  c4 bf4. af8 |
  af2. |
  df2. |
  df2 c4 |
  c4 bf4. af8 |
  f'2. |
  f2 f4) |
  % like 89
  f2.( |
  
  \barNumberCheck 673
  ef4 df bf |
  c2. |
  bf4 af f |
  bf4 af gf |
  gf-\insideSlur \prall f4. e8 |
  e2. |
  f2) af4~( |
  % like 97
  \voiceOne af2. |
  
  \barNumberCheck 681
  \oneVoice <c, c'>4 <bf bf'>4. <af af'>8 |
  q2.~ |
  <df af' df>2. |
  % <df df'>2 <c c'>4 |
%   <c af' c>4. <bf bf'>8 <af af'>4 |
  <df df'>4. <c c'>8 <c gf' af c>4 |
  q4. <bf gf' bf>8 <af gf' af>4
  <f' af f'>2. |
  q2 q4) |
  % like 105
  q2.( |
  
  \barNumberCheck 689
  <ef gf ef'>4 <df gf df'>4. <bf gf' bf>8 |
  <c af' c>2. |
  <bf gf' bf>4 <af f' af> <bf f' bf> |
  <cf f cf'>2 <bf f' bf>4 |
  <cf f cf'>2.~ |
  q2 <bf f' bf>4 |
  <cf f cf'>4 <bf f' bf> <cf f cf'>) |
  <cf gf' cf>2( <bf gf' bf>4 |
  
  \barNumberCheck 697
  <df g df'>2.~ |
  q2 <c g' c>4 |
  <df g df'>4 <c g' c> <df g df'>) |
  <df af' df>2( <c af' c>4 |
  <ef a ef'>2 q4) |
  <ef af! ef'>2( <d af' d>4 |
  <f cf' f>2 q4) |
  <f bf f'>2( <e bf' e>4 |
  
  \barNumberCheck 705
  <g df' g>2 q4 |
  <g c g'>2 <af c af'>4 |
  <bff c bff'>2 <c, gf'! c>4 |
  <df f df'>4-.) r r |
  % like 118
  f,8->( df' af' \ottava 1 f df' bf' |
  <c, af'>4-.) \ottava 0 r r |
  gf,8->( c af' \ottava 1 gf c af' |
  <df, f>4-.) \ottava 0 r r |
  
  \barNumberCheck 713
  f,,8->( df' af' \ottava 1 f df' bf' |
  <c, af'>4-.) \ottava 0 r r |
  gf,8->( c af' \ottava 1 gf c af') |
  \key a \major
  \acciaccatura { cs,8 } cs'4( b8 a e cs |
  \ottava 0 b a e cs b a |
  e cs b a e4) |
  \clef bass <f f'>2( <e e'>4) |
  \ottava 1 \clef treble \acciaccatura { cs'''8 } cs'4( b8 a e cs |
  
  \barNumberCheck 721
  \ottava 0 b a e cs b a |
  e cs b a e4) |
  \clef bass <f f'>2( <e e'>4) |
  \key df \major
  <f f'>4 \clef treble f8( a df f |
  <df' f>4) f,,8( a df f |
  <df' f>4) f,,8( bf df f |
  <df' f>4) f,,8( bf d f |
  <d' f>4) gf,,8( bf d gf |
  
  \barNumberCheck 729
  <d' gf>4) gf,,8( bf ef gf |
  <ef' gf>4) g,,8( df' e g |
  <e' g>4) af,8( df f af~ |
  <af df f af>4-.) r^\piuMosso \tuplet 3/2 { c,,8( df f }
  af4) r \tuplet 3/2 { b,8( c f } 
  af4) r \tuplet 3/2 { a,8( bf! f' } |
  af!4) r r |
  af,4-. r r |
  
  \barNumberCheck 737
  \ottava 1 <af'' f' af>2.~( |
  q4 <af ef' af> <af f' af> |
  <af ef' af> <af f' af> <af ef' af> |
  <af df f af>4-.) \ottava 0 r \tuplet 3/2 { c,,8( df f }
  af4) r \tuplet 3/2 { b,8( c f } 
  af4) r \tuplet 3/2 { a,8( bf! f' } |
  af!4) r r |
  af,4-. r r |
  
  \barNumberCheck 745
  \ottava 1 <af'' f' af>2.~( |
  q4 <af ef' af> <af f' af> |
  <af ef' af> <af f' af> <af ef' af> |
  \voiceOne <af af'>2.) |
  <a a'>2. |
  q2. |
  <bf bf'>2. |
  q2. |
  
  \barNumberCheck 753
  <b b'>2. |
  q2. |
  <c c'>2. |
  \oneVoice f'4( ef8 df af f
  \ottava 0 ef df af f ef df |
  af f ef df af4-.) |
  <bff bff'>2( <af af'>4) |
  \ottava 1 f''''4( ef8 df af f
  
  \barNumberCheck 761
  \ottava 0 ef df af f ef df |
  af f ef df af4-.) |
  <bff bff'>2( <af af'>4) |
  <af f' af>4-. r r |
  <bff bff'>2(^\piuMosso <af af'>4) |
  <af f' af>4-. r r |
  <bff bff'>2( <af af'>4) |
  <af f' af>4-. r r |
  
  \barNumberCheck 769
  <bff bff'>2( <af af'>4) |
  <bff f' bff>4-. <af f' af>-. <bff f' bff>-. |
  <af f' af>4-. <bff f' bff>-. <af f' af>-. |
  <a f' a>4-. r r |
  <c e bf' c>4-> r r |
  <a' c f a>4-> r r |
  <gf! af! c ef gf! af!>-> r r |
  <f af df f>2.-> |
  
  \barNumberCheck 777
  R2. |
  <f, af df f>2.-> |
  R2. |
  \ottava 1 \acciaccatura { <df'' af' df>8 } df''2.\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 64 |
  
  \barNumberCheck 65
  \voiceFour cf''2.~ |
  cf2. |
  cf2. |
  bf2. |
  cf2.~-> |
  cf2. |
  <bf df>2. |
  <af df>2. |
  
  \barNumberCheck 73
  \grace { s16 \hideNoteHead df~ } df2.~ |
  df2. |
  df2. |
  c2.-> |
  df2.~ |
  df2. |
  c2.~ |
  c2. |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  af2-> c4~-> |
  \hideNoteHead c4 s2 |
  s2. * 2 |
  \voiceOne af'2._~ |
  \hideNoteHead af4. s |
  s2. * 2 |
  
  \barNumberCheck 105
  s2. * 88 |
  
  \barNumberCheck 193
  s2. * 4 |
  \voiceFour cf,2.~ |
  cf2. |
  cf2. |
  bf2. |
  
  \barNumberCheck 201
  cf2.~-> |
  cf2. |
  <bf df>2. |
  <af df>2. |
  \appoggiatura { \voiceOne \slurDown \hideNoteHead g16 \hideNoteHead df' }
    \voiceFour df2.~ |
  df2. |
  df2. |
  c2.-> |
  
  \barNumberCheck 209
  df2.~ |
  df2. |
  c2.~ |
  c2. |
  s2. * 4 |
  
  \barNumberCheck 217
  s2. * 8 |
  
  \barNumberCheck 225
  s2. * 4 |
  af2-> c4~-> |
  \hideNoteHead c4 s2 |
  s2. * 2 |
  
  \barNumberCheck 233
  \voiceOne <gf' af>2 s4 |
  s2. * 7 |
  
  \barNumberCheck 241
  s2. * 24 |
  
  \barNumberCheck 265
  \key a \major
  \clef bass
  s2. |
  \hideNoteHead cs,,2.~
  cs4 b cs |
  e4 d4. cs8 |
  s2. |
  \hideNoteHead cs2.~ |
  cs4 b cs |
  e4 d4. cs8 |
  
  \barNumberCheck 273
  << { \hideNoteHead e2.~ } \new Voice { \voiceOne cs2. } >>  |
  e2. |
  cs2. |
  cs2. |
  s2. * 4 |
  
  \barNumberCheck 281
  s2. * 5 |
  \hideNoteHead cs2.~
  cs4 b cs |
  e4 d4. cs8 |
  
  \barNumberCheck 289
  s2. |
  \hideNoteHead cs2.~ |
  cs4 b cs |
  e4 d4. cs8 |
  \oneVoice \acciaccatura { cs8 } a'4 fs d \voiceOne  |
  << { \hideNoteHead e2.~ } \new Voice { \voiceOne cs2. } >>  |
  e2. |
  cs2. |
  
  \barNumberCheck 297
  cs2. |
  s2. * 7 |
  
  \barNumberCheck 305
  s2. * 5 |
  \voiceFour r4 fss8( gs \tuplet 3/2 { b8 a gs } |
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b!8 a gs } |
  
  \barNumberCheck 313
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b! a gs } |
  gs2.->) |
  s4 bs8( cs \tuplet 3/2 { e d! cs } |
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d cs } |
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d cs } |
  
  \barNumberCheck 321
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d cs } |
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d cs } |
  cs2.)-> |
  r4 fss,8( gs \tuplet 3/2 { b! a gs } |
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b! a gs } |
  
  \barNumberCheck 329
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b! a gs } |
  gs2.->) |
  a4 as8 b \tuplet 3/2 { ds cs b } |
  b2.-> |
  s2. * 3 |
  
  \barNumberCheck 337
  s2. * 24 |
  
  \barNumberCheck 361
  s2. * 6 |
  \clef bass \voiceOne \hideNoteHead cs,2.~ |
  cs4 b cs |
  
  \barNumberCheck 369
  e4 d4. cs8 |
  s2. |
  \hideNoteHead cs2.~ |
  cs4 b cs |
  e4 d4. cs8 |
  a'4 fs2 |
  << { \hideNoteHead e2.~ } \new Voice { \voiceOne cs2. } >>  |
  e2. |
  
  \barNumberCheck 377
  cs2. |
  cs2. |
  s2. * 6 |
  
  \barNumberCheck 385
  s2. * 3 |
  \hideNoteHead cs2.~ |
  cs4 b cs |
  e4 d4. cs8 |
  s2. |
  \hideNoteHead cs2.~ |
  
  \barNumberCheck 393
  cs4 b cs |
  e4 d4. cs8 |
  \clef treble \magnifyMusic #2/3 { a'8 gs b a fs } d |
  << 
    { 
      <gs, e'>2.~ |
      e'2. | 
    } 
    \new Voice { 
      \hideNoteHead gs,2.~ |
      \hideNoteHead gs2. |
    } 
  >>
  cs2.~ |
  cs2. |
  s2. |
  
  \barNumberCheck 401
  s2. * 8 |
  
  \barNumberCheck 409
  s2. * 3 |
  % like 310
  \voiceFour r4 fss8( gs \tuplet 3/2 { b8 a gs } |
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b!8 a gs } |
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b! a gs } |
  
  \barNumberCheck 417
  gs2.->) |
  s4 bs8( cs \tuplet 3/2 { e d! cs } |
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d! cs } |
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d! cs } |
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d cs } |
  
  \barNumberCheck 425
  cs2.~-> |
  cs4) bs8( cs \tuplet 3/2 { e d cs } |
  cs2.)-> |
  % like 326
  r4 fss,8( gs \tuplet 3/2 { b! a gs } |
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b! a gs } |
  gs2.->~ |
  gs4) fss8( gs \tuplet 3/2 { b! a gs } |
  
  \barNumberCheck 433
  gs2.->) |
  a4 as8 b \tuplet 3/2 { ds cs b } |
  b2.-> |
  s2. * 5 |
  
  \barNumberCheck 441
  s2. * 48 |
  
  \barNumberCheck 489
  s2. * 3 |
  s4 cs!8( d \tuplet 3/2 { f ef d } |
  d2.)~ |
  d4 cs!8( d \tuplet 3/2 { f ef d } |
  d2.)^~ |
  d4 cs!8( d \tuplet 3/2 { f ef d } |
  
  \barNumberCheck 497
  d2.)~ |
  d4 f,8( g \tuplet 3/2 { bf af g } |
  g2.)~ |
  g4 fs'!8( g \tuplet 3/2 { bf af g } |
  g2.)~ |
  g4 fs!8( g \tuplet 3/2 { bf af g } |
  g2.)~ |
  g4 fs,!8( g \tuplet 3/2 { bf af g } |
  
  \barNumberCheck 505
  g2.)~ |
  g4 \voiceOne d8( ef \tuplet 3/2 { g f ef } |
  \voiceFour ef2.)~-> |
  ef4 d'8( ef \tuplet 3/2 { gf ff ef } |
  ef2.)~-> |
  ef4 d8( ef \tuplet 3/2 { gf ff ef } |
  ef2.)~-> |
  ef4 d8( ef \tuplet 3/2 { gf ff ef } |
  
  \barNumberCheck 513
  ef2.)~-> |
  ef4 d8( ef \tuplet 3/2 { gf ff ef } |
  ef2.)-> |
  ff4 s2 |
  s2. * 4 |
  
  \barNumberCheck 521
  s2. * 24 |
  
  \barNumberCheck 545
  s2. * 5 |
  \voiceOne s4 f,8_( gf \tuplet 3/2 { bf af gf } |
  \voiceFour gf2.->) |
  s2. |
  
  \barNumberCheck 553
  s2. * 88 |
  
  \barNumberCheck 641
  s2. * 7 |
  % like 65
  cf2.~ |
  
  \barNumberCheck 649
  cf2. |
  cf2. |
  bf2. |
  cf2.~-> |
  cf2. |
  <bf df>2. |
  <af df>2. |
  % like 73
  \grace { s16 \hideNoteHead df~ } df2.~ |
  
  \barNumberCheck 657
  df2. |
  df2. |
  c2.-> |
  df2.~ |
  df2. |
  c2.~ |
  c2. |
  s2. |
  
  \barNumberCheck 665
  s2. * 8 |
  
  \barNumberCheck 673
  s2. * 7 |
  % like 97
  af2-> c4~-> |
  
  \barNumberCheck 681
  \hideNoteHead c4 s2 |
  s2. * 2 |
  \voiceOne <gf' af>2 s4 |
  s2. * 4 |
  
  \barNumberCheck 689
  s2. * 56 |
  
  \barNumberCheck 745
  s2. * 3 |
  \voiceFour f'2 ef4 |
  f2^( ef4 |
  f2 ef4) |
  gf!2^( ff4 |
  gf!2 ff4) |
  
  \barNumberCheck 753
  g2^( f!4 |
  g2 f4) |
  af2( gf!4) |
  s2. * 3 |
  f,,2. |
  s2. |
  
  \barNumberCheck 761
  s2. * 2 |
  f2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s2. * 64
  
  \barNumberCheck 65
  \voiceThree df8 s s2 |
  df8 s s2 |
  gf8 s s2 |
  df8 s s2 |
  af'8 s s2 |
  df,8 s s2 |
  gf8 s s2 |
  ff8 s s2 |
  
  \barNumberCheck 73
  ef8 s s2 |
  g8 s s2 |
  af8 s s2 |
  ef8 s s2 |
  bf'8 s s2 |
  ef,8 s s2 |
  af8 s s2 |
  g2. |
  
  \barNumberCheck 81
  gf!2. |
  gf2. |
  f2. |
  f8 s s2 |
  ef8 s s2 |
  ef8 s s2 |
  d8 s s2 |
  d8 s s2 |
  
  \barNumberCheck 89
  ef8 s s2 |
  gf,8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  df8 s s2 |
  af'8 s s2 |
  
  \barNumberCheck 97
  gf2. |
  gf2. |
  f2. |
  f8 s s2 |
  ef8 s s2 |
  ef8 s s2 |
  d8 s s2 |
  d8 s s2 |
  
  \barNumberCheck 105
  ef8 s s2 |
  gf,8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  
  \barNumberCheck 113
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  s2. * 4 |
  
  \barNumberCheck 121
  s2. * 72 |
  
  \barNumberCheck 193
  s2. * 4 |
  df8 s s2 |
  df8 s s2 |
  gf8 s s2 |
  df8 s s2 |
  
  \barNumberCheck 201
  af'8 s s2 |
  df,8 s s2 |
  gf8 s s2 |
  ff8 s s2 |
  ef8 s s2 |
  g8 s s2 |
  af8 s s2 |
  ef8 s s2 |
  
  \barNumberCheck 209
  bf'8 s s2 |
  ef,8 s s2 |
  af8 s s2 |
  g2. |
  gf!2. |
  gf2. |
  f2. |
  f8 s s2 |
  
  \barNumberCheck 217
  ef8 s s2 |
  ef8 s s2 |
  d8 s s2 |
  d8 s s2 |
  ef8 s s2 |
  gf,8 s s2 |
  af8 s s2 |
  af8 s s2 |
  
  \barNumberCheck 225
  af8 s s2 |
  af8 s s2 |
  df8 s s2 |
  af'8 s s2 |
  gf2. |
  gf2. |
  f2.
  f8 s s2 |
  
  \barNumberCheck 233
  ef8 s s2 |
  ef8 s s2 |
  d8 s s2 |
  d8 s s2 |
  ef8 s s2 |
  gf,8 s s2 |
  af8 s s2 |
  af8 s s2 |
  
  \barNumberCheck 241
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  
  \barNumberCheck 249
  s2. * 16 |
  
  \barNumberCheck 265
  \key a \major
  s2. * 8 |
  
  \barNumberCheck 273
  d2.~( |
  d2 cs4 |
  e2.~ |
  e2.) |
  s2. * 4 |
  
  \barNumberCheck 281
  s2. * 8 |
  
  \barNumberCheck 289
  s2. * 4 |
  fs2. |
  e2.( |
  d2 cs 4 |
  e2.~ |
  
  \barNumberCheck 297
  e2.) |
  s2. * 7 |
  
  \barNumberCheck 305
  s2. * 5 |
  r4 e'( gs,~ |
  gs4) bs gs~ |
  gs4 cs gs~ |
  
  \barNumberCheck 313
  gs4 ds' gs,~ |
  gs4 e' gs,~ |
  gs4 bs gs~ |
  gs cs gs |
  b!4 gs' cs,~ |
  cs4 fs cs~ |
  cs4 es cs~ |
  cs4 fs cs~ |
  
  \barNumberCheck 321
  cs4 gs' cs,~ |
  cs4 a' cs,~ |
  cs4 es cs~ |
  cs4 fs cs |
  s2. |
  ds,2.( |
  e2. |
  fs2. |
  
  \barNumberCheck 329
  e2. |
  ds2. |
  e2. |
  r4 \set tieWaitForNote = ##t fs2*1/2~ a!4_~ |
  \hideNoteHead <fs a ds>2.) |
  \set tieWaitForNote = ##f r4 <b e> gs |
  r4 <b e> gs |
  s2. |
  
  \barNumberCheck 337
  s2. * 3 |
  s4 <b ds>2~ |
  q2. |
  r4 <b e> gs |
  r4 <b e> gs |
  s2. |
  
  \barNumberCheck 345
  s2. * 3 |
  s4 <b ds>2~ |
  q2. |
  r4 <b e> gs |
  s2. * 2 |
  
  \barNumberCheck 353
  s2. |
  r4 e( b) |
  s2. * 6 |
  
  \barNumberCheck 361
  s2. * 8 |
  
  \barNumberCheck 369
  s2. * 6 |
  e2.( |
  d2 cs4 |
  
  \barNumberCheck 377
  e2.~ |
  e2.) |
  s2. * 6 |
  
  \barNumberCheck 385
  s2. * 8 |
  
  \barNumberCheck 393
  s2. * 3 |
  e2.( |
  d2 cs4 |
  e2.~ |
  e2.) |
  s2. |
  
  \barNumberCheck 401
  s2. * 8 |
  
  \barNumberCheck 409
  s2. * 3 |
  % like 310
  r4 e'( gs,~ |
  gs4) bs gs~ |
  gs4 cs gs~ |
  gs4 ds' gs,~ |
  gs4 e' gs,~ |
  
  \barNumberCheck 417
  gs4 bs gs~ |
  gs cs gs |
  % like 317
  b!4 gs' cs,~ |
  cs4 fs cs~ |
  cs4 es cs~ |
  cs4 fs cs~ |
  cs4 gs' cs,~ |
  cs4 a' cs,~ |
  
  \barNumberCheck 425
  cs4 es cs~ |
  cs4 fs cs |
  s2. |
  % like 326
  ds,2.( |
  e2. |
  fs2. |
  e2. |
  ds2. |
  
  \barNumberCheck 433
  e2. |
  r4 \set tieWaitForNote = ##t fs2*1/2~ a!4_~ |
  \hideNoteHead <fs a ds>2.) |
  % like 334
  \set tieWaitForNote = ##f r4 <b e> gs |
  r4 <b e> gs |
  s2. * 3 |
  
  \barNumberCheck 441
  s2. |
  s4 <b ds>2~ |
  q2. |
  % like 342
  r4 <b e> gs |
  r4 <b e> gs |
  s2. * 3 |
  
  \barNumberCheck 449
  s2. |
  s4 <b ds>2~ |
  q2. |
  % like 350
  r4 <b e> gs |
  s2. * 2 |
  s2. |
  r4 e( b) |
  
  \barNumberCheck 457
  s2. * 32 |
  
  \barNumberCheck 489
  s2. * 6 |
  c4 d'( <fs, a>) |
  s2. |
  
  \barNumberCheck 497
  s2. * 6 |
  f4 g'( <g, b!>) |
  ef4 ef'( <g, c>) |
  
  \barNumberCheck 505
  d4 d'( g,) |
  c,4 c'( <ef, g>) |
  bf4 df'( <ef, g>) |
  s2. * 5 |
  
  \barNumberCheck 513
  s2. * 32 |
  
  \barNumberCheck 545
  s2. * 6 |
  s4 r <ef gf> |
  s2. |
  
  \barNumberCheck 553
  s2. * 88 |
  
  \barNumberCheck 641
  s2. * 7 |
  % like 65
  df8 s s2 |
  
  \barNumberCheck 649
  df8 s s2 |
  gf8 s s2 |
  df8 s s2 |
  af'8 s s2 |
  df,8 s s2 |
  gf8 s s2 |
  ff8 s s2 |
  % like 73
  ef8 s s2 |
  
  \barNumberCheck 657
  g8 s s2 |
  af8 s s2 |
  ef8 s s2 |
  bf'8 s s2 |
  ef,8 s s2 |
  af8 s s2 |
  g2. |
  % like 81
  gf!2. |
  
  \barNumberCheck 665
  gf2. |
  f2. |
  f8 s s2 |
  ef8 s s2 |
  ef8 s s2 |
  d8 s s2 |
  d8 s s2 |
  % like 89
  ef8 s s2 |
  
  \barNumberCheck 673
  gf,8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  df8 s s2 |
  af'8 s s2 |
  % like 97
  gf2. |
  
  \barNumberCheck 681
  gf2. |
  f2. |
  f8 s s2 |
  ef8 s s2 |
  ef8 s s2 |
  d8 s s2 |
  d8 s s2 |
  % like 105
  ef8 s s2 |
  
  \barNumberCheck 689
  gf,8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  
  \barNumberCheck 697
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  
  \barNumberCheck 705
  af8 s s2 |
  af8 s s2 |
  af8 s s2 |
  s2. * 5 |
  
  \barNumberCheck 713
  s2. * 32 |
  
  \barNumberCheck 745
  s2. * 3 |
  % \clef treble 
  f'''2( ef4) |
  f2( ef4) |
  f2( ef4) |
  gf!2( ff4) |
  gf!2( ff4) |
  
  \barNumberCheck 753
  g2( f!4) |
  g2( f4) |
  af2( gf!4) |
}

leftHandLower = \relative {
  \omit MultiMeasureRestNumber
  bf,2( \tuplet 3/2 { a8 bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  <bf,, bf'>4-. r r |
  \clef treble <bf'' c ef gf bf>2.~ |
  q2. |
  q4. q8 q4 |
  
  \barNumberCheck 9
  <bf df f bf>-! r \clef bass \tuplet 3/2 { a,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  <af,,! af'!>4-. r r |
  \clef treble <af'' f' df'>2.~ |
  q2. |
  <af ef' gf af>4. q8 q4 |
  
  \barNumberCheck 17
  <df f af>4 r r |
  \clef bass <f, c' f>2-> r4 |
  <f, c' f>2-> r4 |
  <f, f'>2.~\(-> |
  q2.~ |
  q4( <gf gf'>-.)\) r |
  \compressMMRests { R2. * 2 } |
  
  \barNumberCheck 25
  r4 r \tuplet 3/2 { a'8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  <bf,, bf'>4-. r r |
  \clef treble <bf'' c ef gf bf>2.~ |
  q4. q8 q4 |
  q4. q8 q4 |
  
  \barNumberCheck 33
  <bf df f bf>4-! r \clef bass \tuplet 3/2 { a,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  <c,, c'>4-. r r |
  \clef treble <c''' f af c>2.~ |
  q2. |
  <c e bf' c>4. q8 q4 |
  
  \barNumberCheck 41
  <f af c>4 r r |
  \clef bass <f, c' f>2-> r4 |
  <f, c' f>2-> r4 |
  <e, e'>2.~\(-> |
  q2.~ |
  q4( <f f'>-.)\) r |
  \compressMMRests { R2. * 2 | }
  
  \barNumberCheck 49
  <df df'>4 r <af'' af'>( |
  <f' df'>4) r <af, af'>( |
  <f' df'>4) r r |
  R2. |
  <af,, af'>4 r r |
  <g'' c gf'!>4\(_(\> <af c gf'>) q\)\! |
  R2. |
  <bff c gf'!>4\(_(\> <af c gf'>) q\)\! |
  
  \barNumberCheck 57
  <df,,, df'>4 r <af'' af'>( |
  <f' df'>4) r <af, af'>( |
  <f' df'>4) r r |
  R2. |
  <af, ef' gf>2.( |
  \clef treble c'8 df ef f gf af |
  bff8-.) r r4 r |
  \clef bass bff,8(\> af g gf f ef\! |
  
  \barNumberCheck 65
  \voiceTwo \slurUp df8)( af' df f df af) |
  df,8( cf' df f df cf) |
  gf8( cf df gf df cf) |
  df,8( bf' df gf df bf) |
  af8( cf df af' df, cf) |
  df,8( cf' df f df cf) |
  gf8( bf df gf df bf) |
  ff8( bf df af' df, bf) |
  
  \barNumberCheck 73
  ef,8_\legatoSempre bf' df g df bf |
  g8 df' ef bf' ef, df |
  af8 df ef af ef df |
  ef,8 c' ef af ef c |
  bf8 df ef bf' ef, df |
  ef,8 df' ef g ef df |
  af8 c ef af ef c |
  g8 af c ef c af |
  
  \barNumberCheck 81
  gf!8 af c ef c af |
  gf8 af c ef c af |
  f8 af df f df af |
  f8 af df af' df, af |
  ef8 af c gf' c, af |
  ef8 af c gf' c, af |
  d,8 af' cf f cf af |
  d,8 af' bf f' bf, af |
  
  \barNumberCheck 89
  ef8 gf bf ef bf gf |
  gf,8 gf' bf ef bf gf |
  af,8 f' af df af f |
  af,8 f' af df af f |
  af,8 gf' af c af gf |
  af,8 gf' af c af gf |
  df8 af' df f df bf |
  af8 df f af f df |
  
  \barNumberCheck 97
  gf,8 af c ef c af |
  gf8 af c ef c af |
  f8 af df f df af |
  f8 af df af' df, af |
  ef8 af c gf' c, af |
  ef8 af c gf' c, af |
  d,8 af' cf f cf af |
  d,8 af' bf f' bf, af |
  
  \barNumberCheck 105
  ef8 gf bf ef bf gf |
  gf,8 gf' bf ef bf gf |
  af,8 f' af df af f |
  af,8 f' af df af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  
  \barNumberCheck 113
  af,8 ef' gf ef' gf, ef |
  af,8 ef' gf ef' gf, ef |
  af,8 ef' gf c gf ef |
  af,8 ef' gf c gf ef |
  \oneVoice df,4-. r af'8( f' |
  df'4) r r |
  af,,4-. r af'8( ef' |
  c'4) r r |
  
  \barNumberCheck 121
  df,,4-. r af'8( f' |
  df'4) r r |
  af,,4-. r af'8( ef' |
  c'4) r r |
  df,,4-. r af'8( f' |
  df'4) r r |
  R2. |
  \once \override MultiMeasureRest.staff-position = #-6
  R2. |
  
  \barNumberCheck 129
  <df,,, df'>4-. r r |
  \clef treble <df''' df'>2.-> |
  \compressMMRests { R2. * 2 } |
  r4 r \clef bass \tuplet 3/2 { a,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 137
  <bf,, bf'>4-. r r |
  \clef treble <bf'' c ef gf bf>2.~ |
  q2. |
  q4. q8 q4 |
  <bf df f bf>-! r \clef bass \tuplet 3/2 { a,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 145
  <af,, af'>4-. r r |
  \clef treble <af'' f' df'>2.~ |
  q2. |
  \tuplet 5/3 { <af ef' gf af>4( <af ef'! gf af> q q q } |
  <df f af>4-!) r r |
  \clef bass <f, c' f>2-> r4 |
  <f, c' f>2-> r4 |
  <f, f'>2.~\(-> |
  
  \barNumberCheck 153
  q2.~ |
  q4( <gf gf'>-.)\) r |
  \compressMMRests { R2. * 2 } |
  r4 r \tuplet 3/2 { a'8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 161
  <bf,, bf'>4-. r r |
  \clef treble <bf'' c ef gf bf>2.~ |
  q4. q8 q4 |
  q4. q8 q4 |
  <bf df f bf>4-! r \clef bass \tuplet 3/2 { a,8( bf df } |
  f4) r \tuplet 3/2 { a,8( bf df } |
  f4) r r |
  R2. |
  
  \barNumberCheck 169
  <c,, c'>4-. r r |
  \clef treble <c''' f af c>2.~ |
  q2. |
  \tuplet 4/3 { <c e bf' c>4( q q q } |
  <f af c>4-.) r r |
  \clef bass <f, c' f>2-> r4 |
  <f, c' f>2-> r4 |
  <e, e'>2.~-> |
  
  \barNumberCheck 177
  q2. |
  f2.\( |
  \grace { d16[( ef!]) } \slashedGrace { f8 } \afterGrace 7/8
    { ef2.~_\startTrillSpan % |
  ef2. } { d16(\stopTrillSpan ef) } |
  <df! df'!>4\) r <af'' af'>4( |
  <f' df'>4) r <af, af'>( |
  <f' df'>4) r r |
  R2. |
  
  \barNumberCheck 185
  <af,, af'>4-. r r |
  <g'' c gf'!>4\(_(\> <af c gf'>) q\)\! |
  R2. |
  <bff c gf'>4\(_(\> <af c gf'>) q\)\! |
  <df,,, df'>4 r <af'' af'>( |
  <f' df'>4) r <af, af'>( |
  <f' df'>4) r r |
  R2. |
  
  \barNumberCheck 193
  <af, ef' gf>2.( |
  \clef treble c'8 df ef f gf af |
  bff8-.) r r4 r |
  \clef bass bff,8(\> af g gf f ef\! |
  % like 65
  \voiceTwo \slurUp df8)( af' df f df af) |
  df,8( cf' df f df cf) |
  gf8( cf df gf df cf) |
  df,8( bf' df gf df bf) |
  
  \barNumberCheck 201
  af8( cf df af' df, cf) |
  df,8( cf' df f df cf) |
  gf8( bf df gf df bf) |
  ff8( bf df af' df, bf) |
  ef,8_\legatoSempre bf' df g df bf |
  g8 df' ef bf' ef, df |
  af8 df ef af ef df |
  ef,8 c' ef af ef c |
  
  \barNumberCheck 209
  bf8 df ef bf' ef, df |
  ef,8 df' ef g ef df |
  af8 c ef af ef c |
  g8 af c ef c af |
  gf!8 af c ef c af |
  gf8 af c ef c af |
  f8 af df f df af |
  f8 af df af' df, af |
  
  \barNumberCheck 217
  ef8 af c gf' c, af |
  ef8 af c gf' c, af |
  d,8 af' cf f cf af |
  d,8 af' bf f' bf, af |
  ef8 gf bf ef bf gf |
  gf,8 gf' bf ef bf gf |
  af,8 f' af df af f |
  af,8 f' af df af f |
  
  \barNumberCheck 225
  af,8 gf' af c af gf |
  af,8 gf' af c af gf |
  df8 af' df f df bf |
  af8 df f af f df |
  gf,8 af c ef c af |
  gf8 af c ef c af |
  f8 af df f df af |
  f8 af df af' df, af |
  
  \barNumberCheck 233
  ef8 af c gf' c, af |
  ef8 af c gf' c, af |
  d,8 af' cf f cf af |
  d,8 af' bf f' bf, af |
  ef8 gf bf ef bf gf |
  gf, gf' bf ef bf gf |
  af,8 f' af df af f |
  af,8 f' af df af f |
  
  \barNumberCheck 241
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 ef' gf ef' gf, ef |
  af,8 ef' gf ef' gf, ef |
  af, ef' gf c gf ef |
  af, ef' gf c gf ef |
  
  \barNumberCheck 249
  % like 117
  \oneVoice df,4-. r af'8( f' |
  df'4) r r |
  af,,4-. r af'8( ef' |
  c'4) r r |
  df,,4-. r af'8( f' |
  df'4) r r |
  af,,4-. r af'8( ef' |
  c'4) r r |
  
  \barNumberCheck 257
  df,,,4-. r af''8( f' |
  df'4) r r |
  R2. |
  \once \override MultiMeasureRest.staff-position = #-6
  R2. |
  <df,,, df'>4-. r r |
  \clef treble <df''' df'>2.-> |
  \compressMMRests { R2. * 2 } |
  
  \barNumberCheck 265
  \key a \major
  \clef bass
  <a,, a'>2.^~ |
  <d a'>2.~ |
  q2.~ |
  q2. |
  <a a'>2.^~ |
  <d a'>2.~ |
  q2.~ |
  q2. |
  
  \barNumberCheck 273
  \voiceTwo e2.~ |
  e2 a4~ |
  a2.~ |
  a2. |
  \oneVoice r4 r <e' g as>( |
  <d fs b>4) r <fs a! d>( |
  <es gs! cs>2 <e g as>4 |
  <d fs b>4) r <fs a! d>( |
  
  \barNumberCheck 281
  <cs gs' es'>4)\arpeggio r r |
  cs,4 r r |
  R2. * 2 |
  a'2.^~ |
  <d, a'>2.~ |
  q2.~ |
  q2. |
  
  \barNumberCheck 289
  <a a'>2.^~ |
  <d a'>2.~ |
  q2.~ |
  q2.~ |
  \voiceTwo q2. |
  e2.~ |
  e2 a4~ |
  a2.~ |
  
  \barNumberCheck 297
  a2. |
  \oneVoice R2. * 4  |
  r4 r \clef treble <b' d! es>( |
  <a cs fs>4) r <cs e! a>( |
  <bs ds gs>2 <b d es>4 |
  
  \barNumberCheck 305
  <a cs fs>4) r <cs e! a>( |
  <gs ds' bs'>4) r r |
  \clef bass gs,4-. r r |
  R2. * 2 |
  \voiceTwo cs2._\legato |
  <ds fs>2. |
  e2. |
  
  \barNumberCheck 313
  bs2. |
  cs2. |
  <ds fs>2. |
  e2. |
  es2. |
  <fs a>2. |
  <gs b!>2. |
  a2. |
  
  \barNumberCheck 321
  es2. |
  <fs a>2. |
  <gs b!>2. |
  a2. |
  \oneVoice a,4-. cs'( fs,) |
  \voiceTwo gs,4 bs' gs |
  e4 cs' gs |
  gs,4 bs' gs^~ |
  
  \barNumberCheck 329
  gs4 cs gs |
  gs,4 bs' gs^~ |
  gs4 cs gs |
  b,2.~ |
  <b fs' a ds>2.^> |
  e2.( |
  ds2. |
  \oneVoice cs4-.) <b' e> gs |
  
  \barNumberCheck 337
  b,2.( |
  a4-.) <cs' e>( fs,) |
  fs,4-. <cs'' e>( fs,) |
  b,4-.\voiceTwo r fs'(\< |
  gs4 fs\! gs) |
  e2.( |
  ds2. |
  \oneVoice cs4-.) <b' e> gs |
  
  \barNumberCheck 345
  b,2.( |
  a4-.) <cs' e>( fs,) |
  fs,4-. <cs'' e>( fs,) |
  b,4-.\voiceTwo r fs'(\< |
  gs4 fs\! gs |
  e2.) |
  \oneVoice b4-. <b' e> gs |
  <a, a'>4(\< <c c'>2)\! |
  
  \barNumberCheck 353
  R2. |
  \voiceTwo e,2.( |
  \oneVoice b4) e'( b) |
  <a, a'>4( <c c'>2) |
  R2. |
  e,4-._\fzMarkup r r |
  R2. |
  <e'' b' gs'>4\arpeggio r r |
  
  \barNumberCheck 361
  R2. * 3 |
  e,,2. |
  R2. |
  <a a'>2.^~ |
  <d a'>2.~ |
  q2.~ |
  
  \barNumberCheck 369
  q2. |
  <a a'>2.^~ |
  <d a'>2.~ |
  q2.~ |
  q2.~ |
  <d a' fs'>2. |
  \voiceTwo e2.~ |
  e2 a4~ |
  
  \barNumberCheck 377
  a2.~ |
  a2. |
  % like 277
  \oneVoice r4 r <e' g as>( |
  <d fs b>4) r <fs a! d>( |
  <es gs cs>2 <e g as>4 |
  <d fs b>4) r <fs a! d>( |
  <cs gs' es'>4)\arpeggio r r |
  cs,4 r r |
  
  \barNumberCheck 385
  R2. * 2 |
  <a a'>2.^~ |
  <d a'>2.~ |
  q2.~ |
  q2. |
  <a a'>2.^~-> |
  <d a'>2.~ |
  
  \barNumberCheck 393
  q2.~ |
  q2.~ |
  <d a' fs'>2. |
  \voiceTwo e2.~ |
  e2 a4~ |
  a2.~ |
  a2. |
  \oneVoice R2. |
  
  \barNumberCheck 401
  % like 299
  \oneVoice R2. * 3  |
  r4 r \clef treble <b' d! es>( |
  <a cs fs>4) r <cs e! a>( |
  <bs ds gs>2 <b d es>4 |
  <a cs fs>4) r <cs e! a>( |
  <gs ds' bs'>4) r r |
  
  \barNumberCheck 409
  \clef bass gs,4-. r r |
  R2. * 2 |
  % like 310
  \voiceTwo cs2._\legato |
  <ds fs>2. |
  e2. |
  bs2. |
  cs2. |
  
  \barNumberCheck 417
  <ds fs>2. |
  e2. |
  % like 317
  es2. |
  <fs a>2. |
  <gs b!>2. |
  a2. |
  es2. |
  <fs a>2. |
  
  \barNumberCheck 425
  <gs b!>2. |
  a2. |
  \oneVoice a,4-. cs'( fs,) |
  % like 326
  \voiceTwo gs,4_\legato bs' gs |
  e4 cs' gs |
  gs,4 bs' gs^~ |
  gs4 cs gs |
  gs,4 bs' gs~ |
  
  \barNumberCheck 433
  gs4 cs gs |
  b,2.~ |
  <b fs' a ds>2.^> |
  % like 334
  e2.( |
  ds2. |
  \oneVoice cs4-.) <b' e> gs |
  b,2.( |
  a4-.) <cs' e>( fs,) |
  
  \barNumberCheck 441
  fs,4-. <cs'' e>( fs,) |
  b,4-.\voiceTwo r fs'( |
  gs4\< fs gs\! |
  % like 342
  e2.)( |
  ds2. |
  \oneVoice cs4-.) <b' e> gs |
  b,2.( |
  a4-.) <cs' e>( fs,) |
  
  \barNumberCheck 449
  fs,4-. <cs'' e>( fs,) |
  b,4-.\voiceTwo r fs'( |
  gs4\< fs gs\! |
  % like 350
  e2.) |
  \oneVoice b4-. <b' e> gs |
  <a, a'>4(\< <c c'>2)\! |
  R2. |
  \voiceTwo e,2.( |
  
  \barNumberCheck 457
  \oneVoice b4) e'( b) |
  <a, a'>4(\< <c c'>2)\! |
  R2. |
  % like 358
  e,4-._\fzMarkup r r |
  R2. |
  <e'' b' gs'>4_\fz \arpeggio r r |
  R2. * 2 |
  
  \barNumberCheck 465
  R2. |
  e,,2. |
  R2. |
  <d d'>4-. r r |
  R2. |
  <d'' gs b f'>4-. r r |
  R2. * 2 |
  
  \barNumberCheck 473
  R2. |
  d,,2.~( |
  d2. |
  <cs cs'>4-.) r r |
  <gs'' gs'>4( <ds' ds'> <cs cs'> |
  q2->) r4 |
  <cs, cs'>4-. r r |
  <cs, cs'>4-. r r |
  
  \barNumberCheck 481
  <fs' fs'>4( <ds' ds'> <cs cs'> |
  q4-.) <fss,, fss'>( <gs gs'> |
  q4 <ds' ds'> <cs cs'> |
  <d! d'!>4) r r |
  <a' a'>4( <e' e'> <d d'> |
  q2->) r4 |
  <d, d'>4-. r r |
  <d, d'>4-. r r |
  
  \barNumberCheck 489
  <g' g'>4( <e' e'> <d d'> |
  q4-.) <cs, cs'>( <d d'> |
  q4-.) <b b'>( <c c'> |
  <bf bf'>4) d''( <d, g>) |
  a4-> d'( <d, a'>) |
  g,4-> d''( <d, bf'>) |
  \voiceTwo c2.( |
  \oneVoice bf4->) d'( <d, g>) |
  
  \barNumberCheck 497
  a4-> d'( <d, a'>) |
  g,4-> d''( g,) |
  b,4-> d'( g,) |
  c,4-> ef'( g,) |
  d4-> f'( <g, b!>) |
  ef4-> g'( <g, c>) |
  \voiceTwo f2.-> |
  ef2.-> |
  
  \barNumberCheck 505
  d2.-> |
  c2.-> |
  bf2.-> |
  \oneVoice af4-> cf'( <ef, af>) |
  g,4-> ef''( <ef, bf'>) |
  af,4-> ef''( <ef, af cf>) |
  bf4-> ef'( <ef, g df'>) |
  cf4-> ef'( <ef, af cf>) |
  
  \barNumberCheck 513
  g,4-> ef''( <ef, bf'>) |
  af,4-> ef''( <ef, af cf>) |
  bf4-> ef'( <ef, g df'>) |
  <cf, cf'>-. r <gs''! e'!>( |
  <b! b'!>4) r <gs e'>( |
  <b b'>4) r r |
  R2. |
  <b,, b'>4-. r r |
  
  \barNumberCheck 521
  <a'' c ds fs>4(\> <a c ds gs> <a c ds fs>\! |
  q4-.) r r |
  <b,, b'>4( <a a'> <c c'>) |
  <b b'>4 <gs'' e'> q( |
  <b b'>4.) <gs e'>8 q4( |
  <b b'>4) r r |
  R2. |
  <d,,! d'!>4-. r r |
  
  \barNumberCheck 529
  \clef treble <b'' fs' gs>4( <b fs' a> <b fs' gs> |
  <b es gs>4-.) r r |
  \clef bass <d,, d'>4( <bs bs'> <cs cs'> |
  <e! e'!>4) r r |
  \clef treble <cs'' gs' as>4( <cs gs' b> <cs gs' as> |
  <cs fss as>4-.) r r |
  \key bf \minor
  \clef bass <ff,, ff'>4( <d d'> <ef ef'> |
  <gf! gf'!>4) r \clef treble <c' a'>( |
  
  \barNumberCheck 537
  <ef a ef'>4) r <c a'>( |
  <ef a ef'>4) r <gf, gf'>-> |
  q4->\< q-> q->\! |
  <f c' ef a>4-> r r |
  f'''8->( e ef c a4) |
  \clef bass r4 f,8->( e ef c |
  a4) r4 f,-> |
  <bf, bf'>4-> \clef treble <bf'' bf'>( <d f>) |
  
  \barNumberCheck 545
  \clef bass <af, af'>4-> \clef treble <af' af'>( <c f>) |
  \clef bass <gf, gf'>-> <gf' gf'>( <bf df>) |
  <f, f'>4-> <f' f'>( <af df> |
  <ef, ef'>4->) <ef' ef'>( <gf bf>) |
  <df, df'>4-> <df' df'>( <f bf>) |
  <c, c'>4 <c' c'>( <ef gf>) |
  <bf, bf'>4 <bf' bf'>2( |
  <a c f a>4-.->) e'8( f \tuplet 3/2 { af! gf f) } |
  
  \barNumberCheck 553
  <bf,, bf'>4->\arpeggio <ef' ef'>( <df df'> |
  <f, c' a'>4-.->)\arpeggio e'8( f \tuplet 3/2 { af! gf f) } |
  <bf,, bf'>4->\arpeggio <c' c'>( <bf bf'> |
  <f c' a'>4-.->)\arpeggio e'8( f \tuplet 3/2 { af! gf f) } |
  <bf,, bf'>4->\arpeggio <ef' ef'>( <df df'> |
  <f, c' a'>4-.->)\arpeggio e'8( f \tuplet 3/2 { af! gf f) } |
  <bf,, bf'>4->\arpeggio <c' c'>( <bf bf'> |
  <f c' a'>4-.->)\arpeggio e'8( f \tuplet 3/2 { af! gf f) } |
  
  \barNumberCheck 561
  f4-> df'( c |
  <f,, c' a'>4-.->)\arpeggio b8( c \tuplet 3/2 { ef df c) } |
  <c, c'>4-> bf''( a |
  <f, c' a'>4-.->)\arpeggio e'8( f \tuplet 3/2 { af! gf f) } |
  f4 df'( c |
  <f,, c' a'>4)\arpeggio b8( c \tuplet 3/2 { ef df c) } |
  <c, c'>4-> bf''( a |
  <f, c' f>4-.->)\arpeggio b8( c \tuplet 3/2 { ef df c) } |
  
  \barNumberCheck 569
  <c, c'>4-> bf''( a |
  <f, c' f>4-.->)\arpeggio b8( c \tuplet 3/2 { ef df c) } |
  <c, c'>4-> bf''( a |
  <f, c' f>4-.->)\arpeggio b,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'!( a |
  f4->) b,8( c \tuplet 3/2 { ef df c) } |
  c4-> bf'!-.( a-. |
  f4-.->) r r |
  
  \barNumberCheck 577
  R2. |
  r4 b,8( c \tuplet 3/2 { ef df c) } |
  c4 bf'!-.( a-. |
  f4-.) r r |
  r4 bf,( a |
  f2.) |
  R2. |
  r4 r \tuplet 3/2 { a'8( bf df } |
  
  \barNumberCheck 585
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  <bf,, bf'>4-. r r |
  \clef treble <bf'' c ef gf bf>2.~ |
  q2. |
  q4. q8 q4 |
  <bf df f bf>4-. r4 \clef bass \tuplet 3/2 { a,8( bf df } |
  
  \barNumberCheck 593
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  <af,,! af'!>4-. r r |
  \clef treble <af'' f' df'>2.~ |
  q2. |
  <af ef' gf af>4. q8 q4 |
  <df f af>4-. r r |
  
  \barNumberCheck 601
  \clef bass <f, c' f>2-> r4 |
  <f, c' f>2-> r4 |
  <f, f'>2.->~\( |
  q2.~ |
  q4( <gf gf'>-.)\) r |
  \compressMMRests { R2. * 2 } |
  r4 r \tuplet 3/2 { a'8( bf df } |
  
  \barNumberCheck 609
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  <bf,, bf'>4-. r r |
  \clef treble <bf'' c ef gf bf>2.~ |
  q4. q8 q4 |
  q4. q8 q4 |
  <bf df f bf>4-. r4 \clef bass \tuplet 3/2 { a,8( bf df } |
  
  \barNumberCheck 617
  f4) r \tuplet 3/2 { a,8( bf df } |
  f2.~ |
  f2.) |
  <c,, c'>4-. r r |
  \clef treble <c''' f af c>2.~ |
  q2. |
  <c e bf' c>4. q8 q4 |
  <f af c>4-. r r |
  
  \barNumberCheck 625
  \clef bass <f, c' f>2-> r4
  <f, c' f>2-> r4 |
  <e, e'>2.~-> |
  q2. |
  f2.( |
  \grace { d16[ ef!] } \slashedGrace { f8 } ef2.~\startTrillSpan |
  \afterGrace 7/8 ef2. { d16\stopTrillSpan ef) } |
  <df! df'!>4 r <af'' af'>( |
  
  \barNumberCheck 633
  <f' df'>4) r <af, af'>( |
  <f' df'>) r r |
  R2. |
  <af,, af'>4-. r r |
  <g'' c gf'!>4\(_(\> <af c gf'>) q\)\! |
  R2. |
  <bff c gf'>4\(_(\> <af c gf'>) q\)\! |
  <df,,, df'>4 r <af'' af'>( |
  
  \barNumberCheck 641
  <f' df'>4) r <af, af'>( |
  <f' df'>4) r r |
  R2. |
  <af, ef' gf>2.( |
  \clef treble c'8 df ef f gf af |
  bff8-.) r r4 r |
  \clef bass bff,8(\> af g gf f ef\! |
  % like 65
  \voiceTwo \slurUp df8)( af' df f df af) |
  
  \barNumberCheck 649
  df,8( cf' df f df cf) |
  gf8( cf df gf df cf) |
  df,8( bf' df gf df bf) |
  af8( cf df af' df, cf) |
  df,8( cf' df f df cf) |
  gf8( bf df gf df bf) |
  ff8( bf df af' df, bf) |
  % like 73
  ef,8_\legatoSempre bf' df g df bf |
  
  \barNumberCheck 657
  g8 df' ef bf' ef, df |
  af8 df ef af ef df |
  ef,8 c' ef af ef c |
  bf8 df ef bf' ef, df |
  ef,8 df' ef g ef df |
  af8 c ef af ef c |
  g8 af c ef c af |
  % like 81
  gf!8 af c ef c af |
  
  \barNumberCheck 665
  gf8 af c ef c af |
  f8 af df f df af |
  f8 af df af' df, af |
  ef8 af c gf' c, af |
  ef8 af c gf' c, af |
  d,8 af' cf f cf af |
  d,8 af' bf f' bf, af |
  % like 89
  ef8 gf bf ef bf gf |
  
  \barNumberCheck 673
  gf,8 gf' bf ef bf gf |
  af,8 f' af df af f |
  af,8 f' af df af f |
  af,8 gf' af c af gf |
  af,8 gf' af c af gf |
  df8 af' df f df bf |
  af8 df f af f df |
  % like 97
  gf,8 af c ef c af |
  
  \barNumberCheck 681
  gf8 af c ef c af |
  f8 af df f df af |
  f8 af df af' df, af |
  ef8 af c gf' c, af |
  ef8 af c gf' c, af |
  d,8 af' cf f cf af |
  d,8 af' bf f' bf, af |
  % like 105
  ef8 gf bf ef bf gf |
  
  \barNumberCheck 689
  gf,8 gf' bf ef bf gf |
  af,8 f' af df af f |
  af,8 f' af df af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 f' af d af f |
  af,8 ef' gf ef' gf, ef |
  
  \barNumberCheck 697
  af,8 e' g e' g, e |
  af,8 e' g e' g, e |
  af,8 e' g e' g, e |
  af,8 f' af f' af, f |
  af,8 ef'! gf! c gf ef |
  af,8 cf f cf' f, cf |
  af8 f' af d af f |
  af,8 df! g df'! g, df |
  
  \barNumberCheck 705
  af8 ff' bf ff' bf, ff |
  af,8 ef' gf! ef' gf, ef |
  af,8 ef' gf c gf ef |
  % like 117
  \oneVoice df,4-. r af'8( f' |
  df'4) r r |
  af,,4-. r af'8( ef' |
  c'4) r r |
  df,,4-. r af'8( f' |
  
  \barNumberCheck 713
  df'4) r r |
  af,,4-. r af'8( ef' |
  c'4) r r |
  \key a \major 
  <a,, a'>4 <ds ds'>( <e e'>) |
  <e e'>2.-> |
  r4 df( e |
  <a, f'!>2 <a e'>4) |
  <a a'>4 <ds ds'>( <e e'>) |
  
  \barNumberCheck 721
  <e e'>2.-> |
  r4 df( e |
  <a, f'!>2 <a e'>4) |
  \key df \major 
  <a f'>4 r <a a'>( |
  <f' f'>4) r <a, a'>( |
  <f' f'>4) r <bf, bf'>( |
  <f' f'>4) r <bf, bf'>( |
  <f' f'>4) r <bf, bf'>( |
  
  \barNumberCheck 729
  <gf' gf'>4) r <bf, bf'>( |
  <gf' gf'>4) r <bff, bff'>( |
  <bff' bff'>4) r <af, af'>( |
  <f'' af df f>4-.) r \tuplet 3/2 { c8( df f } |
  af4) r \tuplet 3/2 { b,8( c f } 
  af4) r \tuplet 3/2 { a,8( bf! f' } |
  af!4) r r |
  <af,, af'>4-. r r |
  
  \barNumberCheck 737
  \clef treble <gf''' c f>2.~ |
  q4 <gf c ef> <gf c f> |
  <gf c ef> <gf c f> <gf c ef> |
  <f af df f>4-. r \clef bass \tuplet 3/2 { c,8( df f } |
  af4) r \tuplet 3/2 { b,8( c f } 
  af4) r \tuplet 3/2 { a,8( bf! f' } |
  af!4) r r |
  <af,, af'>4-. r r |
  
  \barNumberCheck 745
  \clef treble <gf''' c f>2.~ |
  q4 <gf c ef> <gf c f> |
  <gf c ef> <gf c f> <gf c ef> |
  \voiceTwo <gf c>2.^\strettoCresc |
  q2. |
  q2. |
  <g df'> |
  q2. |
  
  \barNumberCheck 753
  <af d>2. |
  q2. |
  <af ef'>2. |
  \clef bass \oneVoice <df,,, df'>4-. g-._\marcatoMarkup af-. |
  af4-. <gf! gf'>-. <f f'>-. |
  q4-. g( af |
  bff2 af4) |
  <df, df'>4-. g-. af-. |
  
  \barNumberCheck 761
  af4-. <gf! gf'>-. <f f'>-. |
  q4-. g( af |
  bff2 af4) |
  <df, df'>4-. g-. af-. |
  r4 <gf gf'>( <f f'>) |
  <df df'>4-. g-. af-. |
  r4 <gf gf'>( <f f'>) |
  <df df'>4-. g-. af-. |
  
  \barNumberCheck 769
  r4 <gf gf'>( <f f'>) |
  <df bff'>4-. <df af'> <df bff'> |
  <df af'>4 <df bff'> <df af'> |
  <c a'>4-. r r |
  <c g' c>4-> r r |
  <f c' f>4-> r r |
  <af! ef' af!>4-> r r|
  <df af' df>2.-> |
  
  \barNumberCheck 777
  R2. |
  <df, af' df>2.-> |
  R2. |
  \acciaccatura { <df' af' df>8 } <df,, df'>2.\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  % \override TextSpanner.Y-offset = 0.5
  \override MultiMeasureRestNumber.Y-offset = -1
  \override Hairpin.to-barline = ##f
  \override Hairpin.after-line-breaking = ##f
  \hide MultiMeasureRest
  \tag layout { s2.^\sottoVoce } \tag midi { s2.\pp } |
  s2. * 2 |
  s2.\glyphOne |
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 9
  s2 s4\pp |
  s2. * 2 |
  s2.\glyphOne |
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 17
  s2. * 5 |
  s4 s2\fz |
  \compressMMRests { R2. * 2 } |
  
  \barNumberCheck 25
  s2 s4\pp |
  s2. * 2 |
  s2.\glyphOne |
  s2.\ff |
  s2.\> |
  s4.\! s |
  s2. |
  
  \barNumberCheck 33
  s2 s4\pp |
  s2. * 2 |
  s2.\glyphOne |
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 41
  s2. * 5 |
  s4 s2\fz |
  \compressMMRests { R2. * 2 } |
  
  \barNumberCheck 49
  s2\ff s4\> |
  s2 s8 s\! |
  s2. * 2 |
  s2\p\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. |
  
  \barNumberCheck 57
  s2\ff s4\> |
  s2 s8 s\! |
  s2. * 2 |
  s2.\pp |
  s2. |
  s2.^\pocoRiten |
  s2. |
  
  \barNumberCheck 65
  s2. * 6 |
  s4. s\< |
  s2 s8 s\! |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2.\f |
  s4^\dolce s2\> |
  s4.\! s\< |
  s2 s8 s\! |
  s4. s\> |
  s2. |
  s2.\! |
  s2. |
  
  \barNumberCheck 89
  s2. |
  s2.\> |
  s2. * 3 |
  s2.\! |
  s2. * 2 |
  
  \barNumberCheck 97
  s2. * 2 |
  s4. s\< |
  s2 s8 s\! |
  s2. * 2 |
  s2.\< |
  s2. |
  
  \barNumberCheck 105
  s8 s\! s2 |
  s2.\> |
  s2 s8 s\! |
  s2. * 2 |
  s2.\cresc |
  s2. * 2 |
  
  \barNumberCheck 113
  s2. * 3 |
  s2 s8 s\! |
  s2.\ff |
  s2. * 3 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 2 |
  \compressMMRests { R2. * 2 } |
  s2 s4\p |
  s2. * 2 |
  s2.\glyphOne |
  
  \barNumberCheck 137
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. |
  s2 s4\pp |
  s2. * 2 |
  s2.\glyphOne |
  
  \barNumberCheck 145
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. * 5 |
  
  \barNumberCheck 153
  s2. |
  s4 s2\fz |
  \compressMMRests { R2. * 2 } |
  s2 s4\pp |
  s2. * 2 |
  s2.\glyphOne |
  
  \barNumberCheck 161
  s2.\ff |
  s2. * 3 |
  s2 s4\pp |
  s2. * 2 |
  s2.\glyphOne |
  
  \barNumberCheck 169
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. * 5 |
  
  \barNumberCheck 177
  s2. * 2 |
  \grace { s4\< } s2. |
  s2 s8 s\! |
  s2\ff s4\> |
  s2. |
  s4. s\! |
  s2. |
  
  \barNumberCheck 185
  s2.\p |
  s2. |
  s2\> s8 s\! |
  s2. |
  s2\ff s4\> |
  s2. * 2 |
  s2.\! |
  
  \barNumberCheck 193
  s2\pp\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. |
  s2.\> |
  s2 s8 s\! |
  s2. * 2 |
  
  \barNumberCheck 201
  s2. * 2 |
  s2.\< |
  s4. s\! |
  s2.\cresc |
  s2. * 3 |
  
  \barNumberCheck 209
  s2. * 3 |
  s2 s8 s\! |
  s2.\f |
  s4^\dolce s2\> |
  s4. s\! |
  s2. |
  
  \barNumberCheck 217
  s8 s\> s2 |
  s2 s8 s\! |
  s2.\< |
  s2 s8 s\! |
  s2 s4\> |
  s2. * 3 |
  
  \barNumberCheck 225
  s2. |
  s2 s8 s\! |
  s2. * 4 |
  s2\< s8 s\! |
  s2. |
  
  \barNumberCheck 233
  s2\> s8 s\! |
  s2. * 2 |
  s2\< s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. * 2 |
  
  \barNumberCheck 241
  s2.\cresc |
  s2. * 6 |
  s2 s8 s\! |
  
  \barNumberCheck 249
  s2.\ff |
  s2. * 7 |
  
  \barNumberCheck 257
  s2. * 6 |
  \compressMMRests { R2. * 2 } |
  
  \barNumberCheck 265
  s2.^\sottoVoceWO |
  s2. * 5 |
  s2.\< |
  s2 s8 s\! |
  
  \barNumberCheck 273
  s2.\> |
  s2 s4\! |
  s2. * 2 |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 281
  s2. * 4 |
  s2.\> |
  s2 s4\! |
  s2. * 2 |
  
  \barNumberCheck 289
  s2. * 3 |
  s2.\< |
  \grace { s8\! } s2. | 
  s2.\> |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 297
  s2. |
  s2.\glyphOne |
  s4.\pp s^\slentando |
  s2. * 5 |
  
  \barNumberCheck 305
  s2. * 2 |
  s2.\pp |
  s2. |
  s8 s^\espress s2 |
  s2. * 3 |
  
  \barNumberCheck 313
  s2. * 8 |
  
  \barNumberCheck 321
  s2. * 5 |
  s2.^\legato |
  s2. * 2 |
  
  \barNumberCheck 329
  s2. * 24 |
  
  \barNumberCheck 353
  s2. |
  s2.^\crescEdAnimato |
  s2. * 3 |
  s2.\ff |
  s2. * 2 |
  
  \barNumberCheck 361
  s2. * 4 |
  s2.\glyphOne |
  s2.\f\> |
  s2 s4\! |
  s2. |
  
  \barNumberCheck 369
  s2. |
  s2.\< |
  s2.\! |
  s2. * 3 |
  s2.\> |
  s2 s4\! |
  
  \barNumberCheck 377
  s2. * 2 |
  s2.\p |
  s2. * 5 |
  
  \barNumberCheck 385
  s2. * 2 |
  s2\p\> s8 s\! |
  s2. * 5 |
  
  \barNumberCheck 393
  s2. |
  s2.\< |
  s2.\! |
  s2 s4\> |
  s2 s4\! |
  s2. * 2 |
  s2.\glyphOne |
  
  \barNumberCheck 401
  s2.\pp |
  s2. |
  s2.^\slentando |
  s2. * 5 |
  
  \barNumberCheck 409
  s2. * 2 |
  s8 s^\espress s2 |
  s2. * 5 |
  
  \barNumberCheck 417
  s2. * 32 |
  
  \barNumberCheck 449
  s2. * 7 |
  s4. s^\crescEdAnimato |
  
  \barNumberCheck 457
  s2. * 3 |
  s2.\ff |
  s2. * 4 |
  
  \barNumberCheck 465
  s2. * 2 |
  s2.\glyphOne |
  s4 \tag layout { s2^\sempreF } \tag midi { s2\ff } |
  s2. * 4 |
  
  \barNumberCheck 473
  s2. * 8 |
  
  \barNumberCheck 481
  s2. * 8 |
  
  \barNumberCheck 489
  s2. * 3 |
  s4 s2^\agitato |
  s2. * 4 |
  
  \barNumberCheck 497
  s2. * 8 |
  
  \barNumberCheck 505
  s2. * 8 |
  
  \barNumberCheck 513
  s2. * 3 |
  s2.\ff |
  s2. * 4 |
  
  \barNumberCheck 521
  s2. * 7 |
  \override DynamicTextSpanner.style = #'none
  s4. s\cresc |
  
  \barNumberCheck 529
  s2. * 5 |
  s2 s8 s\! |
  % key of bf minor
  s2. * 2 |
  
  \barNumberCheck 537
  s2. * 3 |
  s2.\fz |
  s2. * 2 |
  s2 s4\ff |
  s2.^\sempreConFuoco |
  
  \barNumberCheck 545
  s2. * 8 |
  
  \barNumberCheck 553
  s2. * 8 |
  
  \barNumberCheck 561
  s2. * 6 |
  s4 s2\dim |
  s2.\! |
  
  \barNumberCheck 569
  s2. * 3 |
  s4 s2^\calando |
  s2. * 4 |
  
  \barNumberCheck 577
  s2.\glyphOne |
  s4 s2^\smorzando |
  s2. * 2 |
  s4 s2\pp |
  s2. |
  s2.\glyphOne |
  s2. |
  
  \barNumberCheck 585
  s2. * 3 |
  s2.\ff |
  s2. * 4 |
  
  \barNumberCheck 593
  s2. * 3 |
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. * 2 |
  
  \barNumberCheck 601
  s2. * 4 |
  s4 s2\fz |
  \compressMMRests { R2. * 2 } |
  s2 s4\pp |
  
  \barNumberCheck 609
  s2. * 3 |
  s2.\ff |
  s2.\> |
  s2 s4\! |
  s2. |
  s2 s4\pp |
  
  \barNumberCheck 617
  s2. * 3 |
  s2.\ff |
  s2. * 4 |
  
  \barNumberCheck 625
  s2. * 4 |
  s2.\< |
  s2. |
  s2 s8 s\! |
  s2.\ff |
  
  \barNumberCheck 633
  s2. * 3 |
  s2\p\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. * 2 |
  
  \barNumberCheck 641
  s2. * 3 |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. |
  % con anima
  s4.\> s\! |
  
  \barNumberCheck 649
  s2. * 5 |
  s2 s8 s\< |
  s8\! s\cresc s2\! |
  s2. |
  
  \barNumberCheck 657
  s2. * 7 |
  s2.\f |
  
  \barNumberCheck 665
  s2\>^\dolce s8 s\! |
  s2\< s8 s\! |
  s2. |
  s2.\> |
  s2 s8 s\! |
  s2 s4\< |
  s2. |
  s4\! s s\> |
  
  \barNumberCheck 673
  s2 s8 s\! |
  s2.\> |
  s2. * 2 |
  s4 s2\! |
  s2. * 3 |
  
  \barNumberCheck 681
  s2. |
  s2.\< |
  s4 s2\! |
  s2 s4\> |
  s4. s\! |
  s2.\< |
  s2 s8 s\! |
  s2.\> |
  
  \barNumberCheck 689
  s2. |
  s2.\! |
  s2. * 2 |
  s4. s\cresc |
  s2.\! |
  s2. * 2 |
  
  \barNumberCheck 697
  s2. * 8 |
  
  \barNumberCheck 705
  s2. * 3 |
  s2.\ff |
  s2. * 4 |
  
  \barNumberCheck 713
  s2. * 3 |
  s2.\ff |
  s2. |
  s2\< s4\! |
  s2\> s4\! |
  s2. |
  
  \barNumberCheck 721
  s2. |
  s2\< s4\! |
  s2\> s4\! |
  % key df major
  s4\fp s4.\< s8\! |
  \revert DynamicTextSpanner.style
  s4 s2\pocoAPocoCresc |
  s2. * 3 |
  
  \barNumberCheck 729
  s2. * 2 |
  s2 s8 s\! |
  s2\fz s4\f |
  s2. * 4 |
  
  \barNumberCheck 737
  s2.\> |
  s2.\! |
  s2. * 6 |
  
  \barNumberCheck 745
  s2.\> |
  s2.\! |
  s2. |
  s2\> s4\! |
  s2\> s4\! |
  s2\> s4\! |
  s2\> s4\! |
  s2\> s4\! |
  
  \barNumberCheck 753
  s2\> s4\! |
  s2\> s4\! |
  s2\> s4\! |
  s2\ff\> s8 s\! |
  s2. * 2 |
  s2\> s4\! |
  s4 s2\> |
  
  \barNumberCheck 761
  s2. |
  s2 s4\! |
  s2\> s4\! |
  s2. |
  s2\> s4\! |
  s2. |
  s2\> s4\! |
  s2. |
  
  \barNumberCheck 769
  s2\> s4\! |
  s2.\< |
  s2 s4\! |
  s2. * 5 |
  
  \barNumberCheck 777
  s2.\glyphOne |
  s2. |
  s2.\glyphOne |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Presto" 2. = 100
  
}

pedal = {
  s2. * 4 |
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  
  \barNumberCheck 9
  s2. * 4 |
  s2.\sd |
  s2. |
  s2 s4\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 17
  s2. |
  s2.\sd |
  s2 s4\su |
  s2. * 5 |
  
  \barNumberCheck 25
  s2. * 4 |
  s2.\sd |
  s2. |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 33
  s2. * 4 |
  s2.\sd |
  s2. |
  s2 s4\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 41
  s2. |
  s2.\sd |
  s2 s4\su |
  s2. * 5 |
  
  \barNumberCheck 49
  s2.\sd |
  s2. * 2 |
  s2.\su |
  s2\sd s8 s\su |
  s2. * 3 |
  
  \barNumberCheck 57
  s2.\sd |
  s2. * 2 
  s2.\su |
  s2. * 4 |
  
  \barNumberCheck 65
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 73
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 81
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 89
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 97
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 105
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 113
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 121
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2. * 3 |
  
  \barNumberCheck 129
  s2. |
  s2 s4\su |
  s2. * 6 |
  
  \barNumberCheck 137
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  s2. * 4 |
  
  \barNumberCheck 145
  s2.\sd |
  s2. |
  s2 s4\su |
  s2. * 2 |
  s2.\sd |
  s2 s4\su |
  s2. |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  s2. * 4 |
  
  \barNumberCheck 169
  s2.\sd |
  s2. |
  s2 s4\su |
  s2. * 2 |
  s2.\sd |
  s2 s4\su |
  s2. |
  
  \barNumberCheck 177
  s2. * 4 |
  s2.\sd |
  s2. |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 185
  s2\sd s8 s\su |
  s2. * 3 |
  s2.\sd |
  s2. |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 193
  s2. * 4 |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 201
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 209
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 217
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 225
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 233
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 241
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 249
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 257
  s2.\sd |
  s2. * 4 |
  s2 s8 s\su |
  s2. * 2 |
  
  \barNumberCheck 265
  s2. * 8 |
  
  \barNumberCheck 273
  s2. * 8 |
  
  \barNumberCheck 281
  s2.\sd |
  s2. * 2 |
  s2.\su |
  s2. * 4 |
  
  \barNumberCheck 289
  s2. * 8 |
  
  \barNumberCheck 297
  s2. * 8 |
  
  \barNumberCheck 305
  s2. |
  s2.\sd |
  s2. * 2 |
  s4 s2\su |
  s2. * 3 |
  
  \barNumberCheck 313
  s2. * 8 |
  
  \barNumberCheck 321
  s2. * 4 |
  s2\sd s4\su |
  s2\sd s8 s8\su |
  s2. |
  s2.\sd |
  
  \barNumberCheck 329
  s2.\su |
  s2.\sd |
  s4. s\su |
  s2.\sd |
  s2 s4\su |
  s2.\sd |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 337
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2.\sd |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 345
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2.\sd |
  s4. s\su |
  s2.\sd |
  
  \barNumberCheck 353
  s2 s8 s\su |
  s2.\sd |
  s4 s2\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2. * 2 |
  
  \barNumberCheck 361
  s2. * 2 |
  s2 s8 s\su |
  s2. * 5 |
  
  \barNumberCheck 369
  s2. * 8 |
  
  \barNumberCheck 377
  s2. * 6 |
  s2.\sd |
  s2. | 
  
  \barNumberCheck 385
  s2. |
  s2.\su |
  s2. * 6 |
  
  \barNumberCheck 393
  s2. * 8 |
  
  \barNumberCheck 401
  s2. * 24 |
  
  \barNumberCheck 425
  s2. * 2 |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2. |
  s2.\sd |
  s2.\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 433
  s2. |
  s2.\sd |
  s4 s2\su |
  s2.\sd |
  s2 s8 s\su |
  s2. * 2 |
  s2\sd s8 s\su |
  
  \barNumberCheck 441
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  s2\sd s8 s\su |
  
  \barNumberCheck 449
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 457
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2. * 4 |
  
  \barNumberCheck 465
  s2. |
  s2 s4\su |
  s2. |
  s2.\sd |
  s2. * 4 |
  
  \barNumberCheck 473
  s2 s8 s\su |
  s2. * 2 |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  
  \barNumberCheck 481
  s2 s8 s\su |
  s2. * 2 |
  s2.\sd |
  s4. s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  
  \barNumberCheck 489
  s4. s\su |
  s2. * 7 |
  
  \barNumberCheck 497
  s2. * 8 |
  
  \barNumberCheck 505
  s2. * 8 |
  
  \barNumberCheck 513
  s2. * 3 |
  s2.\sd |
  s2. * 2 |
  s4 s2\su |
  s2.\sd |
  
  \barNumberCheck 521
  s2.\su |
  s2. * 2 |
  s2.\sd |
  s2. * 2 |
  s2 s4\su |
  s2.\sd |
  
  \barNumberCheck 529
  s8 s\su s2 |
  s2. * 2 |
  s2.\sd |
  s2 s4\su |
  s2. |
  % key of bf minor
  s2. |
  s2.\sd |
  
  \barNumberCheck 537
  s2. |
  s8 s\su s2 |
  s2. |
  s2.\sd |
  s2. * 2 |
  s2.\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 545
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 553
  s2. * 2 |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. * 3 |
  
  \barNumberCheck 561
  s2. |
  s4\sd s2\su |
  s2. |
  s4\sd s2\su |
  s2. |
  s4\sd s2\su |
  s2. |
  s4\sd s2\su |
  
  \barNumberCheck 569
  s2. |
  s4\sd s2\su |
  s2. * 6 |
  
  \barNumberCheck 577
  s2. * 8 |
  
  \barNumberCheck 585
  s2. * 3 |
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 593
  s2. * 3 |
  s2.\sd |
  s2. * 2 |
  s2 s8 s\su |
  s2. |
  
  \barNumberCheck 601
  s2.\sd |
  s2 s8 s\su |
  s2. * 6 |
  
  \barNumberCheck 609
  s2. * 3 |
  s2.\sd |
  s2. * 2 |
  s2.\su |
  s2. |
  
  \barNumberCheck 617
  s2. * 3 |
  s2.\sd |
  s2. |
  s2 s4\su |
  s2. * 2 |
  
  \barNumberCheck 625
  s2.\sd |
  s8 s\su s2 |
  s2. * 3 |
  \grace { s4\sd } s2. |
  s2 s8. s16\su |
  s2. |
  
  \barNumberCheck 633
  s2. * 3 |
  s2\sd s8 s\su |
  s2. * 3 |
  s2.\sd |
  
  \barNumberCheck 641
  s2. |
  s2 s8 s\su |
  s2. * 5 |
  % con anima
  s2. |
  
  \barNumberCheck 649
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 657
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  
  \barNumberCheck 665
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 673
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  
  \barNumberCheck 681
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 689
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 697
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 705
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  
  \barNumberCheck 713
  s2 s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2. * 5 |
  
  \barNumberCheck 721
  s2. * 3 |
  s2 s4\sd |
  s2. |
  s4\su s2\sd |
  s4\su s2\sd |
  s4\su s2\sd |
    
  \barNumberCheck 729
  s4\su s2\sd |
  s4\su s2\sd |
  s4 s\su s\sd |
  s4 s2\su |
  s2. * 3 |
  s2.\sd |
  
  \barNumberCheck 737
  s2. * 2 |
  s2 s4\su |
  s2. * 4 |
  s2.\sd |
  
  \barNumberCheck 745
  s2. * 2 |
  s2 s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 753
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s4.\sd s\su |
  s2. * 3 |
  s4.\sd s\su |
  
  \barNumberCheck 761
  s2. * 2 |
  s2\sd s4\su |
  s2. |
  s4 s\sd s\su |
  s2. |
  s4 s\sd s\su |
  s2. |
  
  \barNumberCheck 769
  s4 s\sd s\su |
  s2. * 2 |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2\sd s4\su |
  s2.\sd |
  
  \barNumberCheck 777
  s2. * 3 |
  s2 s4\su |
}

forceBreaks = {
  % page 1
  % \repeat unfold 10 { s2.\noBreak } s2.\break\noPageBreak
}