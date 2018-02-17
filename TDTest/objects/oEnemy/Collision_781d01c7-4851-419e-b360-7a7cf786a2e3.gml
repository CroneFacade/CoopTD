/// @description Insert description here
// You can write your code in this editor
var projectile_damage = 0;
var projectile_collision_on = true;
var projectile_is_piercing = false;
with(other) {
	projectile_damage = damage;
	projectile_collision_on = collides_with_enemies;
	projectile_is_piercing = is_piercing;
	if(collides_with_enemies)
	instance_destroy();
}
if(projectile_collision_on || projectile_is_piercing)
hp -= projectile_damage;