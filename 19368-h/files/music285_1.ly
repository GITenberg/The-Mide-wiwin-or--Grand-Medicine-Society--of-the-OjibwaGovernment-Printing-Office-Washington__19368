\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key a \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  cs8 cs cs cs \times 2/3 {cs d cs} |
  \acciaccatura cs16 b8 b b b \times 2/3 {b cs b} |
  \acciaccatura b16 a8 fs fs fs \times 2/3 {fs gs fs} |
  \acciaccatura a16 fs2. |
  \acciaccatura cs'16 b8 b b b \times 2/3 {b cs b} |
  \acciaccatura b16 a8 fs fs fs \times 2/3 {fs gs fs} |
  \acciaccatura a16 fs2. 

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
