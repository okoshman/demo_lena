echo " Verification the existence of a new user  "
echo " Input username for check "
read user_name
echo " Enter root password "
result="$(mysql -u root -p -se "SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = '$user_name')")"
if [ $result = 1 ]
then
echo " User created successfully "
echo " Check for user "
mysql -u $user_name -p -e "SHOW DATABASES; SHOW GRANTS FOR '$user_name'@'localhost'"
else
echo "User doesn't exist"
fi
