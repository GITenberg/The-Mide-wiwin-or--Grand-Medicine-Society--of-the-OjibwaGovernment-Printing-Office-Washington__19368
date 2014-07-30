\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
\clef treble 
\key g \major 
\time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  d8 b b b b b | \acciaccatura c16 b2.\trill |
  \acciaccatura c16 b2.\trill |
  d8 b b a a a | \acciaccatura b16 a2.\trill |
  \acciaccatura b16 a2.\trill |
  a8 g g g g g | \acciaccatura a16 g2.\trill |
  \acciaccatura a16 g2.\trill |
  g8 e e e e e | \acciaccatura g16 e2.\trill |
  \acciaccatura g16 e2.\trill |
  d'8 b b b b b | \acciaccatura c16 c8 c b2\trill |
  \acciaccatura b16 e,8 e e2\trill | \acciaccatura fs16 e2.\trill |
  \acciaccatura fs16 e2.\trill 
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
