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
function doublet() {
HH=0
HT=0
TH=0
TT=0
declare -A dict
for (( i=1;i<=n;i++ ))
do
       f1=$(( RANDOM%2 ))
       f2=$(( RANDOM%2 ))
       if [[ $f1 -eq 1 && $f2 -eq 1 ]]
       then
          (( HH++ ))
              dict[HH]=$HH
       fi
       if [[ $f1 -eq 1 && $f2 -eq 0 ]]
       then
           (( HT++ ))
                  dict[HT]=$HT

        fi
       if [[ $f1 -eq 0 && $f2 -eq 1 ]]
       then
           ((TH++))
                dict[TH]=$TH

        fi
        if [[ $f1 -eq 0 && $f2 -eq 0 ]]
            then
            (( TT++ ))
                dict[TT]=$TT

        fi
 done
for j in ${!dict[@]}
do
      echo "$j:${dict[$j]}"
done
     hhPer=$(( ${dict[HH]}*100/n ))
     htPer=$(( ${dict[HT]}*100/n ))
     thPer=$(( ${dict[TH]}*100/n ))
     ttPer=$(( ${dict[TT]}*100/n ))
     if [[ $hhPer -ge $htPer && $hhPer -ge $thPer && $hhPer -ge $ttPer ]]
then
        echo "HH $hhPer % is maximum"
fi
     if [[ $htPer -ge $hhPer && $htPer -ge $thPer && $htPer -ge $ttPer ]]
then
        echo "HT $htPer %is maximum"
fi
     if [[ $thPer -ge $hhPer && $thPer -ge $htPer && $thPer -ge $ttPer ]]
then
        echo "TH $thPer % is maximum"
  fi
   if [[ $ttPer -ge $hhPer && $ttPer -ge $htPer && $ttPer -ge $thPer ]]
then
        echo "TT $ttPer % is maximum"

fi

      }

read -p "Number of times loop to execute:" n
echo "Enter 1 for singlet"
echo "Enter 2 for doublet"
read -p "Enter number for operation::" num
    case $num in
            1) singlet  ;;
            2) doublet  ;;
*)
                exit ;;
    esac

