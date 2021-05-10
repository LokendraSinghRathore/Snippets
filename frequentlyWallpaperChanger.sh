gsettings set org.gnome.desktop.background picture-uri "https://source.unsplash.com/random/1366x768"


#to utalise local images:

var=1;
while [ 1 ]
do 
gsettings set org.gnome.desktop.background picture-uri "/root/Videos/index.html.$var";
var=$((var+1));
if [ $var == 636 ]; 
then 
var=0;
fi; 
sleep 7;
done
