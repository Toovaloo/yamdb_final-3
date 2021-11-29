# api_yamdb

Учебный проект курса Python-разработчик на Яндекс.Практикум.

![example workflow](https://github.com/bayborodin/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

## Описание проекта YaMDb

Проект **YaMDb** собирает **отзывы** (**Review**) пользователей на
**произведения** (**Titles**).
Произведения делятся на категории: «Книги», «Фильмы», «Музыка». Список
**категорий** (**Category**) может быть расширен администратором (например,
можно добавить категорию «Изобразительное искусство» или «Ювелирка»).

Сами произведения в **YaMDb** не хранятся, здесь нельзя посмотреть фильм или
послушать музыку.

В каждой категории есть **произведения**: книги, фильмы или музыка. Например,
в категории «Книги» могут быть произведения «Винни-Пух и все-все-все» и
«Марсианские хроники», а в категории «Музыка» — песня «Давеча» группы
«Насекомые» и вторая сюита Баха.

Произведению может быть присвоен **жанр** (**Genre**) из списка
предустановленных (например, «Сказка», «Рок» или «Артхаус»). Новые жанры может
создавать только администратор.

Благодарные или возмущённые пользователи оставляют к произведениям текстовые
**отзывы** (**Review**) и ставят произведению оценку в диапазоне от одного до
десяти (целое число); из пользовательских оценок формируется усреднённая оценка
произведения — **рейтинг** (целое число). На одно произведение пользователь
может оставить только один отзыв.

## Стек технологий

- Python 3
- Django
- Django REST Framework
- Simple JWT

## Запуск приложения

Переименуйте файл `.env.example` в `.env`:

```shell
mv .env.example .env
```

и поменяйте параметры подключения к базе данных.

Запустите контейнеры:

```shell
docker-compose up -d --build
```

При первом запуске необходимо применить миграции и создать супер-пользователя:

```shell
docker-compose exec web sh
python manage.py migrate --noinput
python manage.py createsuperuser
python manage.py collectstatic --no-input
```

Остановка приложения:

```shell
docker-compose down
```

## Демонстрационные данные

Для загрузки демонстрационных данных можно воспользоваться штатным функционалом
Django:

```shell
docker-compose exec web python manage.py loaddata fixtures.json
```

## Готовый образ приложения

Готовый образ приложения доступен для загрузки с DockerHub:

```shell
docker pull nbayborodin/api_yamdb:v23.11.2021
```

## Автор

Николай Байбородин ([Twitter](https://twitter.com/bayborodin) | [GitHub](https://github.com/bayborodin) | [Telegram](https://t.me/nbayborodin))

## Демо

[yamdb.bayborodin.ru](http://yamdb.bayborodin.ru)

## Лицензия

Данный проект распространяется под лицензией [MIT](http://opensource.org/licenses/MIT).
