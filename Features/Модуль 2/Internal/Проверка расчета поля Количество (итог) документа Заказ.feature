﻿#language: ru

@tree

Функционал: Проверка расчета поля Количество (итог) документа Заказ

Как Менеджер по закупкам я хочу
создать документ Заказ
чтобы списать товары

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета поля Количество (итог) документа Заказ
*Создание документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
*Заполнение шапки документа
	И заполнение шапки документа Заказ
*Заполнение табличной части	документа	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000011' | 'Продукты'        |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000030' | 'Колбаса'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '500,00'
	И в таблице "Товары" я завершаю редактирование строки
*Проверка поля Количество (итог) документа
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '5'			
*Запись и проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ * от *' в течение 20 секунд		