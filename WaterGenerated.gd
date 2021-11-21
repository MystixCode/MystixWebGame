extends Spatial

export var size = Vector2(400, 400)
export var subdivide = Vector2(200, 200)
export var water_shader = 1

func _ready():
	var plane_mesh = PlaneMesh.new()
	plane_mesh.size = size
	plane_mesh.subdivide_depth = subdivide.x
	plane_mesh.subdivide_width = subdivide.y

	var surface_tool = SurfaceTool.new()
	surface_tool.create_from(plane_mesh, 0)

	var array_plane = surface_tool.commit()

	var data_tool = MeshDataTool.new()

	data_tool.create_from_surface(array_plane, 0)

	data_tool.commit_to_surface(array_plane)
	surface_tool.begin(Mesh.PRIMITIVE_TRIANGLES)
	surface_tool.create_from(array_plane, 0)
	surface_tool.generate_normals()

	var mesh_instance = MeshInstance.new()

	mesh_instance.mesh = surface_tool.commit()
	if water_shader == 1:
		mesh_instance.set_surface_material(0, load("res://water1.material"))
	if water_shader == 2:
		mesh_instance.set_surface_material(0, load("res://water2.material"))

	add_child(mesh_instance)
