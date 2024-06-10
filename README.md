# The Droplet
Terraform config to create a droplet and point a domain to it.

## Set up
### 01. Create infrastructure
```bash
terraform init
terraform plan
terraform apply -var-file="env.tfvars"
```

### 02. Set up
```bash
scp start-up.sh root@rmaki.tech:~/
ssh root@rmaki.tech
```

```bash
bash start-up.sh
scp auto-upgrade.sh luke@rmaki.tech:~/
```

```bash
ssh luke@rmaki.tech
bash auto-upgrade.sh

sudo nano /etc/ssh/sshd_config
```

Change the following lines:
```bash
PasswordAuthentication no
PermitRootLogin no
```

```bash
sudo systemctl restart ssh
```

