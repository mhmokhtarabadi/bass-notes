\version "2.26.0"

\language "english"

\header {
  title = "Time - Pink Floyd"
  subtitle = "Bass"
  composer = "Roger Waters"
}

\paper {
  #(set-paper-size "letter")
  indent = 0\mm
  property-defaults.fonts.music = "lv-goldenage"
  property-defaults.fonts.serif = "GoldenAge"
  property-defaults.fonts.sans = "GoldenAge"
}

chord = \chordmode {
  s1 | s |
  e | s | fs:m | s |
  e | s | fs:m | s |
  e | s | fs:m | s |
  e | s | fs:m | s | s | s |
  a | s | e | s | fs:m | s |

  fs:m | a | e | fs:m | s |
  a | e | fs:m |

  d:maj7 | a:maj7 | d:maj7 | a:maj7 | d:maj7 |
  cs:m7 | b:m7 | e |

  fs:m | a | e | fs:m | s |
  a | e | fs:m | 
}

song = \relative {
  \override Score.SpacingSpanner.spacing-increment = 2.5
  \clef bass
  \numericTimeSignature
  \tempo 4 = 60
  \time 4/4
  \key fs \minor
  r2 r2 |  r4 r4 r4 r4 |

  \section \sectionLabel \markup { \rounded-box "Intro" }

  e,1~ | e1 | fs1~ | fs1 |
  e1~ | e1 | fs1~ | fs1 |
  e1~ | e1 | fs1~ | fs1 |
  e1~ | e1 | fs1~ | fs1 | fs1~ | fs1 |
  a1~ | a1 | e1~ | e1 | fs1~ | fs1 |

  \section \sectionLabel \markup { \rounded-box "Verse" }

  fs4 fs'8.-. e16 fs4 fs16 gs8-. gs16 |
  a4 a,16 e'8-. e16 a8. e16 a16 a16 r8 |
  e4 e8.-. d16 e8. d16 e16 e16 r8 |
  fs4  fs16 e8-. e16 fs8 r8 fs,16 cs'8-. cs16 |
  fs4 fs8. e16 fs8 r8 fs16 gs8-. gs16 |
  a4 a,16 e'8-. e16 a4 e16 a,8-. a16 |
  e'4 e e16 e r8 e16 es r8 |
  fs r r16 e8-. e16 fs,8 r e16 cs'8 fs16 |

  \section \sectionLabel \markup { \rounded-box "Chorus" }

  d2 d8-. d4. | a2 a8-. a4 e'8-. |
  d2 d8-. d4. | a2 a8-. a4. | d2 d8-. d a' d, |
  cs2 cs8-. cs4. | b2 b8-. b4. | e,2 e16 gs8 b16 r e16 es8 |

  \section \sectionLabel \markup { \rounded-box "Solo" }

  fs4 fs8. e16 fs8-. r8 fs16 gs8-. gs16 |
  a4 a,16 e'8-. e16 a8. e16 a a r8 |
  e4~ 8. d16 e4 e16 es r8 |
  fs4 fs16 cs8-. cs16 fs,4 fs16 cs'8-. cs16 |
  fs4 fs16 cs8-. cs16 fs,4 fs16 gs8-. gs16 |
  a4 e'16 a8-. e16 a,4 a16 e'8-. a16 |
  e4 e8. d16 e8. d16 e es r8 |
  fs4 cs16 cs8-. cs16 e,4 e16 cs'8-. cs16 |

  \section
}

<<
  \new ChordNames {
    \chord
  }
  \new Staff {
    \song
  }
>>
