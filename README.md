## EDIAND BACKEND

### デプロイ

masterにマージされる時に行われる

nginx.confを書き換えた時は、ec2のものを直接書き換える必要がある。

```
cd /etc/nginx/conf.d
sudo vi ediand-backend.conf
```
