# What's ws?

**Coworker:** Hey, can you do me a favor and send me that 2 gigabyte log file?

**You:** I've got a better idea! Why don't you get it yourself?

```bash
$ cd dir-with-giant-log
$ ws
/Users/you/dir-with-giant-log being served at http://10.11.12.13:8000

http://10.11.12.13:8000 copied to clipboard

Ctrl-C to quit
```
**You:** I'll send you a link through our favorite messaging app!

**Coworker:** Thanks! You're the greatest.

# One last thing...
A few actually.

* I wrote this to work on my Mac which 1) assumes the network interface you care about is en0 and 2) parses the output of ifconfig which is probably different from the GNU ifconfig. In other words, it won't work but the good news is all you have to do is change en0 to something like eth0 and then rewrite the regular expression to work with the GNU ifconfig output. Feel free to patch this script to work on either.
* Requires a version of Python installed with SimpleHTTPServer
* The copying to the clipboard depends on pbcopy which is a Mac thing but for Linux, this link looks promising: [http://superuser.com/questions/288320/whats-like-osxs-pbcopy-for-linux]()