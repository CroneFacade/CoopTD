x = mouse_x;
y = mouse_y;

if(place_meeting(x,y,oRegion) || place_meeting(x,y,oTowerParent)) color = c_red;
else color = c_white;