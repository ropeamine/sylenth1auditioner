# sylenth1auditioner

Download sylenth1auditioner.applescript

```
curl -L -o sylenth1auditioner.applescript https://raw.githubusercontent.com/ropeamine/sylenth1auditioner/main/sylenth1auditioner.applescript
```




Make modifications to Preset Count, Time-Signature, BPM, and Loop length, then run:
```
osascript sylenth1auditioner.applescript
```




Alternatively to use the defaults of 138BPM, 4/4, an 8-Bar loop and 128 Presets:
```
curl -s https://raw.githubusercontent.com/ropeamine/sylenth1auditioner/main/sylenth1auditioner.applescript | osascript
```
