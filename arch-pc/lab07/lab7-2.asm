%include 'in_out.asm' ;Подключение внешнего файлв
SECTION .data ;Секция инициированных данных
msg1: DB 'Введите В: ',0h
msg2: DB 'Наибольшее число: ',0h
A DD '20'
C DD '50'
SECTION .bss ;Секция не инициированных данных
max RESB 10 ;Буфер размером 10 байт
B RESB 10 ;Буфер размером 10 байт
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
mov eax, ;Запись адреса выводимого сообщения в 'EAX'
call sprint ;Вызов подпрограммы печати сообщения
mov ecx,B ;Запись адреса переменной в 'ECX'
mov edx,10 ;Запись длины вводимого сообщения в 'EDX'
call sread ;Вызов подпрограммы ввода сообщения
mov eax,B ;Вызов подпрограммы ввода сообщения
call atoi ;Вызов подпрограммы перевода символа в число
mov [B],eax ; Запись преобразованного числа в 'B'
mov ecx,[A] ;'ECX = A'
mov [max],ecx ;'max = A'
cmp ecx,[C] ;Сравниваем 'A' и 'C'
jg check_B ;Если 'A>C' , то переход на метку 'check_B'
mov ecx,[C] ;Иначе 'ECX = C'
mov [max],ecx ;'max = C'
check_B:
mov eax,max ;Запись адреса переменной в 'EAX'
call atoi ;Вызов подпрограммы перевода символа в число
mov [max],eax ;Запись преобразованного числа в 'max'
mov ecx,[max] 
cmp ecx,[B] ;Сравниваем 'max(A,C)' и 'B'
jg fin ;Если 'max(A,C)'>B, то переход на 'fin'
mov ecx,[B] ;Иначе 'ECX = B'
mov [max],ecx 
fin:
mov eax,msg2 ;Запись адреса выводимого сообщения в 'EAX'
call sprint ;Вызов подпрограммы печати сообщения
mov eax,[max]
call iprintLF ;Вывод 'max(A,B,C)'
call quit ;Вызов подпрограммы завершения