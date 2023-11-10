//health bar
draw_sprite(spr_statusbar_bg,0,49,30);
draw_sprite_stretched(spr_HP,0,169,54,(HP/HPMAX)*168,24); //(168 is HPMAX x width of HP sprite
draw_sprite_stretched(spr_Mana,0,169,96,(Mana/ManaMAX)*108,12);
draw_sprite(spr_status_brdr,0,49,30);

if (Weapon == 1) {
	draw_sprite(icon_wp_tsinelas,0,79,60);
}

if (Charm == 1) {
	draw_sprite(icon_at_shockwv,0,91,186);
}

