\version "2.18.2"

\header { 
  tagline = ""  % removed 

} 

\header {
  title = "Eternity Memory of Lightwaves"
  subtitle = "Long Version"
  composer = "Noriko Matsueda, Takahito Eguchi"
}

global = {
  \key bes \major
  \numericTimeSignature
  \time 6/8
  \tempo "Free Tempo"
}

right = \relative c'' {
  \global
  <ees f bes>4. <d e a>4. |
  <bes c f>2. ~ <bes c f>2. |
  <des ees aes>4. <c d g>4. |
  <aes bes ees>2. |
  \break
  r4. f8 (c' f)
  c'8 (f c' ~ c4.)
  <ces,, des ges>4. <b ces f> |
  %20
}

left = \relative c {
  \global
  \clef treble
  <ees' bes'>4. <d a'>4. |
  <bes f>2. ~ <bes f>2. |
  <des aes'>4. <c g'>4.
  <aes ees>2. \break
  \clef bass
  aes,8 (ees' c') r4. |
  r2. |
  <ces ges'>4. <bes f'>
  %20
}

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
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=60
  }
}
