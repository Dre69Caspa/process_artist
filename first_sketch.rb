require 'ruby-processing'

class FirstSketch < Processing::App

	def setup
		background(128, 0, 128)
	end

	def draw 
		if @size.nil? || @size == 150
			@size = 1
		else
			@size = @size + 1
		end
		stroke(0, 0, 0)
		if @i.nil?
			@i = 0
		end

		fill(255, 0, 255)
		rect(10, 10, @size, @size)
	end
end

FirstSketch.new(:width => 200, :height => 200, :title => "FirstSketch", :full_screen => false)