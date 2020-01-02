# cncjs-docker
Tools for running cncjs in docker

## Install

```
# In the repo
docker build . --tag cncjs-docker
sudo cp cncjs.service /etc/systemd/system/cncjs.service
sudo systemctl daemon-reload
sudo systemctl enable cncjs.service
sudo systemctl start cncjs.service
```
