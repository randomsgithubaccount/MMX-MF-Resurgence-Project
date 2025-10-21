/// DESTRUIR EFECTO AL SUPERAR EL TAMAÑO (Length)

var _size_list = ds_list_size(list_points);
if _size_list>= length
{
	var _grid_point= list_points[| 0];
	if ds_exists(_grid_point, ds_type_grid)
	{
		ds_grid_destroy(_grid_point);
	}
	ds_list_delete(list_points,0);
}

/// ALMACENAR X, Y , Width por Step en lista
var _grid_point = ds_grid_create(1,e_point.length);
_grid_point[# 0, e_point.x] = x;
_grid_point[# 0, e_point.y] = y;
_grid_point[# 0, e_point.width] = width;
ds_list_add(list_points, _grid_point);

/// REDUCCION DE TAMAÑO POR TIEMPO

var _size_list = ds_list_size(list_points)
for (var _i=0; _i< _size_list; _i++)
{
	var _grid_point = list_points[| _i]
	_grid_point[# 0, e_point.width] += lineal_move(_grid_point[# 0, e_point.width],0,dec_spd)
	
	if dest=1 && _grid_point[# 0, e_point.width] = 0 {instance_destroy()}
}