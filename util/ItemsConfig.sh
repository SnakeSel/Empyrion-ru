#!/bin/bash

# steamapps/workshop/content/383120/2550354956/Content/Configuration

FILE="../Reforged Eden/Content/Configuration/ItemsConfig.ecf"


replace(){
    sed -i "s|${1}|${2}|g" "${FILE}"
}

# Если нет файла, выход
if [ ! -f "${FILE}" ];then
    echo "[err]file ${FILE} not found!"
    exit 1
fi

# Если нет бэкапа, создаем
if [ ! -f "${FILE}_bkup" ];then
    cp -f "${FILE}" "${FILE}_bkup"
fi

# В тексте не должно быть запятых ","
replace "Unlocks environmental protection upgrades for Augmented Armor" "Открывает защитные улучшения для Улучшенной Брони"
replace "Attempting to install an incompatible armor upgrade in a suit of armor will DESTROY the armor booster." "Попытка установить несовместимый усилитель приведет к разрушению усилителя!"
replace "Ensure you are installing the correct armor upgrade" "Убедитесь что вы устанавливаете правильный усилитель"
replace "Ensure you are installing Augmented Upgrades into Augmented Armor" "Убедитесь что вы устанавливаете Улучшенный Усилитель на Улучшенную Броню"
replace "Unlocks mobility and combat upgrades for Augmented Armor" "Открывает улучшения мобильности и боевых характеристик для Брони"
replace "Unlocks Augmented Shield generators" "Открывает улучшенные генераторы щита"
replace "Unlocks Augmented propulsion systems" "Открывает улучшенные двигатели"
replace "Unlocks Augmented weapon systems." "Открывает улучшенные системы вооружения"
replace "Currently has no use" "На данный момент не используется"
replace "Unlocks research into Voidium" "Открывает исследование Воидиума"
replace "Required to harvest Voidium and extract Dark Matter from it" "Требуется для сбора Воидиума и извлечения из него Темной материи"
replace "Further researches Voidium harvesting" "Дальнейшие исследования сбора воидиума"
replace "Another fine brew developed by" "Еще один прекрасный сорт разработанный компанией"
replace "Use with caution" "Используйте с осторожностью"
replace "Schematic required to unlock" "Для разблокировки требуется схема"
replace "A potent beverage that grants increased stamina and health regeneration at the cost of increased body temperature and radiation for 5 minutes" "Сильнодействующий напиток дающий повышенную выносливость и восстановление здоровья за счет повышения температуры тела и радиации на 5 минут"
replace "Can only be installed in Augmented Light Armor" "Устанавливается только на Улучшенную Легкую Броню"
replace "Can only be installed in Augmented Armor" "Устанавливается только на Улучшенную Броню"
#replace "" ""