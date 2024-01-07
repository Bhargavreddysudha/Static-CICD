##ci-shell-script
#!/bin/bash
echo "delete the folder"
rm -rf Static-CICD
echo "cloning the repo"
git clone https://github.com/Bhargavreddysudha/Static-CICD.git
cd Static-CICD
echo "compress the folder"
tar -cvzf apache-1.tgz *
echo "move the package to s3"
aws s3 cp apache-1.tgz s3://testinnn
