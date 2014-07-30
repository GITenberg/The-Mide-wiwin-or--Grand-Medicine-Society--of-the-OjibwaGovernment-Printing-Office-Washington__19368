\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key g \major 
  \time 4/4
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \times 2/3 {d8 b b} \times 2/3 {b8 b b} \acciaccatura c16 b2 |
  \times 2/3 {b8 a a} \times 2/3 {g8 e e} \acciaccatura fs16 e2 |
  \times 2/3 {b'8 a a} \times 2/3 {a8 a a} \acciaccatura b16 a2 |
  \times 2/3 {g8 e e} \times 2/3 {e8 e e} \acciaccatura fs16 e2 |
  \acciaccatura g16 e1 | \acciaccatura g16 e1 | \acciaccatura g16 e1
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
