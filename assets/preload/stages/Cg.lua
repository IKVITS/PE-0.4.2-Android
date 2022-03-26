function onCreate()

makeAnimatedLuaSprite('backG','Cgstage/CGBG',-1000,-740);
              setLuaSpriteScrollFactor('backG', 0.9, 0.9);
              scaleObject('backG', 1.36,1.2);
              
    addLuaSprite('backG', false);
	addAnimationByPrefix('backG', 'idle', 'new', 40, true);
	
	makeAnimatedLuaSprite('personaje1','Cgstage/bopper1',-370,100);
              setLuaSpriteScrollFactor('personaje1', 0.9, 0.9);
              scaleObject('personaje1', 1.5,1.5);
              
    makeAnimatedLuaSprite('free','Cgstage/crowd-free',-400,470);
              setLuaSpriteScrollFactor('free', 0.9, 0.9);
              scaleObject('free', 1.5,1.5);
              
              addLuaSprite('free', true);
	addAnimationByPrefix('free', 'idle', 'crowd-van', 40, true);
              
    makeLuaSprite('DOWN LIGHT', 'Cgstage/DOWN LIGHT', 2,0);
	scaleObject('DOWN LIGHT', 0.81,1.01);
	setObjectCamera('DOWN LIGHT', 'hud');
	
	makeLuaSprite('LEFT LIGHT', 'Cgstage/LEFT LIGHT', 2,0);
	scaleObject('LEFT LIGHT', 0.81,1.01);
	setObjectCamera('LEFT LIGHT', 'hud');

	makeLuaSprite('RIGHT LIGHT', 'Cgstage/RIGHT LIGHT', 2,0);
	scaleObject('RIGHT LIGHT', 0.81,1.01);
	setObjectCamera('RIGHT LIGHT', 'hud');

	makeLuaSprite('UP LIGHT', 'Cgstage/UP LIGHT', 2,0);
	scaleObject('UP LIGHT', 0.81,1.01);
	setObjectCamera('UP LIGHT', 'hud');
              
    addLuaSprite('personaje1', false);
	addAnimationByPrefix('personaje1', 'idle', 'crowd1', 30, true);
	
	makeAnimatedLuaSprite('personaje2','Cgstage/bopper2',-280,100);
              setLuaSpriteScrollFactor('personaje2', 0.9, 0.9);
              scaleObject('personaje2', 1.5,1.5);
              
    addLuaSprite('personaje2', false);
	addAnimationByPrefix('personaje2', 'idle', 'crowd1', 30, true);
	
	makeAnimatedLuaSprite('free2','Cgstage/crowd-free2',150,470);
              setLuaSpriteScrollFactor('free2', 0.9, 0.9);
              scaleObject('free2', 1.5,1.5);
              
    addLuaSprite('free2', true);
	addAnimationByPrefix('free2', 'idle', 'crowd-van', 30, true);
	
	makeLuaSprite('layer', 'Cgstage/BGLAYER', 2,0);
	scaleObject('layer', 0.81,1.01);
	setObjectCamera('layer', 'hud');
	addLuaSprite('layer', false);
	
	addLuaSprite('DOWN LIGHT', true);
	addLuaSprite('LEFT LIGHT', true);
	addLuaSprite('RIGHT LIGHT', true);
	addLuaSprite('UP LIGHT', true);
	
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);
	
end

function onUpdate(elapsed)
	-- start of "update", some variables weren't updated yet
	if keyJustPressed('left') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', true);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);

	elseif keyJustPressed('down') then
	setProperty('DOWN LIGHT.visible', true);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);

	elseif keyJustPressed('up') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', true);

	elseif keyJustPressed('right') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', true);
	setProperty('UP LIGHT.visible',false);

	end
end