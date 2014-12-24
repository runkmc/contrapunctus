#lang pollen

◊header['id:"page-header"]{
	◊page-title{Motion}
}
◊section['class:"main-body"]{
	◊section-title{Motion in a Single Part}
	◊p{Take a look at the following example:}
	◊img['src:"lilypond/motion1.svg"]
	◊p{This short example features the three types of melodic motion 
	that we'll be discussing: ◊em{steps, skips,} and ◊em{leaps.}}
	◊p{A ◊em{step} is when a melody moves by the interval of a second. Here is
	the same example as before, but now with the steps all marked:}
	◊img['src:"lilypond/motion2.svg"]
	◊p{Skips are melodic movement by a third. This happens twice in the
	example; I've marked them below.}
	◊img['src:"lilypond/motion3.svg"]
	◊p{There is exactly one leap in the example below. A leap is movement by
	an interval of a fourth or more. This one is a leap of a fifth.}
	◊img['src:"lilypond/motion4.svg"]
}
◊main-section{
	◊section-title{Motion Between Two Parts}
	◊p{Movement within a single part is easy enough to describe, but we will
	also need a way to describe the different types of motion that can occur
	between two parts. In other words, motion in a single part could also be
	called ◊em{horizontal motion.} Now, we'll be discussing ◊em{vertical
	motion.}}
	◊p{There are essentially four different types of motion that can occur
	between two parts moving together. These four types are ◊em{parallel,
	similar, contrary, } and ◊em{oblique.}}
	◊p{◊em{Parallel} motion occurs when two voices move the same interval in
	the same direction. Here are some examples of parallel motion:}
	◊img['src:"lilypond/motion5.svg"]
	◊p{◊em{Similar} motion occurs when two voices move in the same direction,
	but at different intervals. For example, one voice might ascend by a step
	while the second voice ascends by a skip. Examples are below:}
	◊img['src:"lilypond/motion6.svg"]
	◊p{◊em{Contrary} motion describes two voices moving in opposite directions.
	It doesn't matter if the voices are moving by step, skip, or leap. If they
	are moving in opposite directions, their motion is contrary like these
	examples:}
	◊img['src:"lilypond/motion7.svg"]
	◊p{◊em{Oblique} motion occurs when one voice moves and the other remains
	stationary. In these examples, I've tied the stationary notes together for
	emphasis:}
	◊img['src:"lilypond/motion8.svg"]
	}
