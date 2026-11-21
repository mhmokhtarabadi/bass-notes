\version "2.26.0"

\header {
  title = "Let's Get It On"
  subtitle = "Bass"
  composer = "James Jamerson"
}

\paper {
  indent = 0\mm
  property-defaults.fonts.music = "lv-goldenage"
  property-defaults.fonts.serif = "GoldenAge"
  property-defaults.fonts.sans = "GoldenAge"
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
      % \override Score.SpacingSpanner.spacing-increment = 2.5
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