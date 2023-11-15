%include 'in_out.asm' ;Подключение внешнего файла
SECTION .data ;Секция инициированных данных
rem: DB 'Выражение для вычисления: 3(x+10)-20',0
msg: DB 'Введите значение переменной x: ',0 
div: DB 'Результат: ', 0
SECTION .bss ;Секция неинициированных данных
x: RESB 80 ;Буфер размером 80 байт
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
mov eax,rem ;Запись адреса выводимого сообщения в 'EAX'
call sprintLF ;Вызов подпрограммы печати сообщения
mov eax,msg ;Запись адреса выводимого сообщения в 'EAX'
call sprint ;Вызов подпрограммы печати сообщения
mov ecx,x ;Запись адреса переменной в 'ECX'
mov edx,80 ;Запись длины вводимого сообщения в 'EDX'
call sread ;Вызов подпрограммы ввода сообщения
mov eax,x ;Вызов подпрограммы преобразования
call atoi ;ASCII кода в число, 'eax = x'
add eax,10 ;EAX = EAX + 10
mov ebx,3 ;EBX = 3
mul ebx ;EAX = EAX * EBX
add eax,-20 ;EAX = EAX - 20
mov edi,eax ;Запись результата вычислений в 'edi'
mov eax,div ;Вызов подпрограммы печати
call sprint ;Сообщения 'Результат: '
mov eax,edi ;Вызов подпрограммы печати значения
call iprintLF ;Из 'edi' в виде символов
call quit ;Вызов подпрограммы завершения
