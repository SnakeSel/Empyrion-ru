PATHSTEAM="${HOME}/SteamLibrary/steamapps"
PATHEMPYRION="${PATHSTEAM}/common/Empyrion - Galactic Survival"
PATHRE="${PATHSTEAM}/workshop/content/383120/2550354956"

clear

echo "Install Empyrion"
if ! [ -d "$PATHEMPYRION" ]; then
    echo "[ERR]Empyrion not found: $PATHEMPYRION"
    exit 1
fi
cp -fpr ../'Empyrion - Galactic Survival'/* "$PATHEMPYRION"

echo "Install RE"
ISRE=1
if [ -d "$PATHRE" ]; then
    cp -fpr ../'Reforged Eden'/* "$PATHRE"
else
    echo "[ERR]RE not found: $PATHRE"
    ISRE=0
fi

echo "Install PDA to SAVE"
PDA="../Empyrion - Galactic Survival/Content/Extras/PDA/PDA.csv"
# Если нет RE, ставим PDA от оcновной игры,
# если есть, запрос
if [ "${ISRE:-0}" -eq 1 ]; then
    #clear
    echo ""
    echo "Какой PDA положить в последний SAVE?"
    PS3="введите номер: "
    select opt in "Empyrion" "RE" "Quit";do
    case $opt in
        "Empyrion") echo "cp Empyrion PDA";break;;
        "RE") 
            echo "cp RE PDA"
            PDA="../Reforged Eden/Extras/PDA/PDA.csv"
            break;;
        "Quit") exit 0;;
        *) echo "invalid option";;
    esac
    done
fi

SAVENAME=$(ls -1t "$PATHEMPYRION/Saves/Games" | head -n 1)
if cp -f "$PDA" "$PATHEMPYRION/Saves/Games/$SAVENAME";then
    echo "PDA в \"$SAVENAME\" обновлен"
fi



