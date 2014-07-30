\version "2.8.6" 
\include "english.ly"


melody = \relative ef''
 { 
  \clef treble 
  \key a \major 
  \time 6/8 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  cs8 cs cs \acciaccatura d16 cs4 b16 b |
  b8 a a \acciaccatura b16 a4 fs16 fs |
  a8 fs fs \acciaccatura gs16 fs4 e16 cs |
  cs'8 cs cs \acciaccatura cs16 b4 cs16 b |
  b8 b b \acciaccatura cs16 b4 a16 fs |
  a8 fs fs \acciaccatura gs16 fs4 e16 cs |
  r8 cs8 cs2 | \acciaccatura e'16 cs,2. |
  \acciaccatura e'16 cs,2. | \acciaccatura e'16 cs,2. | 
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
