// Prologue stuff
global.level1[0] = "A knight wakes in the midst of an unknown forest next to a tombstone. He knows not his name, his origins, nor why he is here. However, in the back of his head he hears a soft voice: “protect the kingdom”. Then he remembers the vow that he made, one to protect his kingdom, one that he cannot escape.";
global.level1[1] = "For a knight’s vow is an unbreakable oath that he forges with his very soul. No matter the circumstance, he shall keep this promise. No matter the cost, he shall uphold this vow. That is why he is a knight. From there he sets off towards the kingdom which lies on the outskirts of the forest.";

global.level2[0] = "Exiting the forest the Knight finds a village set ablaze. Drawn by the screams of the villagers he continues forward with blade brandished."
global.level2[1] = "He sees in the distance a group of bandits. Compelled by his vow he rushes in prepared to take all their lives."

global.level3[0] = "Finishing with the bandits he feels the mysterious force again. Following it he continues to cut down those who stand in his way."
global.level3[1] = "Finally he reaches the castle. He has felt that it has been quite a while. The castle still remains the same as ever."
global.level3[2] = "However, he knows something is wrong and opening the doors he knows why. Monstosities are everywhere inside."
global.level3[3] = "Driven he marches in unshaken and begins to cut them down."

// ending stuff
global.ending1[0] = "The Kngiht pulls the sword from the King's chest and ascends to the throne. Soon after a shadowy man dressed in robes approaches the new king and says: 'Finally... my lord I welcome you once again. You can finally reclaim what is rightfully yours...'"
global.ending1[1] = "The man grabs the bloodied crown off the dead kings head and presents it to the new King. The Knight, know a King, sits in his throne spattered with blood as he gazes through the stained windows."
global.ending1[2] = "The fire from the local villages spreads and intensifies; but the King doesn't seem to worry. He seems to take great pleasure in knowing that the kingdowm is finally his. Its all his."

global.ending2[0] = "The Knight stands in place with this feeling of guilt wash over him. He starts to relize what he has done but it is too late. A blackness envelops him. Laughter can be heard as he drifts further into the darkness."
global.ending2[1] = "Next time..."
global.ending2[2] = "The knight wakes again to find himself in front a grave in a familiar forest. He does not recall anything before, but he has a vow he must keep and continues through the forest."

global.ending3[0] = "The knight plunges his sword deep through the demon's eye. It expands and contrasts repeatedly until finally it explodes in a bright light. When the knights vision comes back he is standing next to the King. The King removes his crown and hands it to the Knight: 'This belongs to you my lord.'"
global.ending3[1] = "The Knight, know the king, ascends to his throne. He gazes across the land with a sense of accomplishment. The Knight has fullfiled his vow."

// decisions
global.choice1[0] = "The bandit lord lays at your feet... What should you do with him?"
global.choice1[1] = "Kill the bandit lord."
global.choice1[2] = "Spare the bandit lord."

global.choice2[0] = "The king stares back at you... his eyes are cold... What should you do?"
global.choice2[1] = "Kill the king."
global.choice2[2] = "Spare the king."

// extra dialogue
global.king_death[0] = "You have slain the king... Laying there on the ground he waits for death. "
global.king_death[1] = "In your head you hear a voice telling you do not kill him... Remember why you are here"

// stored choices
global.choice_1_chose = 0;
global.choice_2_chose = 0;

// book keeping
global.knight_hitpoints = 5;
global.knight_holyenergy = 0;
global.last_level = rm_prologue;
global.arrow = 0;
global.holy_slash = false;

randomize();
