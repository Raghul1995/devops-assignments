#!/usr/bin/env bash
echo -n "Enter Any Number: "
read -r n

if ! [[ $n =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

i=2
c=1

while [ $i -lt "$n" ]; do
    r=$((n % i))
    [ $r -eq 0 ] && c=$((c + 1))
    i=$((i + 1))
done

if [ $c -eq 1 ]; then
    echo "Prime"
else
    echo "Not Prime"
fi
