%include 'in_out.asm' ;Подключение внешнего файлв
SECTION .data ;Секция инициированных данных
msg1: DB 'Введите значение x: ',0h
msg2: DB 'Введите значение а: ',0h
result: DB 'Результат: ',0h
SECTION .bss ;Секция не инициированных данных
x RESB 10 ;Буфер размером 10 байт
a RESB 10 ;Буфер размером 10 байт
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
; ---------- Вывод сообщения 'Введите значение х: '
mov eax,msg1 ;Запись адреса выводимого сообщения в 'EAX'
call sprint ;Вызов подпрограммы печати сообщения
; ---------- Ввод 'x'
mov ecx,x ;Запись адреса переменной в 'ECX'
mov edx,10 ;Запись длины вводимого сообщения в 'EDX'
call sread ;Вызов подпрограммы ввода сообщения
; ---------- Вывод сообщения 'Введите знаение а: '
mov eax,msg2 ;Запись адреса выводимого сообщения в 'EAX'
call sprint ;Вызов подпрограммы печати сообщения
; ---------- Ввод'а'
mov ecx,a ;Запись адреса переменной в 'ECX'
mov edx,10 ;Запись длины вводимого сообщения в 'EDX'
call sread ;Вызов подпрограммы ввода сообщения
; ---------- Преобразование 'х' из символа в число
mov eax,x ;Запись введенного сообщения в 'EAX'
call atoi ;Вызов подпрограммы перевода символа в число
mov[x],eax ; Запись преобразованного числа в 'x'
; ---------- Преобразование 'а' из символа в число
mov eax,a ;Запись введенного сообщения в 'EAX'
call atoi ;Вызов подпрограммы преобразования символа в число
mov [a],eax ;Запись преобразованного числа в 'a'
; ---------- Сравниваем 'А' с 1
mov ecx,[a] ;'ECX = a'
cmp ecx,1 ;Сравниваем 'a' и 1
je another_function ;Если 'a=1', то переход на метку 'another_function'
mov ecx,[a] ;Иначе 'ecx = a'
mul ecx ;'EAX = EAX * EAX'
mov edi,eax ;Запись результата вычисления в 'edi'
jmp fin ;Переход на 'fin'
another_function:
mov eax,[x] ;'EAX = x'
add eax,10 ;'EAX = EAX + 10'
mov edi,eax ;Запись результата вычислений в 'edi'
; ---------- ВЫвод результата
fin:
mov eax,result ;Запись адреса выводимого сообщения в 'EAX'
call sprint ;Вызов подпрограммы печати сообщения
mov eax,edi ;Запись результата вычислений в 'EAX'
call iprintLF ;Вывод результата вычислений
call quit ;Вызов подпрограммы завершения