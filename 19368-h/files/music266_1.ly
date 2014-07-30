\version "2.8.6" 
\include "english.ly"


melody = \relative ef''
 { 
  \clef treble 
  \key bf \major 
  \time 4/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  r2 r8 \acciaccatura ef16 d8 d c | \acciaccatura d16 c2~ c8 c c bf |
  \acciaccatura bf16 g2~ g8 g g g \acciaccatura a16 g2~ g8 g g f |
  \acciaccatura f16 d2~ d8 d d d \acciaccatura ef16 d2~ d8 d d d |
  \acciaccatura ef16 d2 r4 \acciaccatura ef'16 d8 d |
  \acciaccatura d16 c2~ c8 c c bf | g g g g g \acciaccatura a16 g8 g f |
  \acciaccatura f16 d2~ d8 d d d | \acciaccatura ef16 d2~ d8 d d d |
  \acciaccatura f16 d2~ d8 d d d | \acciaccatura ef16 d2~ d8 d d d |
  \acciaccatura g16 d1

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
