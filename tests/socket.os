﻿Перем юТест;

Функция ПолучитьСписокТестов(ЮнитТестирование) Экспорт
	
	юТест = ЮнитТестирование;
	
	ВсеТесты = Новый Массив;
	
	ВсеТесты.Добавить("ТестДолжен_СоздатьСокет");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_СоздатьСокет() Экспорт
	
	Сервер = Новый TCPСервер("localhost", 1541);
	
	Сервер.СлушатьСоединения(ЭтотОбъект, "Обработчик");
	
	Консоль = Новый Консоль();
	Пока Истина Цикл
		Если Консоль.НажатаКлавиша Цикл
			
			Клавиша = Консоль.Прочитать();
			
			Если Клавиша = 27 Тогда // esc
				Сервер.Остановить();
				Прервать;
			КонецЕсли;
			
		КонецЕсли;
	КонецЦикла;
	
КонецФункции
