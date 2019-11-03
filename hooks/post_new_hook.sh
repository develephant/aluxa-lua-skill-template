#!/bin/bash
# Shell script for ask-cli post-new hook for Aluxa.
# Script Usage: post_new_hook.sh <SKILL_NAME>
 
# SKILL_NAME is the preformatted name passed from the CLI, after removing special characters.
 
# Run this script one level outside of the skill root folder
 
# The script does the following:
#  - Renames and cleans up template items.

SKILL_NAME=$1

sed -i .bak "s/ask-custom-${SKILL_NAME}-default/https:\/\/aluxa.domain.com\/$SKILL_NAME/g" $SKILL_NAME/skill.json

mv $SKILL_NAME/lua/SkillName $SKILL_NAME/lua/$SKILL_NAME

rm $SKILL_NAME/skill.json.bak
rm -rf $SKILL_NAME/.git 

exit 0
