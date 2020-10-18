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

## Выполнено ДЗ 5

testapp_IP = 130.193.56.45
testapp_port = 9292

#### Запуск через CLI:

```shell script
yc compute instance create \
    --name reddit-app \
    --hostname reddit-app \
    --memory=4 \
    --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
    --network-interface subnet-name=default-ru-central1-c,nat-ip-version=ipv4 \
    --metadata serial-port-enable=1 \
    --metadata-from-file user-data=./metadata.yaml
```

## Выполнено ДЗ 6

> Собран packer ubuntu16.json (Fry образ)

> Собран packer immutable.json (Bake образ)

## Выполнено ДЗ 7

> Создание и провижинер через terraform

## Выполнено ДЗ 8

> Созданы Stage & Prod окружения

> Провижионеры вынесены в модули
```shell script
terraform get
```
> Отформатированы конфигурационные файлы
```shell script
terraform fmt
```

## Выполнено ДЗ 9

```shell script
ansible app -m command -a 'rm -rf ~/reddit'
```
> Удалит директорию

```shell script
ansible-playbook clone.yml
```
> Клонирует репозиторий: changed=1

## Выполнено ДЗ 10

> Написано 3 плейбука: [app|db|deploy].yml
> Изменен провижининг в packer from sh to ansible
