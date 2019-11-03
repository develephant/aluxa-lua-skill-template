# Powershell script for ask-cli post-new hook for Aluxa.
# Script Usage: post_new_hook.ps1 <SKILL_NAME>
 
# SKILL_NAME is the preformatted name passed from the CLI, after removing special characters.
 
# Run this script one level outside of the skill root folder
 
# The script does the following:
#  - Renames and cleans up template items.

param( 
    [string] $SKILL_NAME
)

$SKILL_FILE_PATH = $SKILL_NAME + "\skill.json"

Rename-Item $SKILL_NAME + "\lua\SkillName" $SKILL_NAME + "\lua\" + $SKILL_NAME

Remove-Item $SKILL_NAME + "\skill.json.bak"
Remove-Item $SKILL_NAME + "\.git" -Recurse -Force

exit 0
