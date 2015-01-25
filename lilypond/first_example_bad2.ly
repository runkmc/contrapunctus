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

e1_"8"^"(1)" b_"3"^"(2)" f'_"8"^"(3)" b,_"5"^"(4)" f'_"6"^"(5)" e_"6"^"(6)" f_"5"^"(7)" e_"5"^"(8)" b_"3"^"(9)" d_"6"^"(10)" e_"8"^"(11)"
}

cantus = \new Voice \relative c' {
\override TextScript.outside-staff-padding = #1
  \set Score.timing = ##f
  \clef alto

e1 g f e a g b a g f e
}

\score {
\new StaffGroup { <<
\set StaffGroup.systemStartDelimiter = #'SystemStartSquare
	\new Staff << \global \top >>
	\new Staff << \global \cantus >>
	>> }
}
