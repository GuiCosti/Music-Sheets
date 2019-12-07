\version "2.18.2"

\header { 
  tagline = ""  % removed 

} 

\header {
  title = "Musette"
  subtitle = "Do livro de Anna Magdalena Bach"
  composer = "J. S. Bach"
}

global = {
  \key d \major
  \numericTimeSignature
  \time 2/4
  \tempo "Adagio"
}

flute = \relative c'' {
  \global
  \bar ".|:"
  a'4\mf( g16 fis e d) |
  a'4( g16 fis e d) |
  fis,16( g\mp a8)-. g-.\< fis-. |
  e-.\! a\mf( fis\>)-. d-.\! |
  a''4\mf( g16 fis e d) |
  a'4( g16 fis e d) |
  fis,16( g\mp a8)-. g-.\< fis-. |
  e-.\! a\mf( d,4)-. \bar ":|." |
  cis'16( d e8)-. cis16( d e8)-. |
  a e e4 |
  %10
  a8 e a e |
  d16 cis b a b8 e, |
  e' dis e, d'~ |
  d cis a' gis |
  e dis e, d'~ |
  d cis a' gis |
  e16 dis cis dis e dis cis dis |
  e8 gis a d |
  cis16 d e8 a, d, |
  cis16 d e8 a,4 \bar "|." |
  %20
}

right = \relative c'' {
  \global
  a'4^5\mf( g16 fis e d) |
  a'4( g16 fis e d) |
  fis,16^3( g\mp a8)-. g-.\< fis-. |
  e-.\! a\mf( fis\>)-. d-.\! |
  a''4^5\mf( g16 fis e d) |
  a'4( g16 fis e d) |
  fis,16^3( g\mp a8)-. g-.\< fis-. |
  e-.\! a\mf( d,4)-. |
  cis'16^2 d e8 cis16 d e8 |
  a^5 e^2 e4 |
  %10
  a8 e a e |
  d16^4 cis b a b8 e,^1 |
  e'^4 dis^3 e,^1 d'^3~ |
  d cis^2 a'^4 gis^3 |
  e^4 dis^3 e,^1 d'^3~ |
  d cis^2 a'^4 gis^3 |
  e16^4 dis cis dis e dis cis dis |
  e8 gis,^2 a^1 d^4 |
  cis16 d e8 a, d,^4 |
  cis16 d e8 a,4 |
  %20
}

left = \relative c {
  \global
  d,8-. d'-. d,-. d'-.|
  d,-. d'-. d,-. d'-. |
  fis16( g a8)-. g-.  fis-. |
  e-. a( fis)-.  d-. |
  d,8-. d'-. d,-. d'-. |
  d,-. d'-. d,-. d'-. |
  fis16( g a8)-. g-.  fis-. |
  e-. a( d,4)-. |
  a8 a' a, a' |
  a, a' a, a' |
  %10
  a, a' a, a' |
  a, a' e, e' |
  e, e' e, e' |
  e, e' e, e' |
  e, e' e, e' |
  e, e' e, e' |
  e, e' e, e' |
  e, e' cis d |
  e4 a,8 d |
  cis16 d e8 a,4 |
  %20
}

flutePart = \new Staff \with {
  instrumentName = "Flauta"
  midiInstrument = "flute"
} \flute

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \flutePart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
