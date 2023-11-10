// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilechangeA1(){
var lay_id = layer_get_id("Tiles_4");
var tile_id = layer_tilemap_get_id(lay_id);
tilemap_tileset(tile_id, OurtsideNight);

var lay_id2 = layer_get_id("Tiles_3");
var tile_id2 = layer_tilemap_get_id(lay_id2);
tilemap_tileset(tile_id2, OurtsideNight);

var lay_id3 = layer_get_id("Tiles_1");
var tile_id3 = layer_tilemap_get_id(lay_id3);
tilemap_tileset(tile_id3, OurtsideNight);

var lay_id4 = layer_get_id("Tiles_2");
var tile_id4 = layer_tilemap_get_id(lay_id4);
tilemap_tileset(tile_id4, OurtsideNight);

var lay_id5 = layer_get_id("Ground2");
var tile_id5 = layer_tilemap_get_id(lay_id5);
tilemap_tileset(tile_id5, OurtsideNight);

var lay_id6 = layer_get_id("Ground");
var tile_id6 = layer_tilemap_get_id(lay_id6);
tilemap_tileset(tile_id6, OurtsideNight);

var lay_id7 = layer_get_id("Uphouses");
var tile_id7 = layer_tilemap_get_id(lay_id7);
tilemap_tileset(tile_id7, OurtsideNight);
}

