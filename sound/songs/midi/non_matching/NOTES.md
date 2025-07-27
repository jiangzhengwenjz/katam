* se_08D558B8: 26*se_08D558B8_mvl/mxv (viewed in hexadecimal as 0x13) is after the loop rather than before.
If the loop is moved from tick 16 to 17, this is fixed but the wait is at the end of the loop, rather than 
after the loop.  There are also some unsplitted waits at the end but those should be easy to fix.
