\version "2.8.6" 
\include "english.ly"


melody = \relative cs''
 { 
  \clef treble 
  \key a \major 
  \time 4/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  cs4 cs cs8 cs cs4 | cs cs cs8 d cs4 | b b b8 cs b4 |
  \acciaccatura gs16 fs4 fs fs8 gs fs4 |
  \acciaccatura e16 cs4 cs cs8 d cs4 | cs cs cs8 cs cs4 |
  cs' cs cs8 cs cs4 | \acciaccatura d16 cs4 cs cs8 cs cs4 |
  b b a8 fs fs4 | e cs cs8 cs cs4 | cs cs cs8 cs cs4 | cs2. r4 |
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
