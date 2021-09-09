# vote-dapp-build
build of the vote-dapp project  
Should build and start the project  
This project actually should not exist, sources should be in back-end's project

## other repos :
https://github.com/npasquie/vote-dapp-contract
https://github.com/npasquie/vote-dapp-back
https://github.com/npasquie/vote-dapp-front

## prerequisites
### installations
#### dev & prod :
- git
- docker

#### only dev :
- nodemon `yarn global add nodemon`
- mongo-express `yarn global add mongo-express`
- mongodb
- ganache-cli `yarn global add ganache-cli` (you can also use ganache GUI)

### actions
type ``pwd`` in this directory's console 
and paste the result in the ``.env`` file at the 
``PROJECT_PATH`` variable.

## Start
### dev
open as many terminals as needed. type in this order :
- `sh start-dev.sh` to get other git projects and export env vars.
- `mongod` to start mongodb
- `mongo-express -a -u superuser -p pass` to start mongo-express 
(to see what is in mongo)
- `cd vote-dapp-back`
- `yarn start` to start the back-end (source watch enabled).
- `cd vote-dapp-front`
- `yarn start` to start the front-end (on localhost:3001, 
source watch also enabled)
- `ganache-cli` to launch a local ethereum RPC (you can also use ganache GUI)

access mongo express via navigator on localhost:8081

### prod
Use `.env` file for config, see also back's config file  
- ``sh start-prod`` to start in production mode
