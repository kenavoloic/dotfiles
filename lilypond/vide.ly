\version "2.18.2"
% 24/05/2020
#(set-default-paper-size "a4" 'portrait)
#(set-global-staff-size 20)

\paper {
    ragged-last-bottom = ##f
        line-width = 180
        top-margin = 10
        bottom-margin = 10
        left-margin = 15
}


\header {
    tagline = ""
}


\score {

    \new Staff {
            \repeat unfold 14 { s1 \break } 
    }

    \layout {
        indent = 0\in
            \context {
                \Staff
                    \remove "Time_signature_engraver"
                    \remove "Bar_engraver"
                    \remove "Clef_engraver"
            }
        \context {
            \Score
                \remove "Bar_number_engraver"
        }
    }
}



