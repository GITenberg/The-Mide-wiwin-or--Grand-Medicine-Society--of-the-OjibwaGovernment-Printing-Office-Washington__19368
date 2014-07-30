\version "2.8.6" 
\include "english.ly"


melody = \relative ef''
 { 
  \clef treble 
  \key bf \major 
  \time 4/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  r2 \acciaccatura ef16 d8 d \times 2/3 {d d d} |
  \acciaccatura ef16 d2 \acciaccatura d16 c8 bf \acciaccatura bf16 \times 2/3 {g8 g g} |
  \acciaccatura a16 g2 \acciaccatura a16 g8 g \times 2/3 {g g g} |
  \acciaccatura a16 g2 \acciaccatura c16 bf8 bf \acciaccatura bf16 \times 2/3 {g8 g g} |
  \acciaccatura a16 g2 \acciaccatura a16 g8 g \times 2/3 {g8 g g} |
  \acciaccatura a16 g1 | r2 r4 \acciaccatura ef'16 d8 d | d2. d8 d |
  \acciaccatura d16 c8 bf g r8 \acciaccatura a16 g8 g \times 2/3 {g8 g g} |
  \acciaccatura a16 g2 g8 g \times 2/3 {g8 g g} |
  \acciaccatura bf16 g2 \acciaccatura c16 bf8 bf \acciaccatura bf16 \times 2/3 {g8 g g} |
  \acciaccatura a16 g2 g8 g \times 2/3 {g8 g g} g1
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
