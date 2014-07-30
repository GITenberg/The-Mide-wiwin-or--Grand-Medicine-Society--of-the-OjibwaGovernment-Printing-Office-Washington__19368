\version "2.8.6" 
\include "english.ly"


melody = \relative f''
 { 
  \clef treble 
  \key ef \major 
  \time 4/4 
% \set Staff.midiInstrument = "recorder" 
% \set Staff.midiInstrument = "taiko drum" 

  \cadenzaOn \times 2/3 {f8 f f} d f f2 f  \times 2/3 {f8 f f} d f d2 d
  \acciaccatura d8 bf8 bf bf f bf f f f2 \bar ""
  \acciaccatura d'8 bf8 bf bf g f \acciaccatura f d f2 
  \acciaccatura d'8 bf8 bf bf g f \acciaccatura f d d2 
  \times 2/3 {f'8 f f} ef g af2 af  \bar ""
  \times 2/3 {f8 f f} d f d2 d 
  \acciaccatura d8 bf8 bf bf g f d2 d 
  \acciaccatura c'8 bf f f d f d d bf bf d2  \bar ""
  \acciaccatura d8 bf bf bf f \acciaccatura bf8 f f2 f \bar "|"
  bf'2 f,16 \bar "|" \acciaccatura c''8 bf f f f d d f f 
    d d c c c bf2 bf bf
} 

\score { 
\new Staff \melody 
\layout {
  \context {
    \Score
    \remove Bar_number_engraver
} } 
\midi { \tempo 4=30 } 
}
