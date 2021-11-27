require 'pry'
# It seems that when I comment out the memorable concern, is when i start to get the errors
# require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/memorable.rb'
# require_relative '../lib/concerns/paramable'

# in my enviorment i place the require relative for my artist and song or the classes in general in which I am attempting to pass files to
require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
