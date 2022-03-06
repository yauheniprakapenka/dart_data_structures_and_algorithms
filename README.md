## Структуры данных и алгоритмы в Dart
---

Изучаю структуры данных и алгоритмы в Dart по книге от Vincent Ngo, Jonathan Sande и Kelvin Lau. Также изучаю unit-тесты и тестовое покрытие.

<p align="center">
    <img src="https://user-images.githubusercontent.com/47568606/156896613-d75aff24-8445-4a4a-9701-ed33c8493765.png" height="200">
</p>

## Запустить unit-тесты

```
dart test
```

## Проверить тестовое покрытие

Установить библиотеку lcov

```
brew install lcov
```

Открыть отчет с покрытием

```
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

<p align="center">
    <img src="https://user-images.githubusercontent.com/47568606/156918081-e956c706-8341-4963-9d08-ceeeae74418d.png" height="180">
</p>