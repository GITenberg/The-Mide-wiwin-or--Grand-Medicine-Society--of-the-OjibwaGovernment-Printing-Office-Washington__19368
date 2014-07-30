\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 4/4
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \times 2/3 {d8 c c} \times 2/3 {c c c} \acciaccatura d16 c2 |
  \times 2/3 {c8 bf bf} \times 2/3 {bf bf g} \acciaccatura bf16 g2 |
  \times 2/3 {a8 g g} \times 2/3 {g g g} \acciaccatura bf16 g2 |
  \acciaccatura a16 \times 2/3 {g8 g g} \times 2/3 {g g g} \acciaccatura bf16 g2 |
  \acciaccatura ef'16 \times 2/3 {d8 d d} \times 2/3 {d d d} \acciaccatura ef16 d2 |
  \acciaccatura d16 \times 2/3 {c8 bf g} \times 2/3 {g g g} \acciaccatura a16 g2 |
  \times 2/3 {c8 bf bf} \times 2/3 {bf bf g} \acciaccatura a16 g2 |
  \acciaccatura bf16 \times 2/3 {g8 g g} \times 2/3 {g g g} \acciaccatura a16 g2 |
  \times 2/3 {bf8 g g} \times 2/3 {g g g} \acciaccatura a16 g2 
} 

\score { 
\new Staff \melody 
\layout {
  \context {
    \Score
    \remove Bar_number_engraver
} } 
\midi { \tempo 4=15 } 
}
