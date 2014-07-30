\version "2.8.6" 
\include "english.ly"


melody = \relative ef''
 { 
  \clef treble 
  \key ef \major 
  \time 3/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  ef8 ef ef c c4 | c8 bf bf af af4 | af af af | ef'8 ef ef ef c4 |
  c8 c c ef c4 | c c c | c c c8 bf | bf4 bf bf | bf bf c8 c |
  bf bf af4 af8 af | af af c af4. | f8 f af f ef4 | ef8 ef ef ef ef4 |
  ef ef ef | \acciaccatura c'16 af8 f ef ef ef4 | ef8 ef ef ef ef4 |
  ef ef ef | \acciaccatura c'16 af8 f ef c c4 | c c c ||
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
