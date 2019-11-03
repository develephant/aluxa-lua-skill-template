# aluxa-lua-skill-template

Starter Aluxa skill template for creating Amazon Alexa Skills using the ASK CLI and Aluxa Server.

## new

`ask new --url https://github.com/develephant/aluxa-lua-skill-template.git -n <SKILL_NAME>`

## deploy

`ask deploy`

## simulate

`ask simulate -l en-US -t "start <SKILL_NAME>"`

## Using `ask api`

### create-skill

`ask api create-skill -f skill.json`

### update-model

`ask api update-model -s <SKILL_ID> -l en-US -f models/en-US.json`

### delete-skill

`ask api delete-skill -s <SKILL_ID>`