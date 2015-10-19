echo " Create new user "
echo " Enter username "
read user
echo " Enter user password "
read password
echo " Enter root password "
nu="CREATE USER '$user'@'localhost'IDENTIFIED BY '$password';GRANT ALL PRIVILEGES ON *.* TO $user@localhost;FLUSH PRIVILEGES;"
mysql -u root -p -e "$nu"
echo " User successfully created "

