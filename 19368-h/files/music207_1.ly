\version "2.8.6" 
\include "english.ly"


melody = \relative e''
 { 
  \clef treble
  \key c \major
  \time 4/4
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  e4 e d8 c c4 | \acciaccatura d16 c4 a a \acciaccatura d16 c8 a |
  \acciaccatura a16 g4 g \acciaccatura a16 g8 f f4 |
  \acciaccatura g16 f8 f f f \acciaccatura g16 f2 |
  \acciaccatura d'16 c4 c c8 a a4 |
  \acciaccatura d16 c8 a a g g2 | \acciaccatura a16 g4 g g8 f f4 |
  \acciaccatura g16 f8 f f f f2 | e'4 e8 c c c4. |
  \acciaccatura d16 c8 a g f f2 |
} 

\score { 
\new Staff \melody 
\layout {
  \context {
    \Score
    \remove Bar_number_engraver
} } 
\midi { \tempo 4=45 } 
}
