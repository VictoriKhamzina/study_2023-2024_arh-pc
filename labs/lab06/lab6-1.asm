%include 'in_out.asm'
SECTION .bss ;Секция неинициированных данных
buf1:    RESB 80 ;Буфер размером 80 байт
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
mov eax,6
mov ebx,4
add eax,ebx ;Сложение значений регистров
mov [buf1],eax ;Запись значения регистра 'EAX' в переменную
mov eax,buf1 ;Запись адреса переменной в регистр 'EAX'
call sprintLF ;Вызов подпрограммы печати сообщения
call quit ;Вызов подпрограммы завершения