/// Create Event - obj_menuBase

buttons = []; // cada menu filho define os botões
callback = noone; // função a ser chamada ao clicar

buttonSpacing = 60;
buttonWidth = 200;
buttonHeight = 50;

y = -240;
targetY = display_get_gui_height() / 2;

selectedIndex = 0;
hoverIndex = -1;
