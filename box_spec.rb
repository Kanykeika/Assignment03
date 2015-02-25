require "rspec"
require "./box"

describe "box" do
  it "should return width of Box" do
    Box.new(30, 20).get_width().should == 30
  end

  it "should return width of BigBox" do
    BigBox.new(40, 30).get_width().should == 40
  end
  
  it "should return width of SmallBox" do
    SmallBox.new(20, 10).get_width().should == 20
  end

  it "should return height of Box" do
    Box.new(30, 20).get_height().should == 20
  end

  it "should return height of BigBox" do
    BigBox.new(40, 30).get_height().should == 30
  end
  
  it "should return height of SmallBox" do
    SmallBox.new(20, 10).get_height().should == 10
  end

  it "should return area of Box" do
    Box.new(30, 20).get_area().should == 600
  end

  it "should return area of BigBox" do
    BigBox.new(40, 30).get_area().should == "Area of big box is equal to: 1200"
  end
  
  it "should return area of SmallBox" do
    SmallBox.new(20, 10).get_area().should == "Area of small box is equal to: 200"
  end
end
