extends Spatial

export var size = Vector2(400, 400)
export var subdivide = Vector2(200, 200)

export var noise_seed = 0
export var noise_lacunarity = 2
export var noise_period = 80
export var noise_octaves = 6
export var noise_persistence = 0.5
export var smooth = true
export var sea_level = -15
export var terrain_shader = 3

func _ready():
	var noise = OpenSimplexNoise.new()
	noise.seed = noise_seed
	noise.lacunarity = noise_lacunarity
	noise.period = noise_period
	noise.octaves = noise_octaves
	noise.persistence = noise_persistence

	var plane_mesh = PlaneMesh.new()
	plane_mesh.size = size
	plane_mesh.subdivide_depth = subdivide.x
	plane_mesh.subdivide_width = subdivide.y

	var surface_tool = SurfaceTool.new()
	surface_tool.create_from(plane_mesh, 0)

	var array_plane = surface_tool.commit()

	var data_tool = MeshDataTool.new()
	data_tool.create_from_surface(array_plane, 0)

	for i in range(data_tool.get_vertex_count()):
		var vertex = data_tool.get_vertex(i)
		vertex.y = noise.get_noise_3dv(vertex) * 60 - sea_level
		data_tool.set_vertex(i, vertex)

	for i in range(array_plane.get_surface_count()):
		array_plane.surface_remove(i)

	data_tool.commit_to_surface(array_plane)
	surface_tool.begin(Mesh.PRIMITIVE_TRIANGLES)
	surface_tool.add_smooth_group(smooth)
	surface_tool.append_from(array_plane, 0, Transform.IDENTITY)
	surface_tool.generate_normals()

	var mesh_instance = MeshInstance.new()
	#mesh_instance.transform.origin = Vector3(0,15,0)
	mesh_instance.mesh = surface_tool.commit()
	if terrain_shader == 1:
		mesh_instance.set_surface_material(0, load("res://terrain1.material"))
	if terrain_shader == 2:
		mesh_instance.set_surface_material(0, load("res://terrain2.material"))
	if terrain_shader == 3:
		mesh_instance.set_surface_material(0, load("res://terrain3.material"))
	mesh_instance.create_trimesh_collision()
	
	add_child(mesh_instance)
	
