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
scp start-up.sh root@public-ip:~/
```
SSH into droplet

```bash
bash start-up.sh
scp auto-upgrade.sh luke@public-ip:~/
```

SSH in as new user

```bash
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

