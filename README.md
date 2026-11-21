# Bass Notes

This is a place to keep my bass notes.

## Make things work

### MAC

1. Download the binary file from here: https://lilypond.org/download.html
2. Unzip the file and place it in `~/tools`
3. Run `echo 'export PATH="$HOME/tools/lilypond-2.26.0/bin:$PATH"' >> ~/.zshrc` to add lilypond to path
4. Download Golder Age fonts from here: https://github.com/OpenLilyPondFonts/lv-goldenage
5. Install all the fonts inside the [otf](https://github.com/OpenLilyPondFonts/lv-goldenage/tree/master/otf) and [supplementary-fonts](https://github.com/OpenLilyPondFonts/lv-goldenage/tree/master/supplementary-fonts) folders.
6. Copy all the fonts (`.otf`) to this path: `~/tools/lilypond-2.26.0/share/lilypond/2.26.0/fonts/otf`

## Template

```LilyPond
\version "2.26.0"

\header {
  title = "Track name"
  subtitle = "Bass"
  composer = "Bassist name"
}

\paper {
  property-defaults.fonts.music = "lv-goldenage"
  property-defaults.fonts.serif = "GoldenAge"
  property-defaults.fonts.sans = "GoldenAge"
}

chord = \chordmode {
      f1 |
    }

song = {
  \relative c {
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
      \override Score.SpacingSpanner.spacing-increment = 2.5
      \clef "bass"
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
