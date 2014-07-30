\version "2.8.6" 
\include "english.ly"

melody = \relative e''
 { 
  \clef treble
  \key g \major
  \time 3/4
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

   e8 e e d d4 | \acciaccatura e16 d8 c \acciaccatura c16 a2 |
  \acciaccatura b16 a8 a a a a4 |
  \acciaccatura b16 a8 g \acciaccatura g16 e2 |
  \acciaccatura g16 e8 e e e e4 | \acciaccatura g16 e8 e g e e4 |
  \acciaccatura g16 e8 e e e e4 | \acciaccatura a16 g8 e e2 |
  \acciaccatura a16 g8 g g e e4 | \acciaccatura fs16 e8 e e2 ||
} 

\score { 
\new Staff \melody 
\layout {
  \context {
    \Score
    \remove Bar_number_engraver
} } 
\midi { \tempo 4=45} 
}
