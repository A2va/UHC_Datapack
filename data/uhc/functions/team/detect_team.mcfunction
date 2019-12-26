function uhc:team/white
function uhc:team/orange
function uhc:team/magenta
function uhc:team/light_blue
function uhc:team/yellow
function uhc:team/green
function uhc:team/pink
function uhc:team/dark_gray
function uhc:team/gray
function uhc:team/cyan
function uhc:team/purple
function uhc:team/dark_blue
function uhc:team/dark_green
function uhc:team/red

function uhc:team/next_team
function uhc:team/last_team
function uhc:team/spec

function uhc:team/back_player


execute if score team option matches 1 run function uhc:team/team_hotbar
execute if score team option matches 0 run replaceitem entity @a hotbar.0 minecraft:heart_of_the_sea{display:{Name:"{\"text\":\"Mode Spectateur\", \"color\":\"gray\"}"}}
