x_length = obj_knight.x - x;
y_length = obj_knight.y - y;

x_length = x_length / (x_length * x_length);
y_length = y_length / (y_length * y_length);

angle = arccos(x_length*1+y_length*0);
