extends Button

func _on_Button_pressed():
	var node_var = get_node_or_null("../../../World")
	if node_var:
		# Remove the current level
		var current_level = get_node("../../../World")
		get_node("../../..").remove_child(current_level)
		current_level.call_deferred("free")

	var size_x = get_node("../Size/SizeX").value
	var size_y = get_node("../Size/SizeY").value

	var subdivide_x = get_node("../Subdivide/SubdivideX").value
	var subdivide_y = get_node("../Subdivide/SubdivideY").value

	var water_subdivide_x = get_node("../WaterSubdivide/SubdivideX").value
	var water_subdivide_y = get_node("../WaterSubdivide/SubdivideY").value

	var noise_seed = get_node("../NoiseSeed/NoiseSeed").value
	var noise_lacunarity = get_node("../NoiseLacunarity/NoiseLacunarity").value
	var noise_period = get_node("../NoisePeriod/NoisePeriod").value
	var noise_octaves = get_node("../NoiseOctaves/NoiseOctaves").value
	var noise_persistence = get_node("../NoisePersistence/NoisePersistence").value

	var terrain_shader = get_node("../TerrainShader/TerrainShader").value
	var water_shader = get_node("../WaterShader/WaterShader").value

	var smooth = get_node("../Smooth/Smooth").value
	var sea_level = get_node("../SeaLevel/SeaLevel").value

	# Add the next level
	var resource = load("res://world.tscn")
	var level = resource.instance()
	
	level.get_node("Generated").size = Vector2(size_x, size_y)
	level.get_node("Generated").subdivide = Vector2(subdivide_y, subdivide_x)
	
	level.get_node("WaterGenerated").size = Vector2(size_y, size_x)
	level.get_node("WaterGenerated").subdivide = Vector2(water_subdivide_y, water_subdivide_x)
	
	level.get_node("Generated").noise_seed = noise_seed
	level.get_node("Generated").noise_lacunarity = noise_lacunarity
	level.get_node("Generated").noise_period = noise_period
	level.get_node("Generated").noise_octaves = noise_octaves
	level.get_node("Generated").noise_persistence = noise_persistence
	
	level.get_node("Generated").smooth = smooth
	level.get_node("Generated").sea_level = sea_level
	
	level.get_node("Generated").terrain_shader = terrain_shader
	level.get_node("WaterGenerated").water_shader = water_shader
	
	get_node("../../..").add_child(level)
