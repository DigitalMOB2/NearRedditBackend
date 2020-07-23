#for run in {1..100}
#do
#  VAR1="test"
#  VAR2="${VAR1}${run}.ionut.testnet"
#  near create-account "${VAR2}" --masterAccount ionut.testnet --initialBalance 4
#  echo "$VAR2"
#done

#for run in {1..100}
#do
#  VAR1="idtest"
#  VAR2="${VAR1}${run}.andreea.testnet"
#  near delete "${VAR2}" andreea.testnet
#  echo "$VAR2"
#done

#for run in {1..100}
#do
#  VAR1="test"
#  VAR2="${VAR1}${run}.ionut.testnet"
#  near call dev-1593166943960 transfer '{"to": "test1.ionut.testnet", "tokens": "100"}' --accountId ionut.testnet "${VAR2}" --masterAccount ionut.testnet --initialBalance 4
#  echo "$VAR2"
#done
#
#seq 1 3 | parallel -j 5 -I{} date +"%T" && near call dev-1593166943960 transfer '\{\"to\":\"test{}.ionut.testnet\",\"tokens\":\"100\"\}' --accountId ionut.testnet > logs.txt
