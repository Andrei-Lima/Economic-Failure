function text_outline_transformed(x, y, string, xscale, yscale, angle, alpha, color){

var c = color;

var xx = xscale;
var yy = yscale;

draw_text_transformed_color(x-xx, y, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x, y-yy, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x+xx, y, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x, y+yy, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x+xx, y+yy, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x-xx, y-yy, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x+xx, y-yy, string, xscale, yscale, angle, c, c, c, c, alpha);
draw_text_transformed_color(x-xx, y+yy, string, xscale, yscale, angle, c, c, c, c, alpha);

draw_text_transformed(x, y, string, xscale, yscale, angle);

}