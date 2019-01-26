# Google Chrome

Rode o Google Chrome dentro de um container docker.


#### Como testar?

```
docker run -it --rm --net=host --env="DISPLAY" \
           --cpuset-cpus 0 --memory 512mb \
           --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
           --volume="$HOME/Chrome-Container/Downloads:/root/Downloads:rw" \
           --volume="$HOME/Chrome-Container/data:/data:rw" \
           seniocaires/google-chrome
```
