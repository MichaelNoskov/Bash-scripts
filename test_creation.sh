#!/bin/bash

filename=file

echo "Тест на создание файла был запущен"

chmod +x file_creator.sh
./file_creator.sh $filename

if [[ -f $filename ]]
then
    echo "Файл $filename существует, тест пройден успешно"
    rm $filename
    exit 0
else
    echo "Файл $filename отсутствует, тест провален"
    exit 1
fi
