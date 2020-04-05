# Удобная документация по Joomla! на русском языке.

## Начало работы

1. Клонировать репозиторий
```
git clone https://github.com/webmasterskaya/joomla-docs-rus.git
```
2. Установить Python [https://www.python.org/](https://www.python.org/)
3. Установить `sphinx` и его зависимости
```
pip install sphinx sphinx-autobuild sphinx_rtd_theme sphinxcontrib-phpdomain
```
4. Притянуть модули
```
git submodule init && git submodule update
```
5. Установить зависимости
```
composer install
```
6. Запустить сборку проекта
```
./docks/make html
```
