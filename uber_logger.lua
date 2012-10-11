function main()
 local ip = m.getvar("REMOTE_ADDR")
 local url = m.getvar("REQUEST_URI")
 local args = m.getvars("ARGS")
 local headers = m.getvars("REQUEST_HEADERS")
 local cookies = m.getvars("COOKIES")
 local longstring = " "
 for j = 1, #cookies do
  longstring = longstring.." "..cookies[j].name.."="..cookies[j].value
 end
 for j = 1, #headers do
  longstring = longstring.." "..headers[j].name.."="..headers[j].value
 end
 for j = 1, #args do
  longstring = longstring.." "..args[j].name.."="..args[j].value
 end
 fh = io.open("/tmp/uberlog", "a+")
 fh:write(ip.." "..url.." "..longstring.."\n")
 fh:close()
end
