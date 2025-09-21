# Bass Notes

This is a place to keep my bass notes.

## Make things work

_TODO:_ Explain how to setup LilyPond in VSCode

## Template

```LilyPond
\version "2.24.0"

\header {
  title = "Track name"
  subtitle = "Bass"
  composer = "Bassist name"
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
      f1 |
    }

song = {
  \relative c, {
    \numericTimeSignature
    \time 4/4
    \key c \major
    a4 a a a |
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
```
