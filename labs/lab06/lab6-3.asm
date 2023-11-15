%include 'in_out.asm' ;Подключение внешнего файла
SECTION .data ;Секция инициированных данных
div: DB 'Результат: ',0 ;
rem: DB 'Остаток от деления: ',0 ;
SECTION .text ;Код программы
GLOBAL _start ;Начало программы
_start: ;Точка входа в программу
mov eax,4 ;EAX = 4
mov ebx,6 ;EBX = 6
mul ebx ;EAX = EAX * EBX
add eax,2 ;EAX = EAX + 2
xor edx,edx ;обнуляем EDX для корректной работы div
mov ebx,5 ;EBX = 5
div ebx ;EAX = EAX / 5
mov edi,eax ;запись результата вычисления в 'edi'
mov eax,div ;вызов подпрограммы печати
call sprint ;Сообщения 'Результат: '
mov eax,edi ;Вызов подпрограммы печати значения
call iprintLF ;Из 'edi' в виде символов
mov eax,rem ;Вызов подпрограммы печати
call sprint ;Сообщения 'Остаток от деления: '
mov eax,edx ;Вызов подпрограммы печати значения
call iprintLF ;Из 'edx' (остаток) в виде символов
call quit ;Вызов подпрограммы завершения
