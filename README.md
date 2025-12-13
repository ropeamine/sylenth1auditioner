# sylenth1auditioner

A simple applescript to audition sylenth1 presets, brings logic pro into focus, and with a pre-loaded sylenth1 plugin instrument loaded on the track in focus will cycle right through the presets and play them for a duration you set based on loop length, BPM, and time-signature.


Usage:
Download sylenth1auditioner.applescript

```
curl -L -o sylenth1auditioner.applescript https://raw.githubusercontent.com/ropeamine/sylenth1auditioner/main/sylenth1auditioner.applescript
```




Make modifications to Preset Count, Time-Signature, BPM, and Loop length, then run:
```
open -a "Script Editor" /path/to/sylenth1auditioner.applescript
```

Then "Run" or Press ```Command + R```, Ensure you have Loaded a Sylenth1 bank to playthough, you have created a MIDI track and looped the region and in focus, 


Alternatively to use the defaults of 138BPM, 4/4, an 8-Bar loop and 128 Presets:
```
tmpFile="/tmp/sylenth1auditioner.applescript"
curl -s https://raw.githubusercontent.com/ropeamine/sylenth1auditioner/main/sylenth1auditioner.applescript -o "$tmpFile"
open -a "Script Editor" "$tmpFile"
```
