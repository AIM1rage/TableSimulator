### Ревью - Шеметов Павел ФТ-104-1

##### Проблемы/замечания
* [src/Cell.jack](https://github.com/pevel-dev/TableSimulator/blob/master/src/Cell.jack) 28-108 строка - дублирование кода, скорее всего можно было бы развернуть абстракцию и положить все данные которые рисуются в **printNumberX** в массивы. Даже если не делать так, можно было бы вынести задержку и формулу. //исправлено
* [src/Game.jack](https://github.com/pevel-dev/TableSimulator/blob/master/src/Game.jack) 71, 73 - название переменных или функций на транслите //локальный мем
* [src/Game.jack](https://github.com/pevel-dev/TableSimulator/blob/master/src/Game.jack) 71, 73 - дублирование формулы //исправлено
* Стоило бы сделать gameField новой сущностью, и управлять ей через методы //под вопросом
* Везде где есть конструкция ```Memory.alloc(n);``` - можно писать ```Array.new(n);``` //данный шаг связан прежде всего с переполнением стека
* [src/Game.jack](https://github.com/pevel-dev/TableSimulator/blob/master/src/Game.jack) Почему в метод run передается levelIndex а не Level? //чтоб не плодить фиксированные объекты класса Level.jack 

##### Пожелания
* Все таки рисовать графику через массивы а не MemoryPoke

##### Плюсы
* Кажется учтечек нет, все грамотно потёрли
* Интерфейс красивый, интуитивно понятный.
