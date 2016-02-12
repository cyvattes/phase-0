 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Beat you rival (Brian, the wizard)
// Goals: find a bigger sword and knock out Brian's HP
// Characters: Braun (the fighter) and Brian (the wizard)
// Objects: braun, brian, items
// Functions: attack, block, castSpell,  displayStatus, pickUpWeapon

// Pseudocode
//set objects and variables
//Start main loop
//prompt for command
//  if loop (for attack, block, check status, or pick up the sword)
//  follow through with proper function
//check for HP == 0, end game if so
//

// Initial Code

//Initialize Objects
var braun = {
  name: "Braun (Studmuffin Fighter)",
  hp: 20,
  //weapon: "sword",
  weapon: "really BIG sword",
  block: "shield"
}

var brian = {
  name: "Brian, (Evil Wizard)",
  hp: 16,
  weapon: "stick",
  block: "bubble spell",
  spells: ["zap", "fireball"]
}

var items = {
  stick: 3,
  zap: 3,
  sword: 6,
  "really BIG sword": 10,
  fireball: 10
}
//

//Initialize Functions
var checkStatus = function() {
  console.log("~~~~~~~~~~~~~~~~~~~~~~");
  console.log(braun.name);
  console.log("Current HP: " + braun.hp);
  console.log("and is wielding a " + braun.weapon + ".");
  console.log("~~~~~~~~~~~~~~~~~~~~~~");
  console.log(brian.name);
  console.log("Current HP: " + brian.hp);
  console.log("and his hands crackle with power.");
  console.log("~~~~~~~~~~~~~~~~~~~~~~");
}

var attack = function(initial, target, defend) { //defend is optional
  damageThisTurn = Math.floor(Math.random()*(items[braun.weapon])+1);
  console.log("-----");
  console.log("     ");
  console.log(initial.name + " attacks " + target.name + " with his " + initial.weapon + "...");
  console.log("...and does " + damageThisTurn + " damage!");
  console.log("     ");
  console.log("-----");
  target.hp -= damageThisTurn;
}

var defend = function(initial, target) {
  //Currently working on adding a defend option into attack
  //
  //
  //
  //
  //
}

var castSpell = function() {
  
}

var brianChooses = function() {
  var choiceNumber = Math.floor((Math.random()*3) +1);
  var choice = "";
  if ((choiceNumber % 3) == 0) { //spell
    choice = " casts a nasty spell.";
    //line to cast spell added here
  }
  else if ((choiceNumber % 2) == 0) { //attack
    console.log("Meanwhile...");
    attack(brian, braun);
  }
  else {
    choice = " puts up a magic bubble."; //defend
  }
  return choice;
}

var pickUpWeapon = function() {
  if (braun.weapon == "sword") {
    braun.weapon = "really BIG sword";
    braun.block = "none";
  }
  else{
    console.log("Braun is already holding a really BIG sword.");
  }
}
//

checkStatus();
attack(braun, brian);
checkStatus();


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//