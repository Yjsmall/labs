.globl factorial

.data
n: .word 2

.text
# Don't worry about understanding the code in main
# You'll learn more about function calls in lecture soon
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

# factorial takes one argument:
# a0 contains the number which we want to compute the factorial of
# The return value should be stored in a0
factorial:
    # YOUR CODE HERE
    addi t0, x0, 1 # i = 1
    add t1, x0, a0 # idx = n
    addi a0, x0, 1 # sum = 1
    
iter:
    blt t1, x0, unit_case
    mul a0, t0, a0 # sum *= i
    addi t0, t0, 1 # i++
    addi t1, t1, -1 # idx--

    bne t1, x0, iter
unit_case:
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
