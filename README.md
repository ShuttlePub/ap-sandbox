## ActivityPub SandBox Test Server

### Requirement
- misskey (master)
- docker

### Setup
1. Copy `tailscale/.env.example` to `tailscale/.env` and edit `TS_AUTHKEY`
    * https://login.tailscale.com/admin/settings/keys

2. For linux users, run `init-misskey.sh`(requires [yq](https://github.com/mikefarah/yq))
    <details>
        <summary>Manual setup</summary>

    - Clone [Misskey (master)](https://github.com/misskey-dev/misskey/tree/master)
        * Copy the files with reference to [Install Guide (Misskey)](https://misskey-hub.net/ja/docs/for-admin/install/guides/docker/)
    - And enable `allowedPrivateNetworks` by editing `/misskey/.config/default.yml`.
        ```yml
        allowedPrivateNetworks: [
          '127.0.0.1/32',
          '100.64.0.0/10'
        ]
        ```
    </details>

4. Run docker
    ```
    docker compose build
    docker compose run --rm misskey pnpm run init
    docker compose up -d
    ```
