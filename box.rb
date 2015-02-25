# write 3 classes Box, BigBox, SmallBox
# Big and Small Boxes are inherited from Box
# they have to have width and height attributes,
# getters and setters and get_area() method
# in parent class
# get_area() has to be overriden in child classes

class Box
=begin
	there have to be height and width attributes
	and there have to be setter and getter methods
	there have to be get_area() method
=end
	# write your code here
  @@width
  @@height

  def get_width()
    @@width
  end

  def get_height()
    @@height
  end

  def get_area()
    @@height*@@width
  end

  def initialize(width, height)
    @@width = width
    @@height = height
  end

end


#TODO SmallBox
#			override get_area() method
class SmallBox < Box
  def get_area()
    "Area of small box is equal to: #{@@height*@@width}"
  end
end
#TODO BigBox
#			override get_area() method
class BigBox < Box
  def get_area()
    "Area of big box is equal to: #{@@height*@@width}"
  end
end


puts     Box.new(30, 20).get_width() #30
puts     BigBox.new(40, 30).get_width()#40

puts    SmallBox.new(20, 10).get_width() #20

puts     Box.new(30, 20).get_height()  #20

puts    BigBox.new(40, 30).get_height() #.should == 30

puts    SmallBox.new(20, 10).get_height()#.should == 10


puts    Box.new(30, 20).get_area()#.should == 600

puts    BigBox.new(40, 30).get_area()#.should == "Area of big box is equal to: 1200"

puts    SmallBox.new(20, 10).get_area()#.should == "Area of small box is equal to: 200"

#box_spec.rb --------- Error running Run spec 'box_spec': week_3-master: Cannot find RSpec runner script for ruby-2.1.5-p273 SDK
