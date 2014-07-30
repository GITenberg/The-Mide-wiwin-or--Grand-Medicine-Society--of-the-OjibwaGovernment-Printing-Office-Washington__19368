\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key a \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \acciaccatura d16 cs8 cs b b b b | \acciaccatura cs16 b2. |
  \acciaccatura cs16 b8 a a fs fs fs | \acciaccatura gs16 fs2. |
  \acciaccatura cs'16 b8 b b b b b | \acciaccatura cs16 b2. |
  a8 a a a a fs | \acciaccatura gs16 fs2. |
  \acciaccatura cs'16 b8 b b b b b | \acciaccatura cs16 b2. |
  \acciaccatura b16 a8 fs fs fs fs fs | \acciaccatura gs16 fs2. ||
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
