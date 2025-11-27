# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


Prerequisites
- Create all services, csv files for all entities.

To generate PG artifacts/ build Postgres
- command -- ' cds build --profile production '

To deploy data to PG Database
- Create manifest.yml in the root folder and add below content
    applications:
        - name: cap-sample-postgre
        path: ./gen/pg
        buildpack: nodejs_buildpack
        no-route: true
        task: npm start
        memory: 512M
        env:
            NODE_ENV: production
        services:
            - postgre-db
- run command ' cf push -f manifest.yml '

To create pgDatabase view in BPT
- Create a folder pgadmin, inside create a file called manifest.yml and add below content
    applications:
    - name: pgadmin-web
    instances: 1
    memory: 1G
    disk_quota: 1G
    health-check-type: process
    docker:
        image: dpage/pgadmin4:2023-05-02-1
    random-route: true
    env:
        PGADMIN_DEFAULT_EMAIL: Admin@Email.com
        PGADMIN_DEFAULT_PASSWORD: Admin
        PGADMIN_LISTEN_ADDRESS: 0.0.0.0
- Run command inside pgadmin command -- ' cf deploy -f manifest.yml '
