---
## Front matter
title: "Отчёт по лабораторной работе №2"
subtitle: "Дисциплина: архитектура компьютера"
author: "Хамзина Виктория Валентиновна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Ознакомиться с принципами работы и применением средств контроля
версий. Приобрести практические навыки по работе с системой git, создать рабочее
пространство и репозиторий курса.

# Выполнение лабораторной работы

![Cоздала учетную запись на сайте github](image/image1.jpg){#fig:001 width=100%}

## Базовая настройка Git

![Открыла терминал. Указала имя и почту владельца репозитория](image/image2.png){#fig:002 width=100%}

![Настроила utf-8 в выводе сообщений git](image/image3.png){#fig:003 width=100%}

![Создала начальную ветку репозитория и назвала ее "master"](image/image4.png){#fig:004 width=100%}

![Настроила параметры autocrlf и safecrlf](image/image5.png){#fig:005 width=100%}

## Создание SSH-ключа

![Сгенерировала приватный и открытый ssh ключи](image/image6.png){#fig:006 width=100%}

![Скопировала из терминала ключ в буфер обмена, вставила в появившееся на сайте поле и назвала его Title](image/image7.png){#fig:007 width=100%}

![Создала shh ключ](image/image8.png){#fig:008 width=100%}

## Создание рабочего пространства

![Создала каталог для предмета "Архитектура компьютера"](image/image9.png){#fig:009 width=100%}

## Создание репозитория курса на основе шаблона

![Создала репозиторий курса на основе шаблона](image/image10.png){#fig:010 width=100%}

![Перешла в каталог курса и клонировала созданный репозиторий](image/image11.png){#fig:011 width=100%}

## Настройка каталога курса

![Удалила лишние файлы](image/image12.png){#fig:012 width=100%}

![Создала необходимые каталоги](image/image13.png){#fig:013 width=100%}

![Выполнила команды "git add ." и "git commit -am"](image/image14.png){#fig:014 width=100%}

![Отправила файлы на сервер с помощью команды "git push"](image/image15.png){#fig:015 width=100%}

![Проверила правильность создания иерархии рабочего пространства в локальном репозитории и на странице github](image/image16.png){#fig:016 width=100%}

# Задания для самостоятельной работы

![Создала отчет по выполнению второй лабораторной работы в соответствующем каталоге](image/image17.png){#fig:017 width=100%}

![Скопировала отчет по выполнению первой лабораторной работы в соответствующий каталог](image/image18.png){#fig:018 width=100%}

![Загрузила файлы на github](image/image19.png){#fig:019 width=100%}

![Проверила, что файлы загружены на github](image/image20.png){#fig:020 width=100%}

# Вывод

Идеология и применение средств контроля версий изучены. После базовой
настройки git создали иерархию рабочего пространства в локальном репозитории и
на странице github.


