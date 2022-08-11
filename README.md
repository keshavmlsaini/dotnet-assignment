# dotnet-assignment
Launch ec2 instance over AWS cloud.
Install Docker onn Ec2 instance. 
Create Dockerfile for dotnet application.
Go to settings ---> Actions --->runners ---> create new self hosted runner
Run on ec2 instancer root user
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.294.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.294.0/actions-runner-linux-x64-2.294.0.tar.gz
echo "a19a09f4eda5716e5d48ba86b6b78fc014880c5619b9dba4a059eaf65e131780  actions-runner-linux-x64-2.294.0.tar.gz" | shasum -a 256 -c
tar xzf ./actions-runner-linux-x64-2.294.0.tar.gz
./config.sh --url https://github.com/keshavmlsaini/Task-3.1 --token ANQOX2DP565BWKJLCWNSLBLC6TFTK

Now upload GitHub Action CICD.yml file
Make  runs-on: self-hosted.
.
