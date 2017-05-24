#!/bin/bash
#!/bin/scp
#!/usr/bin/expect -f
echo "****************开始gulp dev********************"
project="baoan"
rm -rf dist/
gulp dev --project=$project
echo "****************gulp dev 结束********************"
cd dist
cd baoan
expect -c "
  spawn scp -r . root@100.73.49.11:/data/dstnew/$project/
  expect {
    \"*assword\" {set timeout 300; send \"qwer1234\r\";}
    \"yes/no\" {send \"yes\r\"; exp_continue;}
  }
  expect eof"
echo "****************scp 结束 ********************"
cd ../
cd ../
# spawn 直接执行scp dist/ 有问题，换做cd 进行 -r .
#scp -r dist/* root@100.73.16.42:/data/dst/songzhongji/
