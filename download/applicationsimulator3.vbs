do
app=inputbox("application:", "application simulator 3")
select case lcase(app)
case "quit":
exit do
case "time":
msgbox time
case "wedontneed.txt":
set sapi=CreateObject("sapi.spvoice")
set sapi.Voice = sapi.getvoices("language=409").item(0)
sapi.speak("we dont need no explanation")
sapi.speak("we dont need no guide creation")
sapi.speak("we dont need no guide control")
msgbox "we dont need no explanation"
msgbox "we dont need no guide creation"
msgbox "we dont need no guide control"
end select
loop
