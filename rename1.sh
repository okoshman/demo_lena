ls
echo " Input name of file "
read old_name
echo " Input new name of file "
read new_name
mv $old_name $new_name
echo " File $old_name is renamed to the $new_name "
ls
echo " End script "
