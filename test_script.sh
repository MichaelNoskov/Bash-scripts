value=100
chmod +x script.sh
result=`echo $value | ./script.sh`
expected="Ваш текст: 100"
if [[ $result == $expected ]]
then
    echo "Тест успешно пройден"
    exit 0
else
    echo "Тест провален"
    exit 1
fi