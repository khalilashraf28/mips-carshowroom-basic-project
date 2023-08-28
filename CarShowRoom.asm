.data
prompt: .asciiz "-----Welcome to Carshowroom-----\n"
userinput: .asciiz "\nMenu \n1.Buy   \n2.Sell\nSelect Option: "
userinput1: .asciiz "\nWhich Car you want to buy\n1.Corolla\n2.Civic\n3.City\n4.Cultus\n5.Alto\nSelect Option: "
userinput2: .asciiz "\nWhich Car you want to Sell\n1.Corolla\n2.Civic\n3.City\n4.Cultus\n5.Alto\nSelect Option: "
wrongc: .asciiz "Wrong Selection :("
corollaB: .asciiz "Price of Toyota Corolla is 7,799,000PKR\nPress 0 to buy the car: \n"
corolladone: .asciiz "*****Congradulation for your new Toyota Corolla*****\n"
corollase: .asciiz "Selling Price of Toyota Corolla is 6,000,000PKR\nPress 0 to Sell the car: \n"

civicB: .asciiz "Price of Toyota Civic is 10,199,000PKR\nPress 0 to buy the car: \n"
civicdone: .asciiz "*****Congradulation for your new Honda Civic****\n"
civicse: .asciiz "Selling Price of Toyota Civic is 9,000,000PKR\nPress 0 to Sell the car: \n"

cityB: .asciiz "Price of Toyota City is 5,979,000PKR\nPress 0 to buy the car: \n"
citydone: .asciiz "*****Congradulation for your new Honda City*****\n"
cityse: .asciiz "Selling Price of Toyota City is 4,500,000PKR\nPress 0 to Sell the car: \n"

cultusB: .asciiz "Price of Suzuki Cultus is 4,366,000PKR\nPress 0 to buy the car: \n"
cultusdone: .asciiz "*****Congradulation for your new Suzuki Cultus*****\n"
cutlusse: .asciiz "Selling Price of Suzuki Cultus is 3,250,000PKR\nPress 0 to Sell the car: \n"

altoB: .asciiz "Price of Suzuki Alto is 2,935,000PKR\nPress 0 to buy the car: \n"
altodone: .asciiz "*****Congradulation for your new Suzuki Alto*****\n"
altose: .asciiz "Selling Price of Suzuki Alto is 2,000,000PKR\nPress 0 to Sell the car: \n"

newline: .asciiz "\n"
sold: .asciiz "*****Thanks for Selling the Car*****\n"
thanks: .asciiz "Thanks For Coming :)"


.text
.globl main
main:

li $v0,4
la $a0,prompt
syscall

li $v0,4
la $a0,userinput
syscall

li $v0,5
syscall
move $t0,$v0

beq $t0,1,buy
beq $t0,2,sell
j wrong

wrong:
li $v0,4
la  $a0,wrongc
syscall
j exit

buy:
li $v0,4
la $a0,userinput1
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,newline
syscall

beq $t0,1,corolla
beq $t0,2,civic
beq $t0,4,cultus
beq $t0,3,city
beq $t0,5,alto
j wrong

corolla:

li $v0,4
la $a0,corollaB
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit

li $v0,4
la $a0,corolladone
syscall

j exit

civic:

li $v0,4
la $a0,civicB
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit

li $v0,4
la $a0,civicdone
syscall

j exit

city:

li $v0,4
la $a0,cityB
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit

li $v0,4
la $a0,citydone
syscall

j exit

cultus:

li $v0,4
la $a0,cultusB
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit

li $v0,4
la $a0,cultusdone
syscall

j exit

alto:

li $v0,4
la $a0,altoB
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit

li $v0,4
la $a0,altodone
syscall

j exit

sell:

li $v0,4
la $a0,userinput2
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,newline
syscall

beq $t0,1,corollas
beq $t0,2,civics
beq $t0,4,cultuss
beq $t0,3,citys
beq $t0,5,altos
j wrong

corollas:
li $v0,4
la $a0,corollase
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit
j Texit

civics:
li $v0,4
la $a0,civicse
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit
j Texit

cultuss:
li $v0,4
la $a0,cutlusse
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit
j Texit

citys:
li $v0,4
la $a0,cityse
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit
j Texit

altos:
li $v0,4
la $a0,corollase
syscall

li $v0,5
syscall
move $t0,$v0

bnez $t0,exit
j Texit

Texit:

li $v0,4
la $a0,sold
syscall
j exit

exit:

li $v0,4
la $a0,thanks
syscall

li $v0,10
syscall
