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

e1_"8" e_"6" d_"6" g_"10" f_"6" e_"6" d_"3" c_"3" e_"6" d_"6" e_"8"
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
