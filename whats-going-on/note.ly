\version "2.24.0"

\header {
  title = "What's Going On"
  subtitle = "Bass"
  composer = "James Jamerson"
}

#(set-global-staff-size 23)

\paper {
  indent = 0\mm
  #(define fonts
     (set-global-fonts
      #:music "lv-goldenage"
      #:roman "GoldenAge"
      #:sans "GoldenAge"
      #:factor (/ staff-height pt 20)
      ))
}

chord = \chordmode {
  e:maj7
}

song = {
  \relative c, {
    \numericTimeSignature
    \time 4/4
    \key e \major
    e,4.. b'16~ b8 cis b cis | e,4.. b'16~ b8 cis e cis | 
    e,4.. b'16~ b8 cis b cis | e,4.. gis16~ gis cis8 c16 b8 cis \section 

  }
}

staff = {
  \new StaffGroup <<
    \new ChordNames {
      \chord
    }
    \new Staff {
      \clef "bass_8"
      \song
    }
    \new TabStaff \with {
      stringTunings = #bass-four-string-tuning
    } {
      \clef "moderntab"
      \song
    }
  >>
}

\book {
  \staff
}