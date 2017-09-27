#!/bin/bash

echo "---------------------------------------------------------------------------------------------------------------------"
echo "Welcome to Ali cloud purification tool ! V1.3"
echo "System requirements: CentOS 7+"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from blog.cxthhhhh.com - 2017/09/27 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
echo Press any key to continue! Exit with 'Ctrl'+'C' !
echo -e "\n"
sudo yum install wget -y
sudo yum update -y
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
mv /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup
sudo wget -O /etc/yum.repos.d/CentOS-Base.repo https://linuxsoft.cxthhhhh.com/download/CentOS/7/epel-release/CentOS-Base.repo
sudo wget -O /etc/yum.repos.d/epel.repo https://linuxsoft.cxthhhhh.com/download/CentOS/7/epel-release/epel.repo
rpm -Uvh https://linuxsoft.cxthhhhh.com/download/CentOS/7/epel-release/epel-release-latest-7.noarch.rpm --quiet
sudo yum clean all
sudo yum makecache
yum repolist
echo "---------------------------------------------------------------------------------------------------------------------"
echo "replace all sources  is [OK]"
echo "---------------------------------------------------------------------------------------------------------------------"
sudo cd /root
sudo bash /usr/local/aegis/uninstall.sh
sudo curl -sSL https://linuxsoft.cxthhhhh.com/download/CentOS/7/AliYunDun/quartz_uninstall.sh | sudo bash
echo "---------------------------------------------------------------------------------------------------------------------"
echo "uninstall aegis quartz aliservice  is [OK]"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sudo rm -rf /usr/local/aegis
sudo rm /usr/sbin/aliyun-service
sudo rm /lib/systemd/system/aliyun.service
echo "---------------------------------------------------------------------------------------------------------------------"
echo "delete aegis quartz aliservice file  is [OK]"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sudo rewall-cmd --state
sudo systemctl enable firewalld
sudo rm -rf /etc/firewalld/zones/public.xml
sudo wget -O /etc/firewalld/zones/public.xml https://linuxsoft.cxthhhhh.com/download/CentOS/7/AliYunDun/firewalld/zones/public.xml
sudo systemctl start firewalld
sudo firewall-cmd --reload
echo "---------------------------------------------------------------------------------------------------------------------"
echo "firewall create the rule and reload  is [OK]"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n"
sudo rm -rf /etc/motd
sudo wget -O /etc/motd https://linuxsoft.cxthhhhh.com/download/CentOS/7/AliYunDun/firewalld/motd.txt
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "Clear the words of Ali landing  is [OK]"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\n\n\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "End to Ali cloud purification tool ! V1.3"
echo "Has now completed the Ali Yun International CentOS 7 pure purification work."
echo "---------------------------------------------------------------------------------------------------------------------"
echo "Then I will help you install LotServer, and open TCP FAST OPEN."
echo "If you need to continue, copy the following command and proceed after a reboot."
echo "sudo curl -sSL https://linuxsoft.cxthhhhh.com/download/CentOS/7/LotServer/install.sh | sudo bash"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from blog.cxthhhhh.com - 2017/09/27 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
echo Please reboot !
echo -e "\n"
