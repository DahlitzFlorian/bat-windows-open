# Open-Command for Windows

## Description

This repository contains files to use the `open`-command to start certain programs via the terminal without adding all the applications to the Path-variable.

## Usage

`open key1` <br>
(opens only the program belonging to the key `key1`)
<br><br>
`open key1 key2` <br> 
(opens both applications belonging to the keys)

You can add as many arguments as you want. The key-path-pairs are stored in the `programs.txt` file and are separated by " - ". Each key-path-pair has to be in it's own row. The paths can contain whitespaces (have a look at the example programs.txt file). Any ASCII-Code can be used as key.

Download the files and add the directory of this files to your Path-variable that the terminal can find the batch-file `open`.

### Show available keys
By using the `-s` flag you can show all available keys. No program will be started. Just use the command `open -s`.