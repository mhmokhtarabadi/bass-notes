\version "2.26.0"

\header {
  title = "What's Going On"
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