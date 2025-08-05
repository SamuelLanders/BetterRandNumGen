# BetterRandNumGen v1.4

🛠️ Installation

1.Download the BetterRandNumGen addon for Godot 4.x. This is the zip file that you will find when you press the ‘<>Code’ button at the top of github.
2.Create or have an existing project in Godot. This means start Godot and let it create directories in your ‘My Documents’ section of Windows.
3.Extract the betterrandnumgen folder into the addons folder within your Godot project directory.

  a) This will look something like: C:\Users\Bob\Documents\1stbasicproject_godot
  
  b) You can create the directory manually or automatically (recommended for new to Godot users). To do so open Godot, which opens your project as above. In the top left select the menu: (Project > Project Settings > Plugins), then select ‘Create New Plugin’. Don’t worry, this will not break anything, and you will be able to delete it. The nice thing is it creates the directory for you. 
  
  c) Now extract betterrandnumgen into the plugin directory. You will have two paths similar to:
C:\Users\Bob\Documents\1stbasicproject_godot\addons\betterrandnumgen
C:\Users\Bob\Documents\1stbasicproject_godot\addons\screenshots

  d) Enable the addon in Godot's plugins tab.
  
  e) Use the plugin (non-programmatically) by running your application and allowing the project to execute the v_box_container.tscn which will bring up the ‘Use BetterRandNumGen to generate some numbers!’.

📖 Usage

Can use as either main screen plugin (click interface) or as direct plugin to your application (call to class_name BetterRandNumGen )
Functions:

   BetterRandNumGen.randi()
   
   BetterRandNumGen.randi_range()
   
   BetterRandNumGen.randf()
   
   BetterRandNumGen.randf_range()
   
   BetterRandNumGen.generate_digits( v_need:int )
   
   BetterRandNumGen.get_from_array(x=0,y=0,arrToUse=0)	not intended for external use. Internally used to collect a random digit

The 'Main screen plugin' aspect has very limited functionality, and will appear next to the 2D,3D,Script,AssetLib buttons in the top center of Godot 4.x

💖 Credits

This work was a solo work developed by Samuel Landers of tigerwild@hotmail.com, that has accepted some quality of life updates from the following awesome people: {Kindavacant, gruntmoon}
