# Purpose project
    Scan a website for find all URL.
# Start
    gem install colorize
# Launch
    ruby scan_website.rb
# URL example
    http://challenge01.root-me.org/realiste/ch6/
# Error possibily
    - Problem = /usr/lib/ruby/2.3.0/net/http.rb:882:in `rescue in block in connect': Failed to open TCP connection to :80 (Connection refused - connect(2) for nil port 80) (Errno::ECONNREFUSED)
    - Solution = The URL is probably wrong or the connection has been blocked because of multiple connections.
