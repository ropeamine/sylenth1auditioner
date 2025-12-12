-- =======================================
-- AppleScript: Sylenth1 Preset Auditioner
-- =======================================

-- CONFIGURATION
set totalPresets to 128           -- number of presets you want to audition
set loopBars to 8                 -- loop length in bars
set timeSignature to "4/4"        -- full time signature (e.g., "4/4", "6/8")
set BPM to 138                    -- beats per minute
set bounceDelay to 20             -- seconds to wait for bounce to complete
set doBounce to false             -- set false if you only want to audition


-- SCRIPT
-- Extract top number of time signature
set AppleScript's text item delimiters to "/"
set timeSignatureTop to text item 1 of timeSignature
set timeSignatureTop to timeSignatureTop as integer

-- calculate seconds per beat
set secondsPerBeat to 60 / BPM

-- calculate total beats in the loop
set totalBeats to loopBars * timeSignatureTop

-- calculate play duration in seconds
set playDuration to secondsPerBeat * totalBeats

-- Focus Logic Pro
tell application "Logic Pro"
	activate
end tell
delay 0.5 -- give Logic time to come to front

repeat with i from 1 to totalPresets
	
	-- Step to next preset (skip first preset)
	if i > 1 then
		tell application "System Events"
			key code 124 -- Right Arrow key
		end tell
		delay 0.2 -- short delay to let Sylenth1 update preset
	end if
	
	-- Reset playhead to start of clip
	tell application "Logic Pro"
		set loc to 0 -- move playhead to start of project
	end tell
	delay 0.1
	
	-- Play audition clip
	tell application "System Events"
		key code 49 -- Spacebar
	end tell
	
	-- Wait for clip to finish
	delay playDuration
	
	-- Stop playback and reset playhead
	tell application "System Events"
		key code 49 -- Spacebar to stop
	end tell
	delay 0.1
	tell application "Logic Pro"
		set loc to 0 -- move playhead back to start
	end tell
	
	-- Bounce track if desired
	if doBounce then
		tell application "System Events"
			keystroke "b" using {command down} -- Bounce Track in Place shortcut
		end tell
		delay bounceDelay -- wait for bounce to finish
	end if
	
end repeat
