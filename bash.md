More history size and tame stamp

export HISTTIMEFORMAT="%F %T "
export HISTSIZE="10000"

grep color output and unwanted directory
alias grep="grep --color --exclude-dir=\".svn\""

$0 - The name of the Bash script.$1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
$# - How many arguments were passed to the Bash script.
$@ - All the arguments supplied to the Bash script.
$? - The exit status of the most recently run process.
$$ - The process ID of the current script.
$USER - The username of the user running the script.
$HOSTNAME - The hostname of the machine the script is running on.
$SECONDS - The number of seconds since the script was started.
$RANDOM - Returns a different random number each time is it referred to.
$LINENO - Returns the current line number in the Bash script

http://linuxcommand.org/lc3_man_pages/bash1.html 

CONDITIONAL EXPRESSIONS
       Conditional  expressions  are  used  by the [[ compound command and the
       test and [ builtin commands to test file attributes and perform  string
       and  arithmetic comparisons.  Expressions are formed from the following
       unary or binary primaries.  If any file argument to  one  of  the  pri‐
       maries is of the form /dev/fd/n, then file descriptor n is checked.  If
       the file argument to  one  of  the  primaries  is  one  of  /dev/stdin,
       /dev/stdout,  or /dev/stderr, file descriptor 0, 1, or 2, respectively,
       is checked.

       Unless otherwise specified, primaries that operate on files follow sym‐
       bolic links and operate on the target of the link, rather than the link
       itself.

       When used with [[, The < and > operators sort  lexicographically  using
       the current locale.

       See  the description of the test builtin command (section SHELL BUILTIN
       COMMANDS below) for the handling of parameters (i.e.   missing  parame‐
       ters).

       -a file
              True if file exists.
       -b file
              True if file exists and is a block special file.
       -c file
              True if file exists and is a character special file.
       -d file
              True if file exists and is a directory.
       -e file
              True if file exists.
       -f file
              True if file exists and is a regular file.
       -g file
              True if file exists and is set-group-id.
       -h file
              True if file exists and is a symbolic link.
       -k file
              True if file exists and its ``sticky'' bit is set.
       -p file
              True if file exists and is a named pipe (FIFO).
       -r file
              True if file exists and is readable.
       -s file
              True if file exists and has a size greater than zero.
       -t fd  True if file descriptor fd is open and refers to a terminal.
       -u file
              True if file exists and its set-user-id bit is set.
       -w file
              True if file exists and is writable.
       -x file
              True if file exists and is executable.
       -O file
              True if file exists and is owned by the effective user id.
       -G file
              True if file exists and is owned by the effective group id.
       -L file
              True if file exists and is a symbolic link.
       -S file
              True if file exists and is a socket.
       -N file
              True  if  file  exists  and  has been modified since it was last
              read.
       file1 -nt file2
              True if file1 is newer (according  to  modification  date)  than
              file2, or if file1 exists and file2 does not.
       file1 -ot file2
              True  if file1 is older than file2, or if file2 exists and file1
              does not.
       file1 -ef file2
              True if file1 and file2 refer to the same device and inode  num‐
              bers.
       -o optname
              True  if  shell  option  optname  is  enabled.   See the list of
              options under the description  of  the  -o  option  to  the  set
              builtin below.
       -z string
              True if the length of string is zero.
       string
       -n string
              True if the length of string is non-zero.

       string1 == string2
       string1 = string2
              True  if  the strings are equal.  = should be used with the test
              command for POSIX conformance.

       string1 != string2
              True if the strings are not equal.

       string1 < string2
              True if string1 sorts before string2 lexicographically.

       string1 > string2
              True if string1 sorts after string2 lexicographically.

       arg1 OP arg2
              OP is one of -eq, -ne, -lt, -le, -gt, or -ge.  These  arithmetic
              binary  operators return true if arg1 is equal to, not equal to,
              less than, less than or equal to, greater than, or greater  than
              or  equal  to arg2, respectively.  Arg1 and arg2 may be positive
              or negative integers.
 *********************************************************************************
 $1, $2, $3, ... are the positional parameters.
"$@" is an array-like construct of all positional parameters, {$1, $2, $3 ...}.
"$*" is the IFS expansion of all positional parameters, $1 $2 $3 ....
$# is the number of positional parameters.
$- current options set for the shell.
$$ pid of the current shell (not subshell).
$_ most recent parameter (or the abs path of the command to start the current shell immediately after startup).
$IFS is the (input) field separator.
$? is the most recent foreground pipeline exit status.
$! is the PID of the most recent background command.
$0 is the name of the shell or shell script.
