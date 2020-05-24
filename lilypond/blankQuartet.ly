\version "2.18.2"

#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 20)

\language "english"

\paper {
  top-margin = 0.5\cm
  bottom-margin = 1\cm
}

\header {
%title = \markup \bold "Adipisicing itaque quasi unde"
%title = \markup \italic "Adipisicing itaque quasi unde"
%composer="Oim"
%tagline="Zlatan was here"
%tagline="Sit dolor accusantium voluptatem facilis minus."
tagline = ""
}


global = {
  \time 4/4 
  %\key f \major  
  \repeat unfold 8 { 
    s1 \break
    %s1 * 4 \break 
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
\clef "G_8"

}

laugarren = \relative c {
\clef bass
}

\score {
  <<
    \context StaffGroup <<
      % break-visibility = (endOfLine middle beginning)
      \override Score.BarNumber.break-visibility = ##(#f #f #f)
      \new Staff << \global \lehen >>
      \new Staff << \global \bigarren >>
      \new Staff << \global \hirugarren >>
      \new Staff << \global \laugarren >>
    >>
>>

\layout{
  indent=0
}
%\midi{\tempo 4 = 60}

}
