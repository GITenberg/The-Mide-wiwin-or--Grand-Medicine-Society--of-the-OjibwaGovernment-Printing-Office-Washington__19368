\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key bf \major 
  \time 3/4 %printed 6/8 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \times 2/3 {d8 c c} c c c c | \acciaccatura d16 bf2.\trill |
  \times 2/3 {c8 bf bf} bf bf bf bf | \acciaccatura c16 bf2.\trill |
  \times 2/3 {bf8 g g} g g g g | \acciaccatura bf16 g2.\trill |
  \times 2/3 {g8 d d} d d d d | \acciaccatura ef16 d2.\trill |
  \acciaccatura ef'16 d8 d d d d d | \acciaccatura ef16 d2.\trill |
  \acciaccatura ef16 d8 c c c c4 \acciaccatura bf16 \times 2/3 {g8 g g} g g f d |
  \acciaccatura f16 d2.\trill | \acciaccatura f16 d2.\trill |
  \acciaccatura f16 d2.\trill ||  } 

\score { 
\new Staff \melody 
\layout {
  \context {
    \Score
    \remove Bar_number_engraver
} } 
\midi { \tempo 4=45 } 
}
