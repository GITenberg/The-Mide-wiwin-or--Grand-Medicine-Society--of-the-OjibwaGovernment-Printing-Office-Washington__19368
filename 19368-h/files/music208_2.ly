\version "2.8.6" 
\include "english.ly"


melody = \relative c''
 {
  \clef treble
  \key af \major
  \time 3/4
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \acciaccatura df16 c8 c c c c c | c2. | \acciaccatura df16 c2. |
  \acciaccatura df16 c2. | \acciaccatura c16 bf8 af f f f4 |
  \acciaccatura af16 f8 f f f f f |
  \acciaccatura g16 f2. | \acciaccatura g16 f2. | \acciaccatura g16 f2. |
  c'8 bf bf bf bf4 | bf8 af \acciaccatura bf16 af8 f \acciaccatura g16 f4 |
  bf8 af8 f2 |
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
