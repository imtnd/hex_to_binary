# hex_to_binary
Make a binary file from hex string file.

# Usage

```
$ echo "00 01 02 03" >> sample.txt
$ ruby hex_to_binary.rb sample.txt   
output file : sample.bin
binary size : 4 bytes
$ ls
README.md        hex_to_binary.rb sample.bin       sample.txt
$ hexdump sample.bin
0000000 00 01 02 03                                    
0000004
```
