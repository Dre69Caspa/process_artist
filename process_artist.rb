require 'ruby-processing'

class ProcessArtist < Processing::App

	def setup

		
		
		ellipse_mode(CENTER)
		rect_mode(CENTER)
		@size = 10
		@queue = ""
		@i = 255
		fill(rand(@i), rand(@i), rand(@i))
		background(rand(@i), rand(@i), rand(@i))
	end

	def draw 
		@x = mouse_x
		@y = mouse_y
	end

	def key_pressed
		warn "A key was pressed! #{key.inspect}"

		if key == "+"
			warn "You pressed plus"
			@size += 5
		elsif key == "-"
			warn "You pressed minus"	
			@size -= 5
		elsif key !="\n"
			@queue = @queue + key
		else
			warn "Time to run the command: #{@queue}"
			@shape = @queue.chomp
			@queue = ""
			color = fill(rand(@i), rand(@i), rand(@i))
			puts "Running Command #{@shape}"
			method = @shape.split("")[0]
			letters = @shape
			letters = letters.slice(1..-1)
			letters = letters.split(",")
  		    if method == "a"
		      color = @shape[1..-1]
		      colors = color.split(",")
			  warn "colors #{colors}"
			  background(colors[0].to_i, colors[1].to_i, colors[2].to_i)
			  background(letters[0].to_i, letters[1].to_i, letters[2].to_i)
			elsif method == "e"
			  warn "colors #{colors}"
			  background(colors[0].to_i, colors[1].to_i, colors[2].to_i)
			  background(letters[0].to_i, letters[1].to_i, letters[2].to_i)
	    	end
		end

	end

	def mouse_pressed
		@fill
		@shape
	end

	def mouse_dragged
		fill(rand(@i), rand(@i), rand(@i))
		case @shape
		when "1" then oval(@x, @y, @size, @size)
		when "2" then rect(@x, @y, @size, @size)	
		when "3" then triangle(@x-@size, @y-@size, @x+@size, @y-@size, @x, @y+@size)
	    else 
	    when "e" th
		end
	end
    
    def choose_shape(command)
    	case command
    	when "1" then warn "You choose s1"
    	when "2" then warn "You choose s2"
    	when "3" then warn "You choose s3"
    	when "e"  then warn "You choose Erasure"
    	else
    		warn "Got command: #{commad}"
    	end
    end
end

ProcessArtist.new(:width => 500, :height => 500,
  :title => "ProcessArtist", :full_screen => false)
