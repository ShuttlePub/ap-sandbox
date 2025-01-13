## ActivityPub SandBox Test Server

### Requirement
- misskey (master)
- docker

### Setup
1. Clone [Misskey (master)](https://github.com/misskey-dev/misskey/tree/master)
    * Copy the files with reference to [Install Guide (Misskey)](https://misskey-hub.net/ja/docs/for-admin/install/guides/docker/)

2. Edit `TS_AUTHKEY` of `compose.yml`
    * https://login.tailscale.com/admin/settings/keys

3. Enable `allowedPrivateNetworks` by editing `/misskey/.config/default.yml`.
    ```yml
    allowedPrivateNetworks: [
      '127.0.0.1/32',
      '100.64.0.0/10'
    ]
    ```

4. Run docker
    ```
    docker compose build
    docker compose run --rm misskey pnpm run init
    docker compose up -d
    ```