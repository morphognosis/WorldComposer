for prefix in 10,5 10,10 20,5 20,10
do
echo basePathLength,numModularPaths = $prefix
for mod in insert substitute delete all
do
echo modification = $mod
for file in $(ls world_composer_no_train_*nn*_test_results.csv)
do
f=$(basename $file .csv)
f=${f/_test_results/}
f=$(echo $f | cut -c16-)
echo -n $f ": "
nn256=$(grep ^${prefix},256,${mod} $file | cut -d"," -f10 | awk '{sum += $0; count += 1} END {print sum/count}')
python -c "print(${nn256})"
done
done
done
for prefix in 10,5 10,10 20,5 20,10
do
echo basePathLength,numModularPaths = $prefix
for mod in insert substitute delete all
do
echo modification = $mod
for file in $(ls world_composer_no_train_tcn_test_results.csv)
do
f=$(basename $file .csv)
f=${f/_test_results/}
f=$(echo $f | cut -c16-)
echo -n $f ": "
k2=$(grep ^${prefix},2,${mod} $file | cut -d"," -f10 | awk '{sum += $0; count += 1} END {print sum/count}')
python -c "print(${k2})"
done
done
done