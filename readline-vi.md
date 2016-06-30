### switching to command mode

shortcut | description
-------- | -----------
\<Esc> | switch to command mode

### commands for entering input mode

shortcut | description
-------- | -----------
i | insert before cursor
a | insert after cursor
I | insert at the beginning of line
A | insert at the end of line
c\{motion\} | change text inside motion
C | change text to the end of line (equivalent to c$)
cc | change current line (equivalent to 0c$)
S | change current line (equivalent to 0c$)
s | delete a single character under the cursor and enter input mode (equivalent to c\<Space>)
r | replaces a single character under the cursor
R | replaces characters under the cursor
v | edit and execute the current command in a text editor

### basic motion commands

shortcut | description
-------- | -----------
l | move one character right
\<Space> | move one character right
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
% | move to the corresponding opening/closing bracket ( ( ), [ ], { } )

### character finding commands

shortcut | description
-------- | -----------
f\{char\} | move right to the first occurance of \{char\}
F\{char\} | move left to the previous occurance of \{char\}
t\{char\} | move right to the next occurance of \{char\}, then one char backward
T\{char\} | move left to the previous occurance of \{char\}, then one char forward
; | redo the last character finding command
, | redo the last character finding command in opposite direction
\{int\}\| | move to the \{int\}-th column

### deletion commands
shortcut | description
-------- | -----------
x | delete a single character under the cursor
X | delete a character before the cursor
d\{motion\} | delete text inside motion
D | delete to the end of the line (equivalent to d$)
dd | delete current line (equivalent to 0d$)
\<C-w> | delete the previous word
\<C-u> | delete from the cursor to the beginning of the line

### undo, redo and copy/paste commands

shortcut | description
-------- | -----------
u | undo previous text modification
U | undo all previous text modifications on the line
. | redo the last text modification
y\{motion\} | yank (copy) text inside motion into buffer
yy | yank (copy) the whole line
p | insert (paste) the yanked text at the cursor
P | insert (paste) the yanked text before the cursor

### commands for command history

shortcut | description
-------- | -----------
k | move backward one command in history
j | move forward one command in history
\{int\}G | move to the history line \{int\}
/\{string\} | search history backward for a command matching \{string\}
?\{string\} | search history forward for a command matching \{string\}
n | repeat search in the same direction as previous
N | repeat search in the opposite direction as previous 

### completion commands

shortcut | description
-------- | -----------
\<Tab> | list possible completions
