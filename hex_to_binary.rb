

if ARGV.size == 0
  puts("argument size is 0")
  exit
end

binary_txt = File.open(ARGV[0], "r").read

hex_dat	= binary_txt.split(" ").join
binary	= [hex_dat].pack("H*")

filename = File.basename(ARGV[0],".*")
outputfileName = filename + ".bin"

open(outputfileName, "wb") {|f| f.write binary}
puts("output file : " + outputfileName)
puts("binary size : " + File.size(outputfileName).to_s + " bytes")
