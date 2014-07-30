\version "2.8.6" 
\include "english.ly"


melody = \relative c''
 { 
  \clef treble 
  \key g \major 
  \time 3/4 %printed 6/8 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \acciaccatura c16 b8 b b b b b | \acciaccatura c16 b2.\trill |
  \acciaccatura c16 b2.\trill | \acciaccatura c16 b2.\trill |
  \acciaccatura c16 b2.\trill | b8 b \acciaccatura b16 a8 a a g |
  \acciaccatura g16 e2.\trill | \acciaccatura fs16 e2.\trill |
  \acciaccatura fs16 e2.\trill | \acciaccatura fs16 e2.\trill |
  \acciaccatura b'16 a8 a a a a a | \acciaccatura a16 g8 e e2 |
  \acciaccatura g16 e8 e d2 | \acciaccatura fs16 e2.\trill |
  \acciaccatura fs16 e2.\trill | \acciaccatura fs16 e2.\trill |
  \acciaccatura g16 e8 e e e e e | \acciaccatura fs16 e2.\trill |
  \acciaccatura fs16 e2.\trill | \acciaccatura fs16 e2.\trill |
  \acciaccatura fs16 e2.\trill ||
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
