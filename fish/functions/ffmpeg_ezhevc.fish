#!/usr/bin/fish

function ffmpeg_ezhevc -a infile outfile
		# test for a little validity
		if not test -f $infile
				echo "$infile doesn't exist" 
				return 1
		end
		# cuda go brrr
		ffmpeg -hwaccel cuda -i $infile -c:v hevc_nvenc $outfile
end
