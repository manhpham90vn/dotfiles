# Common Command

## git

- update last commit

```shell
git add --a
git commit --amend --no-edit
git push origin -f
```

- pull rebase branch

```shell
git reset --hard origin/test
```

- checkout remote origin

```shell
git checkout -b feature-branch origin/feature-branch
git switch -c feature-branch origin/feature-branch
```

## docker

- fix arm64 build on docker linux

```bash
docker run --privileged --rm tonistiigi/binfmt --install all
```

- remove all docker

```shell
docker stop $(docker ps -aq)
docker container prune -f
docker image prune -f -a
docker volume prune -f -a
docker network prune -f
docker system prune
```

## other

- run process inject .env file

```shell
dotenvx run -- node index.js
```

- show folder structure ignore node_modules and git

```shell
tree -I 'node_modules|.git'
```

- find process by name

```shell
ps aux | grep mysql
```

- find process by port

```shell
sudo netstat -nlp | grep :9200
```

- find file by name

```shell
sudo find /etc -type f -name "*.yml"
```
