# telman-devops_infra
telman-devops Infra repository

## Выполнено ДЗ 4

bastion_IP = 130.193.56.96
someinternalhost_IP = 10.128.0.17

#### Способ подключения к someinternalhost в одну команду:

```shell script
ssh -i ~/.ssh/id_rsa -J ubuntu@130.193.56.96 ubuntu@10.128.0.17
```

> Использовать флаг -J

#### Способ подключение по алиасу someinternalhost:

```
~/.ssh/config

Host bastion
	HostName 130.193.56.96
	IdentityFile ~/.ssh/id_rsa
	User ubuntu

Host someinternalhost
	ProxyJump bastion
	HostName 10.128.0.17
	IdentityFile ~/.ssh/id_rsa
	Port 22
	User ubuntu
```

> Использовать ProxyJump
