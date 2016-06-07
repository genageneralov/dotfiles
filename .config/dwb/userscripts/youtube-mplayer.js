#!javascript 

bind("h", function () { 
  system.spawn("sh -c 'mplayer $(youtube-dl -g " + tabs.current.uri + " -f mp4)'"); 
});
