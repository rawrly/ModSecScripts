function main()
 local ip = m.getvar("REMOTE_ADDR")
 fh = io.open("/tmp/blacklist.txt", "a")
 fh:write(ip.."\n")
 fh:close()
end
