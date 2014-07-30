\version "2.8.6" 
\include "english.ly"


melody = \relative cs''
 { 
  \clef treble 
  \key a \major 
  \time 4/4
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  cs8 cs \times 2/3 {cs cs cs} \acciaccatura d16 cs2 |
  cs8 a \times 2/3 {a a a} \acciaccatura b16 a2 |
  cs8 a \times 2/3 {a gs gs} \acciaccatura a16 gs2 |
  a8 fs \times 2/3 {fs fs fs} \acciaccatura gs16 fs2 |
  cs'8 b \times 2/3 {b b b} \acciaccatura cs16 b2 |
  a8 fs \times 2/3 {fs fs fs} \acciaccatura gs16 fs2 |
  gs8 fs \times 2/3 {fs fs fs} \acciaccatura gs16 fs2 |
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
