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

  % Intro
  e | s | fs:m | s |
  e | s | fs:m | s |
  e | s | fs:m | s |
  e | s | fs:m | s | s | s |
  a | s | e | s | fs:m | s |

  % Verse 1
  fs:m | a | e | fs:m | s |
  a | e | fs:m |

  % Chorus
  d:maj7 | a:maj7 | d:maj7 | a:maj7 | d:maj7 |
  cs:m7 | b:m7 | e |

  % Solo
  fs:m | a | e | fs:m | s |
  a | e | fs:m | 

  s | a | e | fs:m | s | a | e | fs:m

  d:maj7 | a:maj7 | d:maj7 | a:maj7 | d:maj7 |
  cs:m7 | b:m7 | e |

  % Verse 1
  fs:m | a | e | fs:m | s |
  a | e | fs:m |

  % Chorus
  d:maj7 | a:maj7 | d:maj7 | a:maj7 | d:maj7 |
  cs:m7 | b:m | b2:m7 f/b |

  e1:3-.5.9 | a | e:3-.5.9 | a: |

  % Vocals
  e:m7 | a:7 | e:m7 | a:7 | e:m 7| a:7 | e:m7 | a:7 |
  c:maj7 | b:m7 | f:maj7 | g2 d4:7.9+ d4:7.9- | b1:m |
}

song = \relative {
  % \override Score.SpacingSpanner.spacing-increment = 1.2
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

  \section \sectionLabel \markup { \rounded-box "Verse 1" }

  fs4 fs'8.-. e16 fs4 fs16 gs8-. gs16 |
  a4 a,16 e'8-. e16 a8. e16 a16 a16 r8 |
  e4 e8.-. d16 e8. d16 e16 e16 r8 |
  fs4  fs16 cs8-. cs16 fs,8 r8 fs16 cs'8-. cs16 |
  fs4 fs8. e16 fs8 r8 fs16 gs8-. gs16 |
  a4 a,16 e'8-. e16 a4 e16 a,8-. a16 |
  e'4 e e16 e r8 e16 es r8 |
  fs r r16 cs8-. cs16 fs,8 r e16 cs'8 fs16 |

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
  fs4 cs16 cs8-. cs16 fs,4 fs16 cs'8-. cs16 |

  \section

  fs4 fs8.-. e16 fs4-. fs16 gs8-. gs16 |
  a4 a,16 cs8-. e16 a8. e16 a a8-. fs16 |
  e4 e16 e8-. d16 e4 e16 es16 r8 |
  fs4 fs16 cs8-. cs16 fs,4 fs16 cs'8-. cs16 | 
  fs,4 fs8. cs'16 fs4 fs16 gs8-. gs16 |
  a4 a,16 cs8-. e16  a8 a,16 cs16 r16 e16 a8-. |
  e4 e8. d16 e8. d16 e16 es16 r8 |
  fs4 cs16 cs8-. cs16 fs,8. fs16~ fs16 b16-. cs8-. |

  \section

  d2 d8-. d8 a'16 d,8. | a2 a8-. a8~ a16 a'8. |
  d,2 d8-. d8 e16 d16 e8 | a,2 a8-. a4 a'8 | d,2 d8-. d a' d, |
  cs2 cs8-. cs8~ cs4 | b2 b8-. b8~ b4 | e,4 e e gs'16 b e, f |

  \section \sectionLabel \markup { \rounded-box "Verse 2" }

  fs4 fs8. e16 fs4 fs8-. fs16 gs16 |
  a4 a,16 cs8-. e16 a8. e16 a16 a16 r8 |
  e16 e,8. e'16 e,8 d'16 e8. d16 e16 es16 r8 |
  fs4 r16 cs8-. cs16 fs,4-. fs16 cs'8-. cs16 |
  fs4 fs8. e16 fs8 r8 fs16 gs8-. gs16 |
  a4 a,16 cs8-. e16 a8. e16 a16 a8-. a,16 |
  e'4 e8. d16 e4-. e16 es r8 |
  fs4 fs16 cs8-. cs16 fs,4-. fs16 a8-. cs16 |

  \section \sectionLabel \markup { \rounded-box "Chorus" }

  d2 d8-. d4. | a2 a8-. a4 a'8 |
  d,2 d8-. d4 e16 d16 | a2 a8-. a4 a'8 | d,2 d8-. d a' d, |
  cs2 cs8-. cs4. | b2 b2 | b2 b2 |

  \section

  e4~ e8. b16 e8-. e4. |
  a,4~ a8. e'16 a,8-. a4. |
  e'4~ e8. a16 e8-. e8~ e4 |
  a,4~ a8. a'32 e32 a,8-. a4. |

  \section \sectionLabel \markup { \rounded-box "Vocals" }

  e'4~ e8. b16 e8-. e8 b'16 g8. |
  a,4~ a8. e'16 a,8-. a8~ a4 |
  e'4.~ e16 b16 e8-. e4. |
  a,2 cs4 d8 ds8 |
  e2 e8-. e4. |
  a,4.~ a16 e'16 a,8-. a8 e'16 \acciaccatura a8 b8. | 
  e,2 e8-. e4. |
  a,2 a'16 g8-. e16-. r16 d16 cs8-. |
  c2 c8-. c8 g'16 c,16 r8 |
  b2 b8-. b8 fs'16 b,16 r8 |
  f'2 f,8-. f8 a16 c16 r8 |
  g4 g'4 d4 ds4 |
  b1-\fermata \bar "|."

 }

<<
  \new ChordNames {
    \chord
  }
  \new Staff {
    \song
  }
>>
