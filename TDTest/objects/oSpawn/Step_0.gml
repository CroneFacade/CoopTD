/// @description Insert description here
// You can write your code in this editor
if (global.playerHealth <= 0)
{
    restart = true;
    if (keyboard_check_pressed(vk_space))
    {
        room_restart();
    }
}