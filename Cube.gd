extends MeshInstance

func _ready():
	randomize()
	var newmaterial= SpatialMaterial.new()
	newmaterial.albedo_color = Color(randf(),randf(),randf())
	self.material_override = newmaterial
