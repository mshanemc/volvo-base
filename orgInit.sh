sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:source:push
sfdx force:user:permset:assign -n VehiclesPerms
sfdx force:apex:execute -f scripts/init.cls
sfdx shane:org:reauth -r
sfdx shane:theme:activate -n Volvo
sfdx force:org:open