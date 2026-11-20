msg = inputbox("text:", "audiocreator.exe")
set sapi = createobject("sapi.spvoice")
set file = createobject("sapi.spfilestream")
file.open "audio_resultado.wav", 3
set sapi.audiooutputstream = file
sapi.speak msg
file.close
