
var _sprite = argument0;

// _x, _y, and _size are in pixels
// _size is the size of a sprite block
var _x = argument1;
var _y = argument2;
var _size = floor(sprite_get_width(_sprite) / 3);

// _w and _h are in # of sprite blocks
var _w = floor(argument3 / _size);
var _h = floor(argument4 / _size);

// draw_sprite_part(sprite, frame, part_x, part_y, part_w, part_h, x, y)

// Corners
draw_sprite_part(_sprite, 0, 0,         0,         _size, _size, _x,                    _y);
draw_sprite_part(_sprite, 0, _size * 2, 0,         _size, _size, _x + (_w - 1) * _size, _y);
draw_sprite_part(_sprite, 0, _size * 2, _size * 2, _size, _size, _x + (_w - 1) * _size, _y + (_h - 1) * _size);
draw_sprite_part(_sprite, 0, 0,         _size * 2, _size, _size, _x,                    _y + (_h - 1) * _size);

// Edges
for (var _ix = 1; _ix <= _w - 2; _ix++) {
	draw_sprite_part(_sprite, 0, _size, 0,         _size, _size, _x + _ix * _size, _y);
	draw_sprite_part(_sprite, 0, _size, _size * 2, _size, _size, _x + _ix * _size, _y + (_h - 1) * _size);
}
for (var _iy = 1; _iy <= _h - 2; _iy++) {
	draw_sprite_part(_sprite, 0, 0,         _size, _size, _size, _x,                    _y + _iy * _size);
	draw_sprite_part(_sprite, 0, _size * 2, _size, _size, _size, _x + (_w - 1) * _size, _y + _iy * _size);
}

// Center
for (var _ix = 1; _ix <= _w - 2; _ix++) {
	for (var _iy = 1; _iy <= _h - 2; _iy++) {
		draw_sprite_part(_sprite, 0, _size, _size, _size, _size, _x + _ix * _size, _y + _iy * _size);
	}
}
