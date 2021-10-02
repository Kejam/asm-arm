.global main /* entry point must be global */
.func main /* 'main' is a function */

main: /* This is main */
mov r0, #2 /* Put a 2 into register r0 */
bx lr /* Return from main */