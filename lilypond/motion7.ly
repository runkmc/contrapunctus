\version "2.18.2"
#(set-global-staff-size 18)
\pointAndClickOff
\paper{
  between-system-space = 2.4\cm
}
\layout {
\context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #24
  }
  \context {
  	\Voice
	\consists "Horizontal_bracket_engraver"
	}
}

\header { 
  tagline = "" 
} 
 
global= {
  \time 4/4
  \key c \major
        \once \override Staff.TimeSignature #'stencil = ##f 
}

top = \new Voice \relative c {
\override TextScript.outside-staff-padding = #1.6
  \set Score.timing = ##f
  \clef bass

<c g'>1 <d f> \bar ";" <d d'> <e b'> \bar ";" <a, f'> <c e> \bar ";" <b d> <a e'> \bar ";"  <f' a> <d b'> \bar ";" <d a'> <c c'>

}

\score {
	\new Staff << \global \top >>

}
