1)	Para cada um dos códigos a seguir, sendo a, b e c inteiros longos (64 bits) residindo nos endereços 0, 16 e 32, respectivamente,  traduza-os para assembly RISC-V:
a.
a = a + b * c;
b = a * c;
c = b % a;
 
mult x2, x16,x32	# x2 = b * c 
add x0, x0, x2	  # x0 = x2 + x0 / a = a + x2

mult x16, x0, x32	# b = a * c

rem x32, x16, x0  #c = b % a

b.	
if (a < b){
  c = c + 1;
}
 
slt x1,x0,x16		#comparei if x0 >=  x16 / a < b
addi f32,f32,1	#if not then c = c + 1

c.	 
while (a < 100){
  a = a + b;
 }
 
while:			#while
  LI t1, 100		#t1 = 100
  BGE x0, t1, cont	#compare if x0 equals t1 / a < 100
  ADD x0, x0, x16	#if equals then a = a + b
  J while		#jump while
Cont:

d.	 
for (a = 10; a >= 0; a--){
  if (a % 2 == 0){
    b = b - 2;
}

L1 x0,0
For
  L1 t1,10		#t1 = 10
  BLT x0, t1, cont  	#compare x0 with t1 if not then cont
  L t2, x1		#load x1 in t2
  SLLI t2, t2, 63  	#movo 63 endereços para a esquerda
  SRLI t2, t2, 63	#movo 63 endereços para a direita, isso vai me dar o bit mais significativo que é o único 2^1 que pode ser impar, se esse bit for impar, o número é impar, se esse bit mais significativo for par, o número será par
  BEQZ, t2, 0 	#verifico se o registrador temporário é 0, se sim, faz as condições do if, caso não pula 
  ADDI x16, x16, -2	#b = b - 2
  ADDI x0, x0, -1	#a = a - 1 / a--
  J for			#jump for
Cont:

2)	Seja n1, n2 e n3 pontos flutuantes de precisão dupla, com endereço de memória armazenado em x1, x2 e x3, respectivamente, traduza os códigos a seguir em assembly RISC-V:
a.	 
n1 = n1 + n3 * 4 / n2;

FMUL t4, x3, 4		#t4 = n3 * 4
FDIV t5, t4, x2		#t5 = t4 / x2
FADD x1, x1, t5		#x1 = x1 + t5

b.	 
while (n1 != n2){
  n1 += 1.0;
  n2 -= 1.0;
}

while:					#while
	FEQ x4, x1, x2, cont	#compare if x1 equals x2, if not then cont
	FL, x5, x1, 1			#if equals then x5 = 1
	FADD, x1, x1, x5		#x1 = x1 + 1(x5)	
	FSUB, x2, x2, x5		#x2 = x2 – 1(x5)
	J while			#jump while
Cont:

3)	Seja v um vetor de inteiros longos (64 bits), com endereço base armazenado no registrador x1, i um inteiro longo  residindo no endereço 1024, traduza os códigos a seguir em assembly RISC-V
a.
v[i] = v[i] + v[i+1];
 
LUI s0, 1024		#load i address
	ADD t0, t0, s0 	#address of array[i]
	LW t1, 0(t0) 		#t1 = array[i]
	ADDI t2, t1, 1 	 #v[i+1]
	ADD t1, t1, t2  	#v[i] = v[i] + v[i+1]

b.
for (i = 1; i < 10; i++){
  v[i] = v[i] * v[i-1];
}
 
LUI s0, 1024			#load i address
	ADDI, s1, zero, 1 	#i = 1
	ADDI, t2, zero, 10	#t2 = 10
	
for:
	BGE s1, t2, cont 	#if not then cont
	ADD t0, t0, s0  	#address of array[i]
	LW t1, 0(t0)		#t1 = array[i]
	ADDI t3, t1, -1	#v[i-1]
	VMUL t1, t1, t3	#v[i] = v[i] * v[i-1]
	ADDI s1, s1, 1 	#i = i+1
	J for			#jump for
