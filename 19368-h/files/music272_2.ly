\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  c8 bf bf bf bf4 | \acciaccatura c16 bf2. | \acciaccatura c16 bf2. |
  bf8 g g g g4 |\acciaccatura a16 g2. | \acciaccatura a16 g2. |
  a8 g g g g4 | \acciaccatura a16 g2. | \acciaccatura a16 g2. |
  \acciaccatura c16 bf8 g g g g4 | \acciaccatura a16 g2. |
  \acciaccatura a16 g2. | d'8 c c c c4 | c8 bf bf g g4 |
  \acciaccatura a16 g2. | \acciaccatura a16 g2.

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
