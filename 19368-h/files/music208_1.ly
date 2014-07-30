\version "2.8.6" 
\include "english.ly"


melody = \relative c''
 { 
  \clef treble 
  \key af \major 
  \time 3/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \times 2/3 {c8 c c} c4 c | \acciaccatura c16 bf8 af f f f4 |
  \acciaccatura af16 \times 2/3 {f8 f f} f4 f |
  \acciaccatura g16 f8 f f f f4 |
  \acciaccatura c'16 \times 2/3 {bf8 bf bf} bf4 bf |
  \acciaccatura bf16 \times 2/3 {af8 f f} f4 f |
  \acciaccatura af16 \times 2/3 {f8 f f} f4 f |
  \acciaccatura g16 f8 f f f \acciaccatura g16 f4 ||
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
