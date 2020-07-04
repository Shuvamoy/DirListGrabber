printf "\n\e[1;34m================================================================\e[0m\n"
echo "\e[1;34mDir List Grabber\e[0m \e[1;31m[https://www.linkedin.com/in/shuvamoyroy/]\e[0m" 
echo "\e[1;34m================================================================\e[0m\n\n"
read -p 'DOMAIN: (including https://)' host
read -p 'File ext (leave blank if none):' ext
if [ $ext == "" ]
then
    wget -r --no-parent $host-A "*.*"
    printf "\n\n\e[1;34mDownloaded Directories & Files: \n\n============================================\n\e[0m"
    ls -ld $(find .); ls -ld $(find .)>files.txt
else
    wget -r --no-parent $host -A "*.$ext"
    printf "\n\n\e[1;34mDownloaded Directories & Files: \n\n============================================\n\e[0m"
    ls -ld $(find .); ls -ld $(find .)> file.txt 
fi
