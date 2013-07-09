def run_command(command)
		color = fill(rand(@i), rand(@i), rand(@i))
		puts "Running Command #{command}"
		method = command.split("")[0]
		letters = command
		letters = letters.slice(1..1)
		letters = letters.split(",")
		if method == "a"
			color = command[1..-1]
		colors = color.split(",")
		background(colors[0].to_i, colors[1].to_i, colors[2].to_i)
		background(letters[0].to_i, letters[1].to_i, letters[2].to_i)
		elsif method == "b"
			fill(letters[0].to_i, letters[1].to_i, letters[2].to_i)
	    end
	end


	background(128, 0, 128)

	fill(letters[0].to_i, letters[1].to_i, letters[2].to_i)