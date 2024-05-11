#!/bin/bash

# steamapps/workshop/content/383120/2550354956/Content/Configuration

FILE="../Reforged Eden/Content/Configuration/ItemsConfig.ecf"


replace(){
    local text
    # проверяем, что строка есть
    if ! grep -q "${1}" "${FILE}";then
        echo "[WRN]\"$1\" not found in ${FILE}"
        #return 1
    fi

    # Еще раз, никаких запятых!
    text=$(echo "${2}"|sed 's|,||g')

    sed -i "s|${1}|${text}|g" "${FILE}"
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
replace "Unlocks environmental protection upgrades for Augmented Armor" "Открывает защитные улучшения для Модернизированной Брони"
replace "Attempting to install an incompatible armor upgrade in a suit of armor will DESTROY the armor booster." "Попытка установить несовместимый усилитель приведет к разрушению усилителя!"
replace "Ensure you are installing the correct armor upgrade" "Убедитесь что вы устанавливаете правильный усилитель"
replace "Ensure you are installing Augmented Upgrades into Augmented Armor" "Убедитесь что вы устанавливаете Мод. Усилитель на Мод. Броню"
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
replace "Can only be installed in Augmented Light Armor" "Устанавливается только на Мод. Легкую Броню"
replace "Can only be installed in Augmented Armor" "Устанавливается только на Модернизированную Броню"
replace "Only install Augmented Upgrades into this armor" "\\\nВ эту броню можно установить только Мод. Усилитель"
replace "An advanced suit of armor augmented by Progenitor tech. Can be further enhanced with a single Augmented Upgrade Module" "Продвинутый бронекостюм, усиленный по технологии Предтечи. Можно установить один модуль Модернизированного Усилителя"
replace "Configures Augmented Armor" "Настраивает Мод. броню"
replace "for enhanced mobility and moderately enhanced armor" "для повышения мобильности и небольшого повышения брони"
replace "for operation in extreme heat environments" "для экстремально высоких температурных условий"
replace "for extreme cold environments" "для экстремально холодных температурных условий"
replace "for extreme radioactive environments" "для экстремальных радиоактивных условий"
replace "for combat and storage capacity" "для ведения боя и грузоподъемности"
replace "for heavy combat" "для тяжелых сражений"
#replace "" ""