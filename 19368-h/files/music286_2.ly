\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key g \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \times 2/3 {d8 d d} e4 d8 d | \times 2/3 {d b b} a4 g8 g |
  \times 2/3 {g e e} e4 e8 e | \times 2/3 {g e e} \acciaccatura fs16 e2 |
  \acciaccatura fs16 \times 2/3 {e8 e e} e2
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
