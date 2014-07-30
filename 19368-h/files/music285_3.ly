\version "2.8.6" 
\include "english.ly"


melody = \relative d''
 { 
  \clef treble 
  \key g \major 
  \time 3/4 %printed 6/8
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  d4 d b8 d | d4 d b8 d | b4 d8 b b4 | g g b8 g | e g g4 r4 |
  b8 g b g g4 | g d e8 d | b d d4 r4 | d8 d d4 d | b8 d d4 r4
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
