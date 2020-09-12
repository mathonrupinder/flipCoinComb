echo "Welcome to FLIP COIN Combination problem Solution"
function singlet(){
declare -A  dict
for (( i=1; i<=n; i++ ))
do
     flip=$(( RANDOM%2 ))
      if [ $flip -eq 1 ]
      then
            ((dict[H]++))
      else
            ((dict[T]++))
      fi
done
echo "Head="${dict[H]}
echo "Tail="${dict[T]}
     headPer=$(( ${dict[H]}*100/n ))
     tailPer=$(( ${dict[T]}*100/n ))
     if [ $headPer -gt $tailPer ]
then
     echo "Head percentage $headPer is maximum"
     elif [ $tailPer  -gt $headPer ]
then
     echo "Tail percentage $tailPer is maximum"
     else
     echo "Both are equal"
fi
}
read -p "Number of times loop to execute:" n
echo "Enter 1 for singlet"
read -p "Enter number for operation::" num
    case $num in
            1) singlet  ;;
           
*)
                exit ;;
    esac

