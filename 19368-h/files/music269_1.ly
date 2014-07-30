\version "2.8.6" 
\include "english.ly"


melody = \relative ef''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 %printed 6/8 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  r2 r8 \acciaccatura ef16 d8 |
  \times 2/3 {d8 d d} \acciaccatura ef16 d4. d8 |
  \acciaccatura d16 \times 2/3 {c8 c c} c4. c8 |
  \acciaccatura d16 \times 2/3 {c8 c c} \acciaccatura d16 c4. \acciaccatura c16 bf8 |
  \times 2/3 {bf8 g g} \acciaccatura a16 g4. g8 |
  \times 2/3 {g8 g g} \acciaccatura a16 g4. g8 |
  d'8 d d d \acciaccatura d16 c4 | \acciaccatura d16 c8 bf g4. g8 |
  \acciaccatura a16 \times 2/3 {g8 g g} g4. g8 |
  \times 2/3 {a8 g g} g4. g8 | \acciaccatura a16 \times 2/3 {g8 g g} g2 |
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
