require 'ruby-processing'
class ProcessArtist < Processing::App

	def setup
		background(128, 0, 128)
	end

	def draw 
		stroke(255, 0, 255)
		
		if @i.nil? ||@i == 200
			@i = 0
		end
		@i = @i + 2
		fill(@i, 2*@i, 64)
		@i.times do |j|
		fill(rand(@i), rand(@i), 6)
		rect(10, 10, rand(@i), 2*@i)
		oval(200, 10, rand(@i), 2*@i)
		triangle(30, 70, 90, 70, 60, 10)
	end
	end
end
ProcessArtist.new(:width => 800, :height => 800, :title => "ProcessArtist", :full_screen => false)
