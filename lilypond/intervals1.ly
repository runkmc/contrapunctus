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
\override TextScript.outside-staff-padding = #1.6
  \set Score.timing = ##f
  \clef treble
  \override Staff.Clef.color = #white
  \override Staff.Clef.layer = #-1

<d d>1_"1" <d e>_"2" <d f>_"3" <d g>_"4" <d a'>_"5" <d b'>_"6" <d c'>_"7" <d d'>_"8" <d e'>_"9" <d f'>_"10" <d g'>_"11" <d a''>_"12"
}

\score {
	\new Staff << \global \top >>

}
