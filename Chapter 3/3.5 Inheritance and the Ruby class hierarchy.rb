#3.5.0

class Publication
	attr_accessor :publisher
end
class Magazine < Publication
	attr_accessor :editor
end

#Magazine inherits methods from Publication.

mag = Magazine.new
mag.publisher = "David A. Black"
mag.editor = "Joe Smith"

puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."

#mag, as an instance of a Magazine object, can use both the
#.publisher method and the .editor method.

class Ezine < Magazine
end

#New sub classes don't need to have new methods- they can just be
#defined so that your code is clearer.

#3.5.1 Single Inheritance: one to a customer

#Other languages allow multiple inheritances, but Ruby objects only
#get one. Inheritance isn't meant to be a way to express hierarchical
#trees, but instead a way to get functions to the classes that need
#them. The other major way to add functionality to classes is through
#modules, which will be discussed in Chapter 4.
