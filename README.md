Sharpturn CSAW 2015 Forensics Writeup:

Material provided: A shelled out .git folder containing obj files and some direct header / master files.  
Hint: git fsck - v 
 
The aim of this challenge was to recreate files from a hash created by git and fix errors added into the code.  
 
Commands used: 
1. git fsck -v # Checks through the header / master and all object files to verify hashes and check for mismatches and corruptions. 
2. git hash-object <object> || <file> # Creates a hash of an object or a file. Useful to verify a file hasn't been changed. 
3. git cat-file -p <object>  # Derives the contents of a file created by git's internal structure. 
(Relevant document I used during the competition: https://www.kernel.org/pub/software/scm/git/docs/user-manual.html#recovering-from-repository-corruption)  
Content: 
After running git fsck -v and running through each file with git cat-file -p <object> the contents are: 
1. Sharp.cpp (Several versions, 3 of them have sha mismatches, I.E. someone edited it) 
2. Makefile (Used to compile the code, I actually had to edit it to make sure everything worked.)  
3. Commit logs (Hints for the various challenges, I.E. don't let your calculator fool you, there's only two primes.)  
Challenge Details and completion:  
After analyzing the structure and pulling out each file, I recreated the files in the directory and ran git hash-object on them. All but three matched up. (Three versions of the sharp.cpp program.) These files had each been introduced one error.  
Part2: Input 51337 -- Answer: Input 31337 (ELEET) 
Part 5: Find the primes of 270031727027 - Answer: Perform a digit flip on each individual number until the hash matched the original value. (Can be handled through a simple python script that I'll add in or show later.) 
cout << &lag Answer: cout << flag (Fairly straight forward. & symbol references an address. Lag wasn't defined. ) 
 
After these fixes and a bit of shenanigans, the flag was derived by running the program and entering the correct answers to each question. I further optimized the program by directly entering values rather than waiting for stdin. 
