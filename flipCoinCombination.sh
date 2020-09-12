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
function triplet()
{
HHH=0
HTT=0
HHT=0
THT=0
HTH=0
THH=0
TTT=0
TTH=0
declare -A dict
for (( i=1;i<=n;i++ ))
do
       f1=$(( RANDOM%2 ))
       f2=$(( RANDOM%2 ))
       f3=$(( RANDOM%2 ))
       if [[ $f1 -eq 1 && $f2 -eq 1 && $f3 -eq 1 ]]
       then
          ((HHH++))
          dict[HHH]=$HHH
       fi
       if [[ $f1 -eq 1 && $f2 -eq 1 && $f3 -eq 0 ]]
       then
              ((HHT++))
          dict[HHT]=$HHT

        fi
       if [[ $f1 -eq 1 && $f2 -eq 0 && $f3 -eq 0 ]]
       then
              ((HTT++))
          dict[HTT]=$HTT

        fi
        if [[ $f1 -eq 0 && $f2 -eq 1 && $f3 -eq 1 ]]
            then
               ((THH++))
          dict[THH]=$THH

        fi
       if [[ $f1 -eq 0 && $f2 -eq 1 && $f3 -eq 0 ]]
       then
           ((THT++))
          dict[THT]=$THT

       fi
       if [[ $f1 -eq 1 && $f2 -eq 0 && $f3 -eq 1 ]]
       then
              ((HTH++))
          dict[HTH]=$HTH

        fi
       if [[ $f1 -eq 0 && $f2 -eq 0 && $f3 -eq 1 ]]
       then
              ((TTH++))
          dict[TTH]=$TTH

        fi
        if [[ $f1 -eq 0 && $f2 -eq 0 && $f3 -eq 0 ]]
            then
               ((TTT++))
           dict[TTT]=$TTT

         fi
 done
for j in ${!dict[@]}
do
      echo "$j:${dict[$j]}"
done
     hhhPer=$(( ${dict[HHH]}*100/n ))
     httPer=$(( ${dict[HTT]}*100/n ))
     thhPer=$(( ${dict[THH]}*100/n ))
     thtPer=$(( ${dict[THT]}*100/n ))
     tthPer=$(( ${dict[TTH]}*100/n ))
     hthPer=$(( ${dict[HTH]}*100/n ))
     hhtPer=$(( ${dict[HTT]}*100/n ))
     tttPer=$(( ${dict[TTT]}*100/n ))
if [[ $hhhPer -ge $httPer && $hhhPer -ge $thhPer && $hhhPer -ge $thtPer && $hhhPer -ge $tthPer && $hhhPer -ge $hthPer && $hhhPer -ge $hhtPer && $hhhPer -ge $tttPer ]]
            then
              echo "HHH $hhhPer % is maximum"
         fi
if [[ $httPer -ge $hhhPer && $httPer -ge $thhPer && $httPer -ge $thtPer && $httPer -ge $tthPer && $httPer -ge $hthPer && $httPer -ge $hhtPer && $httPer -ge $tttPer ]]
            then
              echo "HTT $httPer % is maximum"
         fi
if [[ $thhPer -ge $hhhPer && $thhPer -ge $httPer && $thhPer -ge $thtPer && $thhPer -ge $tthPer && $thhPer -ge $hthPer && $thhPer -ge $hhtPer && $thhPer -ge $tttPer ]]
            then
              echo "THH $thhPer % is maximum"
         fi
if [[ $thtPer -ge $hhhPer && $thtPer -ge $thhPer && $thtPer -ge $thhPer && $thtPer -ge $tthPer && $thtPer -ge $hthPer && $thtPer -ge $hhtPer && $thtPer -ge $tttPer ]]
            then
              echo "THT $thtPer % is maximum"
         fi
if [[ $tthPer -ge $hhhPer && $tthPer -ge $thhPer && $tthPer -ge $thtPer && $tthPer -ge $thtPer && $tthPer -ge $hthPer && $tthPer -ge $hhtPer && $tthPer -ge $tttPer ]]
            then
              echo "TTH $tthPer % is maximum"
         fi
if [[ $hthPer -ge $hhhPer && $hthPer -ge $thhPer && $hthPer -ge $thtPer && $hthPer -ge $tthPer && $hthPer -ge $tthPer && $hthPer -ge $hhtPer && $hthPer -ge $tttPer ]]
            then
              echo "HTH $hthPer % is maximum"
         fi
if [[ $hhtPer -ge $hhhPer && $hhtPer -ge $thhPer && $hhtPer -ge $thtPer && $hhtPer -ge $tthPer && $hhtPer -ge $hthPer && $hhtPer -ge $httPer && $hhtPer -ge $tttPer ]]
            then
              echo "HHT $hhtPer % is maximum"
         fi
if [[ $tttPer -ge $hhhPer && $tttPer -ge $thhPer && $tttPer -ge $thtPer && $tttPer -ge $tthPer && $httPer -ge $hthPer && $tttPer -ge $httPer && $tttPer -ge $hhtPer ]]
            then
              echo "TTT $tttPer % is maximum"
         fi

}

read -p "Number of times loop to execute:" n
echo "Enter 1 for singlet"
echo "Enter 2 for doublet"
echo "Enter 3 for triplet"
read -p "Enter number for operation::" num
    case $num in
            1) singlet  ;;
            2) doublet  ;;
            3) triplet  ;;
*)
                exit ;;
    esac

