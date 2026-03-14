# GUI Design

## Controls

Controls are grouped into several categories, each with its own set of icons and functions. The icons are designed to be intuitive and easy to understand, allowing users to quickly access the features they need.

### Main bar

This includes the main controls for the application, such as:

- Menu button to give access to the functions that override the main screen, such as:
  - Instrument settings
  - Track settings ??
  - Preferences of the app (see "cog" in Material Design Icons f0493 or Codicons eaf8 or eb51)
  - Access to online gallery of tracks
  - About
  - Help
  - Credits
- Metronome activation on main screen (see Material Design Icons f07da/f07db)
- Track 1 activation on main screen
- Track 2 activation on main screen

### Tempo editor

This control bar features a set of controls that allow users to edit the tempo and swing feel of the music. It includes:

- Reference drop-down to select the reference note value (whole, half, quarter, eighth, sixteenth) with an optional dot
- Tempo edit field to enter a specific tempo in BPM
- Tempo slider to adjust the value of the tempo
- Tempo up/down buttons to increase or decrease the tempo by 1 BPM
- Tempo up/down buttons to increase or decrease the tempo by 5 BPM
- Tap button to set the tempo by tapping the screen (Material Design Icons f0741)
- Listen button to hear the current tempo
- Swing drop-down to select the desired swing feel

### Visualization bar

This control bar allows users to visualize the music in different ways.

It includes toggle buttons such as:

- Music score view
- Rhythm clock view
- Waveform view
- ....

### Metronome

This control is only visible when activated on the main bar. It allows users to control the metronome settings, including:

- Volume control
- Sound selection (click, woodblock, voice, etc.)
- Note value to be played by the metronome (whole, half, quarter, eighth, sixteenth)
- Time signature _if no track is loaded_
- Metronome mute/unmute/solo

### Music track

This control is only visible when a music track is loaded. It allows users to view/control the music track, including:

- Track name
- Track volume control
- Track mute/unmute/solo
- Track solo (play only this track)

### Playback control

This control bar allows users to control the playback of the music or metronome tracks. It includes:

- Stop (and automatically rewind)
- Play / Pause
- Fast Backward / Forward
- Loop toggle
- Slider to adjust the playback position
- Info about the current position in the track (time, measure, beat, etc.)

### Clock visualization

The clock visualization is a visual representation of the current metronome and/or track(s). It is based mainly on a radial representation of the notes to play.

It includes:

- A wheel with the current notes of the metronome or track(s) displayed in a circular fashion
- A center text that represents the current beat
- A visual indicator for the current note being played (rotating line)
- Button to toggle metronome and track(s) in the clock visualization
- Button to toggle polygon visualization of the clock (see MD f0700 pentagon)
- Button to reset clock visualization to default state (see MD restore f006f)
- Button to set the number of bars displayed on the clock 1 to 4
- Button to set the visualization in spiral mode (see MD f08da debian or FA spiral e80a)

## Necessary icons

