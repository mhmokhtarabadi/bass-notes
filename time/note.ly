\version "2.26.0"

\header {
  title = "Time - Pink Floyd"
  subtitle = "Bass"
  composer = "Roger Waters"
}

% #(set-global-staff-size 23)

\paper {
  indent = 0\mm
  property-defaults.fonts.music = "lv-goldenage"
  property-defaults.fonts.serif = "GoldenAge"
  property-defaults.fonts.sans = "GoldenAge"
}

chord = \chordmode {
  s1 | s |
  e | s | fis:m | s |
  e | s | fis:m | s |
  e | s | fis:m | s |
  e | s | fis:m | s | s | s |
  a | s | e | s | fis:m | s |

  fis:m | a | e | fis:m | s |
  a | e | fis:m |

  d:maj7 | a:maj7 | d:maj7 | a:maj7 | d:maj7 |
  cis:m7 | b:m7 | e |

  fis:m | a | e | fis:m | s |
  a | e | fis:m | 
}

song = {
  \relative c {
    \numericTimeSignature
    \tempo 4 = 60
    \time 4/4
    \key fis \minor
    r2 r2 |  r4 r4 r4 r4 \bar "||"

    \mark \markup { \box "Intro" }

    e,1~ | e1 | fis1~ | fis1 |
    e1~ | e1 | fis1~ | fis1 |
    e1~ | e1 | fis1~ | fis1 |
    e1~ | e1 | fis1~ | fis1 | fis1~ | fis1 |
    a1~ | a1 | e1~ | e1 | fis1~ | fis1 \bar "||"

    \mark \markup { \box "Verse" }

    fis4 fis'8.^. e16 fis4 fis16 gis8^. gis16 |
    a4 a,16 e'8_. e16 a8. e16 a16 a16 r8 |
    e4 e8.^. d16 e8. d16 e16 e16 r8 |
    fis4  fis16 e8^. e16 fis8 r8 fis,16 cis'8_. cis16 |
    fis4 fis8. e16 fis8 r8 fis16 gis8^. gis16 |
    a4 a,16 e'8_. e16 a4 e16 a,8_. a16 |
    e'4 e e16 e r8 e16 eis r8 |
    fis r r16 e8^. e16 fis,8 r e16 cis'8 fis16 \bar "||"

    \mark \markup { \box "Chorus" }

    d2 d8^. d4. | a2 a8_. a4 e'8^. |
    d2 d8^. d4. | a2 a8_. a4. | d2 d8^. d a' d, |
    cis2 cis8_. cis4. | b2 b8_. b4. | e,2 e16 gis8 b16 r e16 eis8 \bar "||"

    \mark \markup { \box "Solo" }

    fis4 fis8. e16 fis8^. r8 fis16 gis8^. gis16 |
    a4 a,16 e'8_. e16 a8. e16 a a r8 |
    e4~ 8. d16 e4 e16 eis r8 |
    fis4 fis16 cis8^. cis16 fis,4 fis16 cis'8_. cis16 |
    fis4 fis16 cis8^. cis16 fis,4 fis16 gis8_. gis16 |
    a4 e'16 a8^. e16 a,4 a16 e'8^. a16 |
    e4 e8. d16 e8. d16 e eis r8 |
    fis4 cis16 cis8_. cis16 e,4 e16 cis'8_. cis16 \bar "||"


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
  >>
}

\book {
  \staff
}