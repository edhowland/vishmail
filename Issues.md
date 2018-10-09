# Issues - VishMail

##### Format:

- Solved issues are Heading level 3
- Current issues are Heading Level 2
- Issues are numbers in  reverse chrono order.
- Issue numbers are 3-4 numerals with leading zeros


### Issue 002: Single character output, like for h,l keys in compose add extra newline

Problem was solved by changing repl() to use prints instead of println.
If new line is needed, pipe thru %echo at the end of the ppipeline.


### Issue 001: In compose mail, unknown commands causes exception in Vish itself.

Also in reading a message: msg.vs w/unknown key press.
 How should beep be performed?
