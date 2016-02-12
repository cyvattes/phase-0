 // Design Basic Game Solo Challenge

// This is a solo challenge (spent 4 hours on)

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
  weapon: "sword",
  block: "shield"
};

var brian = {
  name: "Brian (Evil Wizard)",
  hp: 16,
  weapon: "stick",
  block: "bubble spell",
  spells: ["zap", "fireball"]
};

var items = {
  stick: 3,
  zap: 3,
  sword: 6,
  "really BIG sword": 10,
  fireball: 10
  
};
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
};

var attack = function(initial, target, defended) { //defended is passed defend(blocker) if the attack is defended
  var damageThisTurn = Math.floor(Math.random()*(items[braun.weapon])+1);
  var blockChecker = false;
  if (defended != 0){ //This check is an attack was blocked
    damageThisTurn -= defended;
    if (damageThisTurn < 0){
      damageThisTurn = 0;
    }
    blockChecker = true;
  }
  
  console.log("-----");
  console.log("     ");
  console.log(initial.name + " attacks " + target.name + " with his " + initial.weapon + "...");
  if ((blockChecker == true) && (damageThisTurn == 0)){
    console.log("...but it was completely blocked by " + target.name + "'s " + target.block + ".");
  }
  else if ((blockChecker == true) && (damageThisTurn != 0)){
    console.log("...but it hits " + target.name + "'s " + target.block);
    console.log("and only does " + damageThisTurn + " damage.");
  }
  else {
    console.log("...and does " + damageThisTurn + " damage!");
  }
  console.log("     ");
  console.log("-----");
  target.hp -= damageThisTurn;
};

var defend = function(blocker) {
  if((blocker.block == "shield") || (blocker.block == "bubble spell")){
    var defendedDamage = Math.floor((Math.random()*6)+1);
  }
  
  if (blocker == braun){
    console.log("You throw up your shield.");
  }
  else{
    console.log("Brian encloses himself in a magic bubble.");
  }
  return defendedDamage;
};

var castSpell = function() {
  console.log("-----");
  console.log("     ");
  console.log("Brian casts a spell...");
  var coinToss = Math.floor(Math.random()*2 + 1);
  if (coinToss == 1){
    var zapDamage = (Math.floor(Math.random()*3 + 1));
    braun.hp -= zapDamage;
    console.log("He zaps you with a small jolt of electricity for " + zapDamage + " damage.");
  }
  else {
    var fireballDamage = (Math.floor(Math.random()*8 + 1));
    braun.hp -= fireballDamage;
    console.log("He tosses a massive fireball for " + fireballDamage + " damage!");
  }
  console.log("     ");
  console.log("-----");
};

var brianChooses = function() {
  var choiceNumber = Math.floor((Math.random()*3) + 1);
  var choice = "";
  if ((choiceNumber % 3) == 0) { //spell
    choice = "cast";
  }
  else if ((choiceNumber % 2) == 0) { //attack
    choice = "attack";
  }
  else { //defend
    choice = "defend"; 
  }
  return choice;
};

var pickUpWeapon = function() {
  if (braun.weapon == "sword") {
    braun.weapon = "really BIG sword";
    braun.block = "none";
    console.log("You see a giant sword on the ground and pick it up.");
  }
  else{
    console.log("There is nothing else lying around.");
  }
};

var checkForKill = function() {
  //if ((braun.hp <= 0) || (brian.hp <= 0)){
  if ((braun.hp <= 0) && (brian.hp <= 0)){
    console.log("You are both dead.");
    return true;
  }
  else if (braun.hp <= 0){
    console.log("You have been slain by the vile Brian!");
    return true;
  }
  else if (brian.hp <= 0){
    console.log("You have murdered your old friend, Brian!");
    return true;
  }
  else {
    return false;
  }
};
//

var runMainGame = function() {
  while (checkForKill() == false){
    var playerChoice = prompt("Brian, the smelly wizard of the north, stands before you. What do you do?/n Options are: 'attack', 'defend', 'look around', or 'status'.");
    var watchBrian = brianChooses();
    var shieldReset = 0;
    switch (playerChoice){
      case "attack":
        if (watchBrian == "defend"){
          attack(braun, brian, defend(brian));
        }
        else
          attack(braun, brian, 0);
        break;
      case "defend":
        if (watchBrian == "defend"){
          console.log("You both just stand around uselessly.");
        }
        else if (braun.block == "none"){
          console.log("You try to block, but your sword is just too big to carry a shield.");
        }
        else {
          shieldReset = defend(braun);
        }
        break;
      case "look around":
        pickUpWeapon();
        break;
      case "status":
        checkStatus();
        break;
      default:
        console.log("Please enter a valid choice");
        break;
    }
    
    switch (watchBrian){
      case "cast":
        castSpell();
        break;
      case "attack":
        attack(brian, braun, shieldReset);
        break;
    }
  }
};

runMainGame();




// Refactored Code






// Reflection
/*
What was the most difficult part of this challenge?
  Making sure the prompt worked was the hardest, since I had to move everything into chrome devtools. The logic was also pretty tough at times.
What did you learn about creating objects and functions that interact with one another?
  It's pretty easy as long as you don't forget their names or parameters.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  As I've already spent 4 hours on this project, I'm chosing to come back to refactoring later this week, in my spare time.
How can you access and manipulate properties of objects?
  You simply use objectName.key = new_value. It's pretty easy.

*/