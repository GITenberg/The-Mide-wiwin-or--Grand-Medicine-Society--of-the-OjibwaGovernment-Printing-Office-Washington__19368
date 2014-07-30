\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key g \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  d8 d d d d d | \acciaccatura e16 d2. | d8 d d c c c |
  \acciaccatura d16 c2. | \acciaccatura c16 b8 g g g g g |
  \acciaccatura a16 g2. | \acciaccatura d'16 c8 c c c b g |
  \acciaccatura a16 g2. | \acciaccatura a16 g8 g g g g g |
  \acciaccatura a16 g2. | \acciaccatura e'16 d8 d d d d d |
  \acciaccatura e16 d2. | \acciaccatura d16 c8 c b g g g |
  \acciaccatura a16 g2. | \acciaccatura a16 g8 g g g g g |
  \acciaccatura a16 g2.
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