[Icon search](https://www.nerdfonts.com/cheat-sheet)

This section is a list of icons that are necessary for the application to have an understandable UI.

These icons are used in various parts of the application, such as buttons, navigation, and other UI elements.

Notes to display as single notes:

- Single full note
- Single half note
- Single quarter note
- Single eighth note
- Single sixteenth note
- Dot
- Rests (whole, half, quarter, eighth, sixteenth) ?

Tempo/swing control:

- Tempo up/down +/-1
- Tempo up/down +/-5
- Reference note value (single full/half/quarter/eighth/sixteenth with optional dot)
- Tap (finger or hand tap to set tempo)
- Listen (listen to the current tempo, ear or microphone icon)
- Swing reference: 2 eighth notes or 2 sixteenth notes together
- Swing drop-down with eighth / sixteenth notes as reference:

  - Reverse swing 1/4 3/4 (25%) Lombard --> sixteenth eighth dot / thirty-second sixteenth dot
  - Reverse triplet feel 1/3 2/3 (33.3%) --> triplet eighth eighth rest / triplet sixteenth sixteenth rest
  - Straight (no swing) --> 2 eighth / 2 sixteenth notes together
  - Triplet feel (2/3 1/3 66.66%) --> triplet eighth rest eighth / triplet sixteenth rest sixteenth
  - Dotted eights then sixteenth (75%) --> eighth dot sixteenth / sixteenth dot thirty-second
  - Custom --> display a new slider (and keep value)

Metronome control:

- Metronome on/off --> Metronome icon see symbols nerd font
- Metronome volume up/down
- Metronome sound selection (click, woodblock, voice, etc.)

Metronome example: [](https://www.imusic-school.com/en/tools/online-metronome)

Playback control in this order, plus slider:

- Rewind
- Stop
- Play / Pause
- Fast Forward

Track input/output control:

- Upload to cloud
- Download from cloud
- Save locally
- Open file
- Volume Up
- Volume Down
- Mute
- Un-mute
- Next
- Previous

## Icons and fonts

### Unicode Miscellaneous Technical 2300–23FF

Single glyphs:

- `&#x2302;` &#x2302; HOUSE
- `&#x23E9;` &#x23E9; BLACK RIGHT-POINTING DOUBLE TRIANGLE
- `&#x23E9;` &#x23EA; BLACK LEFT-POINTING DOUBLE TRIANGLE
- `&#x23EB;` &#x23EB; BLACK UP-POINTING DOUBLE TRIANGLE
- `&#x23EC;` &#x23EC; BLACK DOWN-POINTING DOUBLE TRIANGLE
- `&#x23F2;` &#x23F2; TIMER CLOCK
- `&#x23F4;` &#x23F4; BLACK MEDIUM LEFT-POINTING TRIANGLE
- `&#x23F5;` &#x23F5; BLACK MEDIUM RIGHT-POINTING TRIANGLE
- `&#x23F6;` &#x23F6; BLACK MEDIUM UP-POINTING TRIANGLE
- `&#x23F7;` &#x23F7; BLACK MEDIUM DOWN-POINTING TRIANGLE
- `&#x23F8;` &#x23F8; DOUBLE VERTICAL BAR
- `&#x23F9;` &#x23F9; BLACK SQUARE FOR STOP
- `&#x23FA;` &#x23FA; BLACK CIRCLE FOR RECORD

### Unicode Miscellaneous Symbols 2600–26FF

Single glyphs:

- `&#x2600;` &#x2600; SUN
- `&#x2601;` &#x2601; CLOUD
- `&#x2605;` &#x2605; BLACK STAR
- `&#x2606;` &#x2606; WHITE STAR
- `&#x2630;` &#x2630; TRIGRAM FOR HEAVEN
- `&#x2669;` &#x2669; QUARTER NOTE
- `&#x266a;` &#x266a; EIGHTH NOTE
- `&#x266b;` &#x266b; BEAMED EIGHTH NOTES
- `&#x266c;` &#x266c; BEAMED SIXTEENTH NOTES
- `&#x26d4;` &#x26d4; NO ENTRY

### Unicode Musical Symbols 1D100-1D1FF

Single glyphs:

- `&#x1d13b;` &#x1d13b; MUSICAL SYMBOL WHOLE REST
- `&#x1d13c;` &#x1d13c; MUSICAL SYMBOL HALF REST
- `&#x1d13d;` &#x1d13d; MUSICAL SYMBOL QUARTER REST
- `&#x1d13e;` &#x1d13e; MUSICAL SYMBOL EIGHTH REST
- `&#x1d13f;` &#x1d13f; MUSICAL SYMBOL SIXTEENTH REST
- `&#x1d140;` &#x1d140; MUSICAL SYMBOL THIRTY-SECOND REST
- `&#x1d15d;` &#x1d15d; MUSICAL SYMBOL WHOLE NOTE
- `&#x1d15e;` &#x1d15e; MUSICAL SYMBOL HALF NOTE
- `&#x1d15f;` &#x1d15f; MUSICAL SYMBOL QUARTER NOTE
- `&#x1d160;` &#x1d160; MUSICAL SYMBOL EIGHTH NOTE
- `&#x1d161;` &#x1d161; MUSICAL SYMBOL SIXTEENTH NOTE
- `&#x1d162;` &#x1d162; MUSICAL SYMBOL THIRTY-SECOND NOTE

Compound glyphs:

- `&#x1d158;&#x1d165;&#x1d16f;` &#x1d158;&#x1d165;&#x1d16f;

### Miscellaneous Symbols and Pictographs 1F300–1F5FF

Single glyphs:

- `&#x1f310;` &#x1f310; GLOBE WITH MERIDIANS
- `&#x1f399;` &#x1f399; STUDIO MICROPHONE
- `&#x1f39a;` &#x1f39a; LEVEL SLIDER
- `&#x1f39c;` &#x1f39c; BEAMED ASCENDING MUSICAL NOTES
- `&#x1f39d;` &#x1f39d; BEAMED DESCENDING MUSICAL NOTES
- `&#x1f39e;` &#x1f39e; FILM FRAMES
- `&#x1f3a4;` &#x1f3a4; MICROPHONE
- `&#x1f3a7;` &#x1f3a7; HEADPHONE
- `&#x1f3b5;` &#x1f3b5; MUSICAL NOTE
- `&#x1f3b6;` &#x1f3b6; MULTIPLE MUSICAL NOTES
- `&#x1f3bb;` &#x1f3bb; VIOLIN
- `&#x1f3bc;` &#x1f3bc; MUSICAL SCORE
- `&#x1f441;` &#x1f441; EYE
- `&#x1f442;` &#x1f442; EAR
- `&#x1f47d;` &#x1f47d; EXTRATERRESTRIAL ALIEN
- `&#x1f501;` &#x1f501; CLOCKWISE RIGHTWARDS AND LEFTWARDS OPEN CIRCLE ARROWS
- `&#x1f507;` &#x1f507; SPEAKER WITH CANCELLATION STROKE
- `&#x1f508;` &#x1f508; SPEAKER
- `&#x1f509;` &#x1f509; SPEAKER WITH ONE SOUND WAVE
- `&#x1f50a;` &#x1f50a; SPEAKER WITH THREE SOUND WAVES
- `&#x1f512;` &#x1f512; LOCK
- `&#x1f513;` &#x1f513; OPEN LOCK
- `&#x1f514;` &#x1f514; BELL
- `&#x1f515;` &#x1f515; BELL WITH CANCELLATION STROKE
- `&#x1f516;` &#x1f516; BOOKMARK
- `&#x1f517;` &#x1f517; LINK
- `&#x1f568;` &#x1f568; RIGHT SPEAKER
- `&#x1f569;` &#x1f569; RIGHT SPEAKER WITH ONE SOUND WAVE
- `&#x1f56a;` &#x1f56a; RIGHT SPEAKER WITH THREE SOUND WAVES
- `&#x1f589;` &#x1f589; LOWER LEFT PENCIL
- `&#x1f5a2;` &#x1f5a2; BLACK UP POINTING BACKHAND INDEX
- `&#x1f5ab;` &#x1f5ab; WHITE HARD SHELL FLOPPY DISK
- `&#x1f5c1;` &#x1f5c1; OPEN FOLDER
- `&#x1f5d1;` &#x1f5d1; WASTEBASKET
- `&#x1f5d8;` &#x1f5d8; CLOCKWISE RIGHT AND LEFT SEMICIRCLE ARROWS
- `&#x1f5f2;` &#x1f5f2; LIGHTNING MOOD
