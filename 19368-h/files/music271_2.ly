\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

\times 2/3 {d8 bf bf} \times 2/3 {bf8 bf bf} \times 2/3 {bf8 bf bf} | \acciaccatura c16 bf2. | \acciaccatura d16 \times 2/3 {c8 bf bf}  \times 2/3 {bf8 bf bf}  \times 2/3 {bf8 bf bf} | \acciaccatura bf16 g2. | \times 2/3 {bf8 g g} \times 2/3 {g8 g g} \times 2/3 {g8 g g} | \acciaccatura bf16 g2. 

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
