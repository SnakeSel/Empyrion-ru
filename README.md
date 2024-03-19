# Empyrion-ru
Empyrion - Galactic Survival Русская локализация

Базовые файлы перевода игры от [SlinZa](https://steamcommunity.com/sharedfiles/filedetails/?id=3004261316)

- Empyrion - Galactic Survival: Файлы перевода для игры.
- Reforged Eden: Файлы перевода для Reforged Eden.
- Original: Оригинальные файла из игры для перевода. (Временная папка)

## Установка перевода Empyrion - Galactic Survival
### В базовую директорию для новой игры
Заменить файлы в директории установки игры:
1. Dialogues.csv `\Empyrion - Galactic Survival\Content\Configuration\Dialogues.csv`
2. PDA.csv `\Empyrion - Galactic Survival\Content\Extras\PDA\PDA.csv`
3. Localization.csv `\Empyrion - Galactic Survival\Content\Extras\Localization.csv`

### В папку с сохранениями:
1. PDA.csv `\Empyrion - Galactic Survival\Saves\Games\ВАШЕ_СОХРАНЕНИЕ\PDA\PDA.csv`

## Установка перевода Reforged Eden

## 
#### Поиск не закрытых тегов
```
cat Dialogues.csv | cut -d"," -f10 | grep -E '<([a-z]+)([^>]+)>' | grep -vP '<([a-z]+)([^>]+)*(?:>(.*)<\/\1>|\s+\/>)'
```