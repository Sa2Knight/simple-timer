def to_sec(time)
  matched = time.scan(/^(\d+)(s|m)$/)
  matched.empty? and return nil
  matched[0][1] == 's' ? matched[0][0].to_i : matched[0][0].to_i * 60
end

def countdown(sec)
  while 0 <= sec
    puts "\e[H\e[2J"
    puts sec
    sec-=1
    sleep 1
  end
end

sec = to_sec(ARGV[0])
countdown(sec)
