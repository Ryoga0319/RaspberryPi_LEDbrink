# RaspberryPi_LEDbrink
##千葉工業大学 2016年 ロボットシステム学 課題提出用  

### 概要  
[2016年度ロボットシステム学](https://lab.ueda.asia/?page_id=1152)の課題提出用
### 課題の内容  
- 講義で作成したデバイスドライバをカスタマイズしてGitHubにプッシュする
- Youtube等にデモをアップする
- 電子メールで報告する  

### 行ったこと
- 講義で作成したデバイスドライバを改造し、LEDをゆっくり明滅させるようにした。  

### 実行方法  
##### 事前にカーネルの再インストールが必要  
参考 : https://github.com/ryuichiueda/raspberry_pi_kernel_build_scripts.git  
```
$ git-clone https://github.com/ryuichiueda/raspberry_pi_kernel_build_scripts.git
$ cd raspberry_pi_kernel_build_scripts
$ sudo ./kernel_build_and_install_for_pi2_pi3.bash
$ sudo reboot
```  
その後、このリポジトリをクローンして、以下のようにコマンドを入力する  
```
$ cd RaspberryPi_LEDbrink
$ make
$ sudo insmod myled.ko
$ sudo chmod 666 /dev/myled0
$ echo 1 > /dev/myled0  
$ sudo rmmod myled
```
