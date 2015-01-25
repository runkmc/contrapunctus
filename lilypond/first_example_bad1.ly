\version "2.18.2"
#(set-global-staff-size 18)
\pointAndClickOff
\paper{
	between-system-space = 2.4\cm
	indent=0\mm
	line-width=120\mm
	oddFooterMarkup=##f
	oddHeaderMarkup=##f
	bookTitleMarkup = ##f
	scoreTitleMarkup = ##f
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

top = \new Voice \relative c'' {
\override TextScript.outside-staff-padding = #1
  \set Score.timing = ##f
  \clef treble

c1_"8"^"(1)" b_"6"^"(2)" d_"6"^"(3)" c_"6"^"(4)" c_"5"^"(5)" d_"5"^"(6)" c_"3"^"(7)" b_"3"^"(8)" a_"4"^"(9)" b_"6"^"(10)" c_"8"^"(11)"
}

cantus = \new Voice \relative c' {
\override TextScript.outside-staff-padding = #1
  \set Score.timing = ##f
  \clef alto

c1 d f e f g a g e d c
}

\score {
\new StaffGroup { <<
\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
	\new Staff << \global \top >>
	\new Staff << \global \cantus >>
	>> }
}
