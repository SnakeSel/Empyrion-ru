# Empyrion - Galactic Survival Русская локализация

- Empyrion - Galactic Survival: Файлы перевода для игры. Версия 1.12.3
- Reforged Eden: Файлы перевода для Reforged Eden 1.11
- Original: Оригинальные файла из игры для перевода. (Временная папка)

Базовые файлы перевода игры от [SlinZa](https://steamcommunity.com/sharedfiles/filedetails/?id=3004261316)

Базовые файлы перевода Reforged Eden от [Адам Вейсхаупт](https://steamcommunity.com/sharedfiles/filedetails/?id=2916309536)

## Установка перевода Empyrion - Galactic Survival
### В базовую директорию для новой игры
Заменить файлы в директории установки игры:
1. Dialogues.csv `\Empyrion - Galactic Survival\Content\Configuration\Dialogues.csv`
2. PDA.csv `\Empyrion - Galactic Survival\Content\Extras\PDA\PDA.csv`
3. Localization.csv `\Empyrion - Galactic Survival\Content\Extras\Localization.csv`

### В папку с сохранениями:
1. PDA.csv `\Empyrion - Galactic Survival\Saves\Games\ВАШЕ_СОХРАНЕНИЕ\PDA\PDA.csv`

## Установка перевода Reforged Eden
### В базовую директорию в мастерской для новой игры
Заменить файлы в директории мастерской:
1. Dialogues.csv `SteamLibrary\steamapps\workshop\content\383120\2550354956\Content\Configuration\Dialogues.csv`
2. PDA.csv `SteamLibrary\steamapps\workshop\content\383120\2550354956\Content\Extras\PDA\PDA.csv`
3. Localization.csv `SteamLibrary\steamapps\workshop\content\383120\2550354956\Content\Extras\Localization.csv`

> Можно скопировать сценарий RE из мастерской (`SteamLibrary\steamapps\workshop\content\383120\2550354956`) в папку Empyrion - `Galactic Survival\Content\Scenarios` 
> и переименовать как вам удобно.  
> И тогда заменять файлы в ней.  
> **При переносе сценария - только новая игра!**  
> Это позволит избежать возможную поломку сохранения при обновлении версии RE

### В папку с сохранениями:
1. PDA.csv `\Empyrion - Galactic Survival\Saves\Games\ВАШЕ_СОХРАНЕНИЕ\PDA\PDA.csv`

## 
#### Поиск не закрытых тегов
```
cat Dialogues.csv | awk -v FPAT="([^,]*)|(\"[^\"]+\")" '{print $10}' | grep -E '<([a-z]+)([^>]+)>' | grep -vP '<([a-z]+)([^>]+)*(?:>(.*)<\/\1>|\s+\/>)'
```