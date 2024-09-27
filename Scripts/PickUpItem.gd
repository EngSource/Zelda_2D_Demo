extends Area2D

class_name PickUpItem

@export var inventory_item: InventoryItem

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

func _ready() -> void:
	if inventory_item != null:
		sprite_2d.texture = inventory_item.texture
		collision_shape_2d.shape = inventory_item.ground_collion_shape
	else:
		print("InventoryItem is null@")
