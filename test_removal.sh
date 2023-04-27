#!/bin/bash
filename=file

echo "Тест на удаление файла был запущен"

if [[ ! -f $filename ]]
then
    touch $filename
fi

chmod +x file_remover.sh
./file_remover.sh $filename

if [[ ! -f $filename ]]
then
    echo "Файл был удалён, тест пройден"
    exit 0
else
    echo "Файл не был удалён, тест провален"
    exit 1
    rm $filename
fi
