\version "2.24.0"

\header {
  title = "Let's Get It On"
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
  
}

song = {
  \relative c, {
    \numericTimeSignature
    \time 4/4
    \key c \major
    e,4 r8 e~ e e r e | e4 r8 e~ e e r e16 e |
    e4 r8 e~ e e r e | e4 r8 e~ e e^. e16 e e e |
    e4 r8 e~ e e r e | e4 r8 e~ e e r e16 e |
    e4 r8 e~ e e r e | e4 r8 e~ e e^. e16 e e e |
    e4 r8 e~ e e r e | e4 r8 e~ e e r e16 e |
    e8. e16 e8^. e r e r e | e4 r8 e8 r16 e16 e8 e16 e e e |
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