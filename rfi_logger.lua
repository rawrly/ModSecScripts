function main()
local ip = m.getvar("REMOTE_ADDR")
local url = m.getvar("REQUEST_URI")
local args = m.getvars("ARGS")
 for j = 1, #args do
  if(string.match(args[j].value, 'http')) then
   fh = io.open("/tmp/backdoor", "a")
   fh:write("---"..ip.." "..url.." "..args[j].name.."="..args[j].value.."---\n")
   fh:close()
   os.execute("/usr/bin/curl -o - '"..args[j].value.."' >> /tmp/backdoor")
  end
 end
end
