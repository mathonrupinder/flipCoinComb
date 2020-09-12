echo "Welcome to FLIP COIN Combination problem Solution"
Head=0
Tail=0
flip=$(( RANDOM%2 ))
if [ $flip -eq "1" ]
then
    echo "head wins"
else
    echo "tail wins"
fi
