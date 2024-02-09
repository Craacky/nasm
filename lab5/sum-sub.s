
	.global sum
sum: 	mov r3, #0 		@ r3 = 0
loop: 	ldrb r2, [r0], #1 	@ r2 = *r0++; Загрузка элемента массива
	add r3, r2, r3 		@ r3 += r2; Вычисление суммы
	cmp r0, r1 		@ if(r0 != r1); Проверка на конец массива
	bne loop 		@ Цикл, аналог «goto loop» архитектуры х86
	mov pc, lr 	
