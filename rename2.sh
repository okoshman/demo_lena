echo " Check file renaming "
echo " Input old name of file "
read old_name
echo " Input new name of file "
read new_name
if [ ! -f $old_name ] && [ -f $new_name ] && [ -s $new_name ]
then
echo " File successfully renamed "
else
echo " File not renamed or size of file==0 "
fi
