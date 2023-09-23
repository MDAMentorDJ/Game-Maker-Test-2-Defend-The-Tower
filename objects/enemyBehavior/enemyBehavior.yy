{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "enemyBehavior",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"playerTower","path":"objects/playerTower/playerTower.yy",},"eventNum":0,"eventType":4,"isDnD":true,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"playerProjectileBehavior","path":"objects/playerProjectileBehavior/playerProjectileBehavior.yy",},"eventNum":0,"eventType":4,"isDnD":true,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemyDamage","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemySpeed","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":0,},
  ],
  "solid": false,
  "spriteId": null,
  "spriteMaskId": null,
  "visible": true,
}