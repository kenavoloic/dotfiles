\version "2.18.2"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 28)

\language "english"

\paper {
  top-margin = 0.5\cm
  bottom-margin = 1\cm
 % #(set-paper-size "a4")
 % ragged-last-bottom = ##f
  %line-width = 180
  %left-margin = 1.5\cm
  %top-margin = 1\cm
  %bottom-margin = 1\cm
}

\header {
%tagline = ""
tagline = ##f
}


global = {
  \time 4/4 
  %\key f \major  
  \repeat unfold 8 { 
    %s1 \break
    s1 * 4 \break 
  }
}


lehen = \relative c' {
\clef treble
}

bigarren = \relative c' {
\clef treble
}

hirugarren = \relative c' {
%\clef alto
\clef treble
%\clef "G_8"

}

laugarren = \relative c {
\clef treble
%\clef bass
}

\score {
  <<
    \context StaffGroup <<
      % break-visibility = (endOfLine middle beginning)
      %\override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff \with { \remove "Time_signature_engraver" } << \global \lehen >>
      \new Staff \with { \remove "Time_signature_engraver" } << \global \bigarren >>
      \new Staff \with { \remove "Time_signature_engraver" } << \global \hirugarren >>
      \new Staff \with { \remove "Time_signature_engraver" } << \global \laugarren >>
    >>
>>

\layout{
  indent=0

  \context {
    \Score
    \remove "Bar_number_engraver"
    %\remove "Clef_engraver"
  }
}
%\midi{\tempo 4 = 60}

}
