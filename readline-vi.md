# switching to command mode

shortcut | description
ESC      | switch to command mode

# commands for entering input mode

shortcut | description
-------- | -----------
i | insert before cursor
a | insert after cursor
I | insert at the beginning of line
A | insert at the end of line
c<motion> | change text inside motion
C | change text to the end of line (equivalent to c$)
cc | change current line (equivalent to 0c$)
S | change current line (equivalent to 0c$)
s | delete a single character under the cursor and enter input mode (equivalent to cSPACE)
r | replaces a single character under the cursor
R | replaces characters under the cursor
v | edit and execute the current command in a text editor

# basic motion commands

shortcut | description
-------- | -----------
l | move one character right
SPACE | move one character right
h | move one character left
w | move one word or token right
b | move one word or token left
W | move one non-blank word right
B | move one non-blank word left
e | move to the end of the current word
E | move to the end of the current non-blank word
0 | move to the beginning of line
ˆ | move to the first non-blank character of line
$ | move to the end of line
% | move to the corresponding opening/closing bracket ((), [], {})

# character finding commands

shortcut | description
-------- | -----------
fc | move right to the first occurance of c
Fc | move left to the previous occurance of c
tc | move right to the next occurance of c, then one char backward
Tc | move left to the previous occurance of c, then one char forward
; | redo the last character finding command
, | redo the last character finding command in opposite direction
<n>| | move to the n-th column
