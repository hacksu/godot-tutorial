
# **Speaker Notes**
Regular text : Usually speaker notes 
`Code` : Just stuff that's not meant to be read
(ns)     : Click to the next slide
(c)       : Click for next animation
# Pre-requisites
`Godot    ` [here](https://godotengine.org/download/windows/) 
`Slideshow` [here](https://docs.google.com/presentation/d/1D-0J9SxASCg1v7ZVO4I4esNTt8rLHmEKl5QYFr4FwRY/edit?usp=sharing)
`Resources` [here](https://drive.google.com/drive/folders/1z8O508bpdheA9Gaf0K8l4Qsv_ScWoTHD?usp=sharing)
`Keysticks` [[How to use Keysticks|how to use]]
`Magnifier` Press `Win++` once before starting so you can use the magnifier later.

Upload the resources link into the discord.

# Fake Presentation
Alright so today we are going to be learning about Pointers! 

So a lot of people have been requesting this lesson, I know we were supposed to be doing Godot today but I just think it's really important to reiterate what a pointer is. So basically a pointer is a mechanism used in C++ to, ah never mind

`Austin walks over and tells me to stop`

# Slides Presentation

Hi! Today we are going to be learning HacKSU. I'm Godot and this is Andrew Roddy. (ns)

`Download Godot Engine` [here](https://godotengine.org/download/windows/) `(NOT .NET)`
Make sure you start downloading it now as I am going to start yapping (WARNING)

Basically the .NET is for people who willingly decide to use C# AKA unity developers

While (ns) The regular engine is for everyone else

So, (ns) why do people even use Godot?

Well, Lets look at the pros of Unity. Unity has many features and was used to make Among Us, Fall Guys, Pokemon Go, and Genshin Impact, well, that might be a con, nevermind,
Basically Unity is super trusted and liked by everyone.

The problem is, sometimes (ns), Unity will make a scary decision where they will decide they want millions of dollars from every developer even if the developer made a fully free game.

(ns) This change would literally mean this guy alone would cost the developers twenty dollars ($20).

(ns) Because of this some developers started looking for somewhere to switch to and found Godot as it had very similair features to Unity because of the .NET runtime. And also, it didn't have a risk of being overtaken by corporate greed as it was completely open source. 
These developers either threatened to switch to Godot or actually did.

(ns) Although Unity did roll this change back it made people really nervous that at any point Unity and other game engine developers could switch up.

(ns) Basically, Why Godot? Because Unity and Unreal are bad. Well actually, (ns) Although Unreal has Fortnite and visual scripting it's just too different from Unity and Godot. And it also has... (c) C++ NOOO  Not C++ Not ... (c) **POINTERS**!!


(ns) So what is Goo Dot anyways? 

(ns) `Show` [2024 Showreal](https://www.youtube.com/watch?v=n1Lon_Q2T18)
Well its pronounced gah-dough and it lets you make 2d AND 3d games. It also allows you to export to Windows, Linux, AND MacOS, IOS, and Android. So fair warning, anything you make will be made fun of for 

(ns) Anyways, time to actually make a video game.

`Tab out of slideshow`

Alright so today we are going to be creating a very simple pong-like game.

Now I chose this game for two reasons.
One, it is very easy to make
Two, I have already made it multiple times in Godot

# Making the game
## Checkpoint C1 - Resources Included

### ==Creating the Project==
Alright so first thing you are going to want to do is crack open Godot and press 
`+ Create` in the top left of the screen.

`Project Name: Despaired Cat Game Tutorial` 
Then name the project whatever you want, select where you want the folder to be located 

`Renderer: [X] Compatibility` 
After this select `Compatibility` as the Renderer. I have found this to be easier to program in if you are making a 2D game. 

`[Create & Edit]` 
After this press Create & Edit

### ==Scene==
Under `Create Root Node:` in the top left press `[2D Scene]`.
Alright so now we have a root node.

So now we see the `2D Scene` to move around the scene on mouse its super easy and intuitive but on trackpad it's kind of *special.*

Two fingers up and down is zoom in and zoom out.
Two fingers up and down with `Ctrl` is pan up and down and side to side.
Then if you hold `Ctrl+Shift` while panning it will go side to side when you swipe up and down and up and down when you swipe side to side.

And if you hold `Alt` it zooms out like SUPER FAST.

### ==Resources==
`Go back to the presentation now`
So next you are going to want to import the resources from the discord lesson channel. You can either download them from the google drive or in the GitHub they are in the zip file.

After they are downloaded right click on the `res://` folder in the bottom right, then press `Open in File Manager`. 

After that, right click on the zip file, extract the files, (there should be folders in the zip file) and extract those here. Your folder should look like this in Godot once this step is done.

### ==Checkpoints==
Okay so if you really messed everything up beyond repair, or just dissociated and missed something important I made checkpoints in the GitHub REPO so right now if you download Checkpoint 1 now you are fully caught up, but download it quick because imma keep yapping.


## Checkpoint C2 - Cat Movement
### ==Character Body 2D==
`Go back to Godot screen`
Alright so now that all of the *boring* setup is done it's time to get it along with the actual game development. 
Alright so the next thing we are going to do is make the player. I like Godot because they make it really easy to do this type of stuff.

Press the `+` button in the top left
Use the search icon to look up `CharacterBody2D` and click `Create`. Then, rename it to whatever you would like by double clicking on the name (`Cat`). Then you are going to want to find this little plus looking symbol on the background and drag it into the center. I promise this is lowkey important.

### ==Collision==
NEXT! COLLISION! Then, with your `CharacterBody2D` selected, press the plus again. Now search up `CollisionShape2D` and press `Create`.  Then, on the right side you will see `Shape` You are going to want to click the little drop down menu. Click that then press `New RectangleShape2D`. It should automatically put a square around your tiny plus in the middle. <!--SR:!2025-08-29,1,230-->

### ==Sprite==
After this press the plus icon again and look up `Sprite2D` and press `Create`. Then, on the right you will see `Texture`. Instead of clicking on the dropdown just find it in the `res://` folder in the bottom right and drag the `despaired_cat.png` image from the bottom left into the `<empty>` box.

Now you might notice it's a bit large. You are going to hold  `Shift+Alt` and then drag the corners in to fit the size of the collision shape.

### ==Hierarchy==
Another thing you might notice. If you look `Hold Win++` `REALLLY CLOSE` you will see that, if you did it how I did it, or wrong I guess,  you will see that the lines don't really line up properly. 

Godot follows a Hierarchy structure meaning it's kind of like folders in your desktop where the things in each folder should relate to what is in the folder. So, our sprite shouldn't be connected to the collision box but instead connected to the player itself.

So just drag it so there is a straight line here.

Also really quick if you don't want to see the box on the bottom just Press `Output` on the bottom. If it's already gone consider yourself lucky.
### ==Cat Code==
Alright now for the moment you have all been waiting for. Now, imma be honest here, I'm not the best at programming in Godot so bear with me a bit here. 

To add the code Right click on your Player Icon `Cat`, then press `Attach Script...`, then press `Create`.

Now, this gives you an example script and we are going to use most of it so I am going to delete everything to explain it but you can probably just delete a few things as I go.

`Paste this in the discord but don't paste it into your editor`

```python
# cat.gd
extends CharacterBody2D
const SPEED = 300.0
func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	velocity.y = 0
	move_and_slide() 
```

`Explain the code and read the comments as you go`
```python
# cat.gd
# Written by Andrew Roddy
# 4/15/2025

# It's kind of like Javascript where you have to tell the program 
extends CharacterBody2D

const SPEED = 300.0 # Player speed

# This runs every delta frame meaning every frame multiplied by how bad your computer is
func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# Godot has really convenient button mapping stuff so we can edit what
	# "ui_left" and "ui_right" do later but we wont :)
	var direction := Input.get_axis("ui_left", "ui_right")

	if direction: # This changes our x position to where we are tryna move
		velocity.x = direction * SPEED
	else: # If we don't have a direction yet, stand still
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Then this last part just makes sure our velocity.y stays 0
	# When the ball bounces off of us we don't want to be pushed back
	velocity.y = 0

	# Then this guy interprets all of that and actually does the moving
	move_and_slide() 
```

Now we are onto Checkpoint 2 Cat Movement
## Checkpoint C3 - Ball Movement
### ==Settings==
Now before we press test I want to change a few things first.

In the top left press `Project` then `Project Settings...`  then in this menu under `Display` press `Window`

Now turn on `Advanced Settings` in the top right.

Under the size bar change :
`Viewport Width         : 1920`
`Viewport Height        : 1080`
`Window Width Override  : 1280`
`Window Height Override :  720`

Under the stretch bar change
`Mode : viewport`

Then press the little play button in the top right and press `Select Current`. You should hopefully see a speck like creature that moves when you press the arrow keys.

But here's the problem, you **LOVE** `W` `A` `S` `D` and you can't live without it!
Don't worry, I've got you. 
Go back into `Project>Project Settings` and press `Input Map` at the top this time.
Next press `Show Built-in Actions` at the top. You should see `ui_left` at the bottom and `ui_right`. Press the little plus button to the right of `ui_left` and press `A` the press `Okay`. Then do the same for `ui_right`. And then `Close`

NOW if you press the play icon in the top right, of if you don't see the play icon press the stop icon in the top right then the play icon. You *should* be able to move with the arrow keys.

`C2 - Cat Movement`

### ==Fixing player size==
Press `2D` at the top to get back to the regular `2D` view. We are super zoomed in so just press the percent number in the top left to zoom out to `%100`, then use the scroll wheel to zoom out even more and back to where you can see the blue outline of the map. 

Now there's two ways we can do this, the easy way, or the hard way. You *could* manually change the size by clicking on each or remember our **Hierarchy** view, click on `Cat` and then press the resize tool at the top which kind of looks like *Vader's TIE Fighter* from *Star Wars*. If you haven't seen *Star Wars* that's okay, I haven't either. I just liked drawing the characters from the *Angry Birds Star Wars* mobile game. 

Anyways, Just pull wait, hold `Shift` and pull one of the bars back and now it's actually hi visible! Hooray!

### ==BALL!==
ITS BALL TIME!!! HOORAY. 
So to make the ball we will be essentially following the exact same steps as the player.

Click on `Node2D`, press `+`, `CharacterBody2D`, press `Create`, rename it to `Ball`, 
press `+`, search `CollisionShape2D`, press `Create`
Press the dropdown next to `Shape <empty>` and press `Rectangle`. Our ball will be a rectangle okay don't question it.

Next press `+`, search `Sprite2D`, press `Create`

Then we are going to drag our `DVD-Video.png` into the `<empty>` section.

Now, once again, its a bit large, so lets quickly resize it. BTW I am holding `Alt` while zooming to zoom in faster.

When working with objects like this and trying to get them smaller with the regular scaling tools it can get annoying so what you can do is instead use the `Transform` menu on the right. I will scale ours to `0.04`.

Then while holding `Alt` I will adjust the hitbox to perfection.

So now I'm sure we want to move our object but here is our problem, if we just use the regular `Select Mode` or the mouse thing at the top, to move our item it will just move whatever is at the top even if I select `Ball` specifically. This is where we have to use move mode up here.
### ==Ball Code==
Alright time for the code now. Right click on `Ball`, Press `Attach Script`, then press `Create`.

Alright now we are probably not going to use any of the default provided code.

I will paste the code in the lesson channel but you can just follow along if you want to 
`Paste the code in the lesson channel`
```python
# ball.gd
extends CharacterBody2D
var speed = 4
var collision = move_and_collide(velocity)
func _ready() -> void:
	velocity.x = speed
	velocity.y = speed
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity)
	if collision:
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		if (collider.name == "Cat"):
			if collision_normal == Vector2(1, 0) or collision_normal == Vector2(-1, 0):
				velocity.x = velocity.x * -1
			if collision_normal == Vector2(0, 1) or collision_normal == Vector2(0, -1):
				velocity.y = velocity.y * -1
		
```

Type all of this out manually
```python
# ball.gd
# Written by Andrew Roddy
# 4 / 14 / 2025

extends CharacterBody2D

var speed = 4
var collision = move_and_collide(velocity)

# Runs when the game starts
func _ready() -> void:
	velocity.x = speed
	velocity.y = speed

func _physics_process(delta: float) -> void:
	# Gets the collision
	var collision = move_and_collide(velocity)
	
	# Runs if there is a collision
	if collision:
		# Gets the colliders and their directions
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		
		# If it collides with the cat
		if (collider.name == "Cat"):
			
			# If the collision should send you down, have it send you down etc
			if collision_normal == Vector2(1, 0) or collision_normal == Vector2(-1, 0):
				velocity.x = velocity.x * -1
			if collision_normal == Vector2(0, 1) or collision_normal == Vector2(0, -1):
				velocity.y = velocity.y * -1
		

```

Alright now we are finished with the code in checkpoint 3.
## Checkpoint C4 - Speedy Walls
### ==WALLS==
Now test the code and see if it works. So this game kind of sucks right now, you can try to hit the thing and it bounces off once and then goes off screen. 

1 star rating, immediate return, and curse out the developer in the Steam reviews and attach their home address.

Unless, we add walls! So we are going to add in a `Node`, this does nothing but looks cool. Make sure it's connected to the `Node2D`. Then rename it to `Walls`. Then we are going to add a `StaticBody2D` This is basically a collider that isn't supposed to move. Then add out tried and true `CollisionShape2D` and set the `Shape` to `WorldBoundaryShape2D` or as I like to call it... `Line`.

So first thing is first rename the `StaticBody2D` and SPECIFICALLY the `StaticBody2D` to `Right_Wall` you can name it something else but you will have to change it in your code too so I would just not.

Next if you zoom in you can see the arrow. We want to rotate this arrow to be pointing to the left. It's supposed to point to where the thingy would bounce off to. So click on our `CollisionShape2D` and turn it to the left.

Then, Also very important, press `Right_Wall` then use the movement tool, if you don't press right wall everything will be whack. You can really place it wherever you want but I'm just gonna place it here.

Then, just copy and paste the `Right_Wall` three times.
Then names should be `Right_Wall`, `Left_Wall`, `Top_Wall`, and `Bottom_Wall`.

Also, very important, your Nodes or pluses will be like really far away because it copies in relation to the `Node2D` but like also compares that to the copied node. It's weird, I would just click on the node you are trying to move and zoom out and look around.

Also very important, you CANT rotate your walls yet. They are all technically linked right now so what you are going to have to do is next to `Shape` `Right Click` on `WorldBoundary` and press `Make Unique` Then you can rotate it to your hearts content.

`Press Play` Now the games done right! `it sticks to the wall` oh... well looks like we need to edit the code again.



Go back into `2D`. In the top right 

Alright now 

### ==Wall Code==

So now all we need to add is 
```python
# ball.gd
collider.name == "Left_Wall" or
collider.name == "Right_Wall" or
collider.name == "Top_Wall" or 
```

Right before the `Cat` tag it doesn't matter the order but that's just where I am putting it

`Full Code`
```python
# ball.gd
extends CharacterBody2D

var speed = 4
var collision = move_and_collide(velocity)

func _ready() -> void:
	velocity.x = speed
	velocity.y = speed

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity)
	if collision:
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		if (
			collider.name == "Left_Wall" or
			collider.name == "Right_Wall" or
			collider.name == "Top_Wall" or 
			collider.name == "Cat" 
			):
			if collision_normal == Vector2(1, 0) or collision_normal == Vector2(-1, 0):
				velocity.x = velocity.x * -1
			if collision_normal == Vector2(0, 1) or collision_normal == Vector2(0, -1):
				velocity.y = velocity.y * -1

```

`Test the code`
And boom it works! Now it bounces off the invisible walls. We should probably make those visible now.

### ==Wall Sprites==
There is another easy way of importing sprites. Just drag them onto the scene. So find the `wall.png` texture in `res://` in the bottom left and drag it. Then use `Move Mode` and `Scale Mode` to move everything around. 

Now for the walls we are gonna want them to be small but still going off the screen both ways. You wan to make the wall exactly aligned with the blue line.

Then if you press `Ctrl+C` then `Ctrl+V` it won't really work. See how the wall is a bit smaller and stuff, well you need to press `Ctrl+Shift+V` to make it a more similar copy.

### ==Speeding Up==
Alright! Now we are done right?
Well no, see we have a specific  problem.
Just like the DVD logo in real life, it follows a specific path making this less like a game and more of a cutscene.
[image](https://external-preview.redd.it/mO30oakVHS0WssxcXyK8lWKfM0MsYA1zdK-S5G405mo.png?format=pjpg&auto=webp&s=4209e20e33fa37fcef9fe71af60fe3145680d7e1)

So there are two ways we can change this, make the players movement influence the direction of the ball, and make the ball speed up. Lets do both!

`Code to add`
```python
# This is how much the ball will speed up each hit
var multiplier = 1.1 # At the top. 

# This will gets the Cat's x velocity and change our x velocity based on it
if collider.name == "Cat":
	var cat_velocity = collider.velocity.x # Get cat's velocity
	velocity.x += cat_velocity * 0.01 # Adjust ball velocity based on cat
```

`Full Code`
```python
# ball.gd

extends CharacterBody2D

var speed = 4
# NEW # NEW # NEW # NEW #
var multiplier = 1.1
#########
var collision = move_and_collide(velocity)

func _ready() -> void:
	velocity.x = speed
	velocity.y = speed
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity)
	if collision:
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		if (
			collider.name == "Left_Wall" or
			collider.name == "Right_Wall" or
			collider.name == "Top_Wall" or 
			collider.name == "Cat"
		):
			if (collision_normal == Vector2(1, 0) or 
				collision_normal == Vector2(-1, 0)):
				velocity.x = velocity.x * -1
			if (collision_normal == Vector2(0, 1) or
				collision_normal == Vector2(0, -1)):
				velocity.y = velocity.y * -1
		
		# NEW # NEW # NEW # NEW ## NEW # NEW # NEW # NEW #
		if collider.name == "Cat":
			var cat_velocity = collider.velocity.x
			velocity.x += cat_velocity * 0.01 
		##################
		if (collider.name == "Bottom_Wall"):
			velocity.x = speed
			velocity.y = speed
```

### ==Game Over==
But now the game is difficult so when I loose I feel bad and it takes a while to restart the game. So we can add more code to add that!

Alright I promise this is the last code we will add except for like one extra line later I promise. 

`Code to add`
```python
# ball.gd
var game_over = false # At the top

if game_over: # under physics process
	position.x = 1000 # Resets back to top
	position.y = 50
	game_over = false # Turns game_over off

# Under the if hits bottom wall statement
game_over = true
# The velocity above also 
# helps us reset back to normal speed
```

`Full Code`
```python
# ball.gd
extends CharacterBody2D

var speed = 4
var multiplier = 1.1
## NEW # NEW # NEW # NEW # NEW ##
var game_over = false
###########
var collision = move_and_collide(velocity)

func _ready() -> void:
	velocity.x = speed
	velocity.y = speed
	
func _physics_process(delta: float) -> void:
	## NEW # NEW # NEW # NEW # NEW ##
	if game_over:
		position.x = 1000
		position.y = 50
		game_over = false
	###########
	var collision = move_and_collide(velocity)
	if collision:
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		if (
			collider.name == "Left_Wall" or
			collider.name == "Right_Wall" or
			collider.name == "Top_Wall" or
			collider.name == "Cat"
		):
			if (collision_normal == Vector2(1, 0) or 
				collision_normal == Vector2(-1, 0)):
				velocity.x = velocity.x * -1
			if (collision_normal == Vector2(0, 1) or
				collision_normal == Vector2(0, -1)):
				velocity.y = velocity.y * -1
		
		if collider.name == "Cat":
			var cat_velocity = collider.velocity.x
			velocity.x += cat_velocity * 0.01 
		if (collider.name == "Bottom_Wall"):
			velocity.x = speed
			velocity.y = speed
			## NEW # NEW # NEW # NEW # NEW ##
			game_over = true
			###########
```

## Checkpoint C4 - FINAL
### ==Beautiful Background==
Alright so now for the background. Now this is really difficult. Just drag the background in. Ok done :)

If you don't like the background because it is burning your eyes out you can just hide it!

### ==Instructions==
So press the plus again and type `RichTextLabel`. Then rename it to `Instructions`. Then drag the orange part down to the bottom left of the wall.

Paste in this text.
```
[color=black]Click on the left side of the screen to go left and the right side of the screen to go right. Uhh. There is no way to win or lose right now but that's kind of it. I don't really care if you enjoy the game but I hope this helps you waste time[/color]
```
And it doesn't work... Well at the top enable `BBCode`. Now it makes the text black. Next scroll all the way down to the `Theme` tab. Then press the drop down menu next to `Theme` and press `New Theme`. Change the default font size to `51px`. And drag the font from `res://` and `font` into the `Default Font` box.

### ==Sound Effects==
Alright now it's time for the sound effects!
We will be adding three sound effects. Now adding these effects is an extremely easy process.

Go to `res://` Just click on the top one, hold `Shift` then click on the bottom one, and drag all of them onto the scene. You can use move mod to drag around their little cross thing but it doesn't matter where it is.

Annnd yes it's time for more programming. For this we will need to edit both the `cat.gd` and the `ball.gd`.

Now in the `ball.gd` it's actually super easy because all we need to add is 
```python
# ball.gd
# After collision check
get_node("../Boink").play()

# After it hits the bottom wall
get_node("../Womp").play()
```
Lets test it `Run the game`

But for the `cat.gd` it's a bit more complicated
So we could just add
```python
get_node("../Rock").play()
```
After it confirms we are pressing the keys and going in a direction but  that would only result in the sound playing when we let go of the key as it will keep looping the first `1/60th` of the song until we let go. INSTEAD we need to have it only play when the sound is not already playing. And also when we stop moving the sound should stop too.
```python
if direction
		velocity.x = direction * SPEED
		if not get_node("../Rock").playing:
			get_node("../Rock").play()
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		get_node("../Rock").stop()
```

Also, if you click on the sounds themselves you can adjust a lot of things about them and their volume. I adjusted my `Rock` volume to `-5dB`

### ==Touchscreen Controls==
The last thing we will be adding to our scene is touchscreen buttons. We will put one on the left and one on the right side of the screen.

So press the `+` in the top left, and search for `TouchScreenButton`. Press Create. Then add a `Shape` on the right of a `Rectangle`.
If you can't see the button make sure it's below the background layer.

A good way to line it up is to the ruler. If you can't see the ruler press `View` at the top then `Show Rulers`. Hold down on the left ruler and drag our a guide and place it at `960px` assuming you set your project dimensions to `1920px` wide.

Alright close enough, now just rename this to `Left Button`.
`Ctrl+C` and `Shift+Ctrl+V` and rename it to `Right Button`.

Then to make them actually function you can in the `Action` section on the right put `ui_left` in for the left button and `ui_right` in for the right button. Remember this is exactly how we bound `WASD` controls into our game earlier.

And now to test it, well, it works on my touchscreen but not my mouse. What if I want to make a cookie clicker game? Well... you need to go to `Project` then `Project Settings` then search up `Touch from Mouse`, press `Pointing` in the bottom left, and  enable `Emulate Touch from Mouse`.

And finally, because these two blue boxes look really weird. We can click into each one and disable `Shape Visible`. Then for the collision shapes in the ball and DVD logo you can just hide the `CollisionShape2D`s the game will still work.

### ==Exporting==
Alright now it's time to export the game!
I will be running through the windows export but other's should be kind of the same.

First `Editor` > `Manage Export Templates` > `Download and Install`
This shouldn't take too long but it usually takes around a minute.

So Godot offers many different export formats. The most important format is supports is `HTML5` or `Web` . This is because `itch.io` uses this format and `itch.io` is the main way indie developers share there game.

Anyways, once it's downloaded press `Close`. 

Then `Projet` > `Export...` 

At the top press `Add...`

I will be selecting `Windows Desktop` because I want to be able to show y'all the game.

Then, if it isn't turned on already, turn on  `Runnable` in the top right.

Then Press `Export Project`. You will see a yellow error message likely, that's okay unless you want to add an icon, which we don't.

And boom, the game works!

Now it's time to discuss... something a bit different.

# Back to Presentation
Slides are all self explanatory from here on out
