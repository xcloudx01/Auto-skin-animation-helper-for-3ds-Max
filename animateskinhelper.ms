//Creates animation moving the object(s) 90 degrees on x y z to help with skinning

macroScript AutoAnimatedSkinHelp
category:"Animation Tools"
buttonText:"AutoAnimatedSkinHelp"
tooltip:"AutoAnimatedSkinHelp"
Icon:#("Bip_Curve",19)
(
frame = 0
sliderTime = 0f
set animate on
for obj in selection do (
	deleteKeys obj #allKeys
	addNewKey obj (frame)
	addNewKey obj (frame-10) --just incase
	addNewKey obj (frame+20)
	addNewKey obj (frame+40)
	addNewKey obj (frame+60)
	addNewKey obj (frame+80)
	addNewKey obj (frame+100)
	addNewKey obj (frame+120)
	at time (frame+10) 	obj.rotation.controller[1].value += 100
	at time (frame+30) 	obj.rotation.controller[1].value -= 100
	at time (frame+50) 	obj.rotation.controller[2].value += 100
	at time (frame+70) obj.rotation.controller[2].value -= 100
	at time (frame+90) 	obj.rotation.controller[3].value += 100
	at time (frame+110) 	obj.rotation.controller[3].value -= 100
	frame += 120
)
set animate off
)