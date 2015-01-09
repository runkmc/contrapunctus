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
	\override Stem.length = #0
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

top = \new Voice \relative c' {
\override TextScript.outside-staff-padding = #1
  \set Score.timing = ##f
  \clef alto

c1 d f e f g a g e d c
}

\score {
	\new Staff << \global \top >>

}
