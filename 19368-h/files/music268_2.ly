\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 %printed 6/8 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  d8 d d4. d8 |
  \acciaccatura d16 c8 bf \acciaccatura bf16 g8 g \acciaccatura a16 g4 |
  \acciaccatura d'16 c8 c c4. c8 |
  \acciaccatura c16 bf8 g \acciaccatura a16 g8 g g4 :|
  \acciaccatura ef'16 d8 d d2 | \acciaccatura d16 c8 bf g4 g |
  \acciaccatura d'16 c8 c c c \acciaccatura c16 bf8 g |
  g2 \acciaccatura a16 g8 g | \acciaccatura a16 g2 g4 |
  \acciaccatura a16 g2. | \acciaccatura a16 g2. ||

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
