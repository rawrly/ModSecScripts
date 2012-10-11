function main()
  local ip = m.getvar('REMOTE_ADDR')
  for line in io.lines("/tmp/blacklist.txt") do
    if string.match(ip, line) then
      return 1
    end
  end
end
