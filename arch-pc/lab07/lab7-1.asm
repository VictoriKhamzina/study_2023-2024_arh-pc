%include 'in_out.asm' ;Подключение внешнего файла
SECTION .data ;Секция инициированных данных
msg1: DB 'Сообщение №1',0
msg2: DB 'Сообщение №2',0
msg3: DB 'Сообщение №3',0
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
jmp _label3
_label1:
mov eax,msg1 ;Вывод на экран строки
call sprintLF ;'Сообщение №1'
jmp _end
_label2:
mov eax,msg2 ;Вывод на экран строки
call sprintLF ;'Сообщение №2'
jmp _label1
_label3:
mov eax,msg3 ;Вывод на экран строки
call sprintLF ;'Сообщение №3'
jmp _label2
_end:
call quit ;Вызов подпрограммы завершения