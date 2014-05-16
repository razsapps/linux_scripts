echo 
echo INSTALLING CHROME
echo 

apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb
rm google-chrome*.deb

echo 
echo INSTALLING JDK 6
echo 

add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java6-installer
java -version

echo 
echo INSTALLING GIT
echo 
apt-get install git
git --version

echo 
echo INSTALLING MAVEN
echo 
apt-get install maven


echo 
echo INSTALLING DROPBOX
echo 
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -


echo 
echo INSTALLING INTELLIJ
echo 
wget http://download.jetbrains.com/idea/ideaIC-13.1.2.tar.gz
mv ideaIC*.tar.gz intellij.tar.gz
tar xfz intellij.tar.gz
rm intellij.tar.gz

echo 
echo INSTALLING WIFI DRIVER - MACBOOK PRO
echo 
apt-get install bcmwl-kernel-source


echo 
echo ADDING REPOSITORIES
echo 
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
apt-get update

echo 
echo INSTALLING MAVEN
echo 
apt-get install maven
