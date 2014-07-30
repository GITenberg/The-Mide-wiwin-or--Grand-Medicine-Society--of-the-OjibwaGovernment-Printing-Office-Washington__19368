\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

 d8 d c c \acciaccatura d16 c8 c | \acciaccatura d16 c2. | c8 c bf g g g | \acciaccatura bf16 g2. | bf8 g g g g g | \acciaccatura a16 g2. | \acciaccatura a16 g8 g g g g g | \acciaccatura a16 g2.

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
