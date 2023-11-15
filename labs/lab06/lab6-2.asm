%include 'in_out.asm'
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
mov eax,6
mov ebx,4
add eax,ebx ;Сложение значений регистров
call iprint ;Вызов подпрограммы печати сообщения
call quit ;Вызов подпрограммы завершения