/// @description Insert description here
// You can write your code in this editor
var projectile_damage = 0;
with(other) {
	projectile_damage = damage;
	instance_destroy();
}
hp -= projectile_damage;