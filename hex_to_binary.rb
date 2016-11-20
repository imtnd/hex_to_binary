require "pathname"

if ARGV.empty?
  puts "argument size is 0"
  exit
end

src_path = Pathname(ARGV[0])

binary_txt = src_path.read

hex_dat = binary_txt.split(" ").join
binary  = [hex_dat].pack("H*")

dest_path = src_path.sub_ext(".bin")

dest_path.binwrite(binary)
puts "output file: #{dest_path}"
puts "binary size: #{binary.size} bytes"
