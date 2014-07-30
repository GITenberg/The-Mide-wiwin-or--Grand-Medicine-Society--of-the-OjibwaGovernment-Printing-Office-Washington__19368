\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  d8 d d d d4 | \acciaccatura d16 c8 bf \acciaccatura bf16 g8 g g4 |
  \acciaccatura a16 g8 g g g g4 | \acciaccatura a16 g8 g g g g4 |
  d'8 d \acciaccatura c16 bf8 bf g4 | \acciaccatura a16 g8 g g g g4 |
  \acciaccatura a16 g8 g g g g4 | \acciaccatura a16 g8 g g g g4 |
  \acciaccatura ef'16 d8 d d d \acciaccatura d16 c8 bf |
  \acciaccatura bf16 g8 g g g g4 | \acciaccatura bf16 g8 g g g g4 |
  \acciaccatura a16 g8 g g g g4 | \acciaccatura a16 g2. |
  \acciaccatura a16 g2. ||
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
