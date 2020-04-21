# vote-dapp-build
build of the vote-dapp project  
Should build and start the project

## prerequisites
### installations
- git
- docker
- nodemon ```yarn global add nodemon```

### actions
type ``pwd`` in this directory's console 
and paste the result in the ``.env`` file at the 
``PROJECT_PATH`` variable.

## Start
- ``sh start-dev.sh`` to start docker containers needed for dev,
then type in another terminal
``nodemon vote-dapp-back/src/back.js`` to start the back-end
with source watch enabled.   
- ``sh start-prod`` to start in production mode
