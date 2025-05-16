TEXT = <<EOF 
Since the early 1950s, United States officials have been in contact with extraterrestrial life forms.
Our first contact came after a group of Grey aliens crash-landed near Roswell, New Mexico.
Through them we learned of the imminent threat of invasion by lizard people from Sirius. Since then we have worked with the Greys to develop an Alien/Human hybrid capable of mind-control.
As more and more UFO sightings occur, it becomes increasingly difficult for the men in black to control public awareness of the extraterrestrial presence.
EOF

LEXICON = {
"extraterrestrial" => "CANADIAN",
"life forms" => "REPRESENTATIVES",
"Grey aliens" => "POLITE BACON RANCHERS",
"the Greys" => "OUR FRIENDS",
"Roswell, New Mexico" => "NIAGARA FALLS",
"crash-landed" => "DROPPED BY",
"lizard people" => "FOLK SINGERS",
"Sirius" => "SASKATCHEWAN",
"Alien" => "WILLIAM SHATNER",
"Human" => "MILEY CIRUS",
"mind-control" => "MAPLE SYRUP MANUFACTURE",
"men in black" => "MOUNTIES",
"UFO" => "MOOSE"
}


# This method can be more efficient
# 
# sanitized = TEXT 
# LEXICON.each do |term, alt|
#   sanitized = sanitized.gsub(term, alt)
# end
# puts sanitized
# 
#
# combine keys of lexicon 
terms = LEXICON.keys.map{|k| Regexp.escape(k)}.join("|")

#  convert joined string to a regular expression object
pattern = Regexp.new(terms)

#  handle replacing matched values, gsub can accept hashes too, for replacements
sanitized = TEXT.gsub(pattern, LEXICON)
puts sanitized
