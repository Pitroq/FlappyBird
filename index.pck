GDPC                                                                            %   <   res://.import/blue.png-1439378f896334c29f5666221247547c.stex�d      �      i����ԯr�;j��@   res://.import/bullet.png-fcc9b6edffdc3d7ef5fea596f59b4f40.stex  Pi      �       ��lj̲����o@   res://.import/green.png-b4f8ddc6b00d4e627f0e027e2e1193bf.stex   �l      �      ��>kD� H�]/�=�<   res://.import/icon.png-f931f6b997c470ed41f337ac62349254.stexq      U      �G͍r&E�`� �g��@   res://.import/pistol.png-ff419dbd1311ba2d92c32c7ff503f2cc.stex   �      �       ��Q���e�͏2㯡|<   res://.import/red.png-3cad0ca19141406d60f5fd2311159a86.stex P�      �      ݮg���UU�
�	�@   res://.import/tilemap.png-6c0e611be40ed183c593b0b25f50e65f.stex Ј      ?      T
�G�7�2��m��   res://default_env.tres  �
      �       um�`�N��<*ỳ�8   res://project.binary�            �KW����\f@j��n   res://scenes/BulletLeft.tscn`      �      /E������n��c�q    res://scenes/BulletRight.tscn         �      ,n�_���Ru���   res://scenes/Game.tscn  �      H      l9�(Y�X���{t��b   res://scenes/Menu.tscn   (      m
      (;���{�	��=�=�k   res://scenes/Player1.tscn   �2      �      v�t;'�~�ݘ}*{   res://scenes/Player2.tscn    :      �      2$mm�Ӗ��N��0�$   res://scripts/BulletLeft.gd.remap   ��      -       q�D�&���|'�,��   res://scripts/BulletLeft.gdc�A      u      S+���|��/B+��$   res://scripts/BulletRight.gd.remap  ��      .       p�J����Qx�b~=T��    res://scripts/BulletRight.gdc   0D      T      ��8�Jv#|�N��3��   res://scripts/Game.gd.remap �      '       �*Y]�Gg�ܙ]L��)   res://scripts/Game.gdc  �F      �      �=~�u+b���=��p4    res://scripts/Global.gd.remap   @�      )       r}��38��j�Z	�Y   res://scripts/Global.gdc`H      o      �,�hY�~2��ʓ�vP�   res://scripts/Menu.gd.remap p�      '       y��F���;;�;n��   res://scripts/Menu.gdc  �I      7      �Ś1^�@r���W���    res://scripts/Player1.gd.remap  ��      *       .�D�׫-x;o&   res://scripts/Player1.gdc   O      �
      ����N)�6$�? (�    res://scripts/Player2.gd.remap  Г      *       �'w��ܶ�.\=�0   res://scripts/Player2.gdc   �Y      �
      ���Ñ���I�a��    res://textures/blue.png.import  �f      �      x� Gܰ��#���R�Ec    res://textures/bullet.png.import�i      �      _8�oU�4��֪|�l�    res://textures/green.png.import �n      �      e����s�e��K��G   res://textures/icon.png  �      �      G1?��z�c��vN��    res://textures/icon.png.import  p~      �      4������.6�$O�p    res://textures/pistol.png.import��      �      �{S�"T��y���J    res://textures/red.png.import   @�      �      �{Rza��V4��JN�$   res://textures/tilemap.png.import   �      �      A����(�^N��_��v        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=4 format=2]

[ext_resource path="res://scripts/BulletLeft.gd" type="Script" id=1]
[ext_resource path="res://textures/bullet.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 7.5, 2.00781 )

[node name="BulletLeft" type="Area2D"]
position = Vector2( 37.0831, 25.8458 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]
position = Vector2( 0.00336124, -0.00672502 )
scale = Vector2( 0.751725, 0.201988 )

[node name="Sprite" type="Sprite" parent="."]
rotation = 1.5708
texture = ExtResource( 2 )

[connection signal="body_entered" from="." to="." method="_on_BulletLeft_body_entered"]
[connection signal="screen_exited" from="VisibilityNotifier2D" to="." method="_on_VisibilityNotifier2D_screen_exited"]
  [gd_scene load_steps=4 format=2]

[ext_resource path="res://scripts/BulletRight.gd" type="Script" id=1]
[ext_resource path="res://textures/bullet.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 7.5, 2.00781 )

[node name="BulletRight" type="Area2D"]
position = Vector2( 37.0831, 25.8458 )
script = ExtResource( 1 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="VisibilityNotifier2D" type="VisibilityNotifier2D" parent="."]
position = Vector2( 0.00336124, -0.00672502 )
scale = Vector2( 0.751725, 0.201988 )

[node name="Sprite" type="Sprite" parent="."]
rotation = 1.5708
texture = ExtResource( 2 )

[connection signal="body_entered" from="." to="." method="_on_BulletRight_body_entered"]
[connection signal="screen_exited" from="VisibilityNotifier2D" to="." method="_on_VisibilityNotifier2D_screen_exited"]
               [gd_scene load_steps=11 format=2]

[ext_resource path="res://scenes/Player2.tscn" type="PackedScene" id=1]
[ext_resource path="res://textures/tilemap.png" type="Texture" id=2]
[ext_resource path="res://scenes/Player1.tscn" type="PackedScene" id=3]
[ext_resource path="res://scripts/Game.gd" type="Script" id=4]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 0, 0, 64, 0, 64, 64, 0, 64 )

[sub_resource type="TileSet" id=5]
0/name = "tilemap.png 0"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
1/name = "tilemap.png 1"
1/texture = ExtResource( 2 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 64, 64, 64 )
1/tile_mode = 0
1/occluder_offset = Vector2( 0, 0 )
1/navigation_offset = Vector2( 0, 0 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape = SubResource( 2 )
1/shape_one_way = false
1/shape_one_way_margin = 1.0
1/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
1/z_index = 0
2/name = "tilemap.png 2"
2/texture = ExtResource( 2 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 128, 64, 64 )
2/tile_mode = 0
2/occluder_offset = Vector2( 0, 0 )
2/navigation_offset = Vector2( 0, 0 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape = SubResource( 3 )
2/shape_one_way = false
2/shape_one_way_margin = 1.0
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
2/z_index = 0
3/name = "tilemap.png 3"
3/texture = ExtResource( 2 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 0, 192, 64, 64 )
3/tile_mode = 0
3/occluder_offset = Vector2( 0, 0 )
3/navigation_offset = Vector2( 0, 0 )
3/shape_offset = Vector2( 0, 0 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
3/shape = SubResource( 4 )
3/shape_one_way = false
3/shape_one_way_margin = 1.0
3/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
3/z_index = 0

[sub_resource type="RectangleShape2D" id=6]
extents = Vector2( 4008, 10 )

[node name="Game" type="Node2D"]
script = ExtResource( 4 )

[node name="Info" type="Node2D" parent="."]
visible = false
z_index = 2

[node name="Label" type="Label" parent="Info"]
margin_left = -1280.0
margin_top = -840.0
margin_right = -1024.0
margin_bottom = -823.0
rect_scale = Vector2( 10, 10 )
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TileMap" type="TileMap" parent="." groups=[
"notDelete",
]]
position = Vector2( -512, 0 )
z_index = 1
tile_set = SubResource( 5 )
cell_quadrant_size = 32
format = 1
tile_data = PoolIntArray( -458752, 1, 0, -458751, 3, 0, -458750, 3, 0, -458749, 3, 0, -458748, 2, 0, -458741, 1, 0, -458740, 3, 0, -458739, 3, 0, -458738, 3, 0, -458737, 2, 0, -131077, 1, 0, -131076, 3, 0, -131075, 3, 0, -131074, 2, 0, -196591, 1, 0, -196590, 3, 0, -196589, 3, 0, -196588, 2, 0, -65532, 1, 0, -65531, 3, 0, -65530, 3, 0, -65529, 3, 0, -65528, 3, 0, -65527, 3, 0, -65526, 3, 0, -65525, 2, 0, 131062, 1, 0, 131063, 3, 0, 131064, 3, 0, 131065, 2, 0, 65558, 1, 0, 65559, 3, 0, 65560, 3, 0, 65561, 2, 0, 393205, 1, 0, 393206, 3, 0, 393207, 3, 0, 393208, 3, 0, 393209, 3, 0, 393210, 3, 0, 393211, 3, 0, 393212, 3, 0, 393213, 3, 0, 393214, 3, 0, 393215, 3, 0, 327680, 3, 0, 327681, 3, 0, 327682, 3, 0, 327683, 3, 0, 327684, 3, 0, 327685, 3, 0, 327686, 3, 0, 327687, 3, 0, 327688, 3, 0, 327689, 3, 0, 327690, 3, 0, 327691, 3, 0, 327692, 3, 0, 327693, 3, 0, 327694, 3, 0, 327695, 3, 0, 327696, 3, 0, 327697, 3, 0, 327698, 3, 0, 327699, 3, 0, 327700, 3, 0, 327701, 3, 0, 327702, 3, 0, 327703, 3, 0, 327704, 3, 0, 327705, 3, 0, 327706, 2, 0 )

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( 0, -160 )
current = true
zoom = Vector2( 2, 2 )
drag_margin_h_enabled = true
drag_margin_v_enabled = true

[node name="Player1" parent="." instance=ExtResource( 3 )]
position = Vector2( -433.413, -544.286 )

[node name="Player2" parent="." instance=ExtResource( 1 )]
position = Vector2( 337.659, -503.968 )

[node name="DeadLine" type="Area2D" parent="."]
position = Vector2( 0, 656 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="DeadLine"]
shape = SubResource( 6 )

[connection signal="body_entered" from="DeadLine" to="." method="_on_DeadLine_body_entered"]
        [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/Menu.gd" type="Script" id=1]

[node name="Menu" type="Node2D"]
script = ExtResource( 1 )

[node name="Button" type="Button" parent="."]
margin_left = 384.0
margin_top = 64.0
margin_right = 555.0
margin_bottom = 107.0
rect_scale = Vector2( 3, 3 )
text = "START"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player1" type="VBoxContainer" parent="."]
margin_left = 64.0
margin_top = 256.0
margin_right = 192.0
margin_bottom = 420.0
rect_scale = Vector2( 2, 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Player1"]
margin_right = 128.0
margin_bottom = 14.0
text = "Set Player1 Skin:"

[node name="Green1" type="CheckBox" parent="Player1"]
margin_top = 18.0
margin_right = 128.0
margin_bottom = 42.0
text = "Green"

[node name="Blue1" type="CheckBox" parent="Player1"]
margin_top = 46.0
margin_right = 128.0
margin_bottom = 70.0
text = "Blue"

[node name="Red1" type="CheckBox" parent="Player1"]
margin_top = 74.0
margin_right = 128.0
margin_bottom = 98.0
text = "Red"

[node name="Label2" type="Label" parent="Player1"]
margin_top = 102.0
margin_right = 128.0
margin_bottom = 133.0
text = "
defeult is Green"

[node name="Player2" type="VBoxContainer" parent="."]
margin_left = 960.0
margin_top = 256.0
margin_right = 1088.0
margin_bottom = 420.0
rect_scale = Vector2( 2, 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Player2"]
margin_right = 128.0
margin_bottom = 14.0
text = "Set Player2 Skin:"

[node name="Green2" type="CheckBox" parent="Player2"]
margin_top = 18.0
margin_right = 128.0
margin_bottom = 42.0
text = "Green"

[node name="Blue2" type="CheckBox" parent="Player2"]
margin_top = 46.0
margin_right = 128.0
margin_bottom = 70.0
text = "Blue"

[node name="Red2" type="CheckBox" parent="Player2"]
margin_top = 74.0
margin_right = 128.0
margin_bottom = 98.0
text = "Red"

[node name="Label2" type="Label" parent="Player2"]
margin_top = 102.0
margin_right = 128.0
margin_bottom = 133.0
text = "
defeult is Blue"

[connection signal="pressed" from="Button" to="." method="_on_Button_pressed"]
[connection signal="pressed" from="Player1/Green1" to="." method="_on_Green1_pressed"]
[connection signal="pressed" from="Player1/Blue1" to="." method="_on_Blue1_pressed"]
[connection signal="pressed" from="Player1/Red1" to="." method="_on_Red1_pressed"]
[connection signal="pressed" from="Player2/Green2" to="." method="_on_Green2_pressed"]
[connection signal="pressed" from="Player2/Blue2" to="." method="_on_Blue2_pressed"]
[connection signal="pressed" from="Player2/Red2" to="." method="_on_Red2_pressed"]
   [gd_scene load_steps=8 format=2]

[ext_resource path="res://textures/green.png" type="Texture" id=1]
[ext_resource path="res://textures/pistol.png" type="Texture" id=2]
[ext_resource path="res://scripts/Player1.gd" type="Script" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 1, 0, 0, 1 )

[sub_resource type="StyleBoxFlat" id=3]

[sub_resource type="ParticlesMaterial" id=4]
emission_shape = 1
emission_sphere_radius = 40.0
flag_disable_z = true
gravity = Vector3( 0, 200, 0 )
initial_velocity_random = 1.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = -50.0
radial_accel = 100.0
scale = 1.7
color = Color( 1, 0, 0, 1 )

[node name="Player1" type="KinematicBody2D"]
scale = Vector2( 1.5, 1.5 )
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Pistol" type="StaticBody2D" parent="."]

[node name="Sprite" type="Sprite" parent="Pistol"]
position = Vector2( 26.6667, 18.001 )
texture = ExtResource( 2 )

[node name="Position2D" type="Position2D" parent="."]
position = Vector2( 50, 15.5 )

[node name="ProgressBarContainer" type="Sprite" parent="."]

[node name="ProgressBar" type="ProgressBar" parent="ProgressBarContainer"]
margin_left = -42.6667
margin_top = -39.2041
margin_right = 43.3333
margin_bottom = -23.2041
rect_scale = Vector2( 1, 0.2 )
custom_styles/fg = SubResource( 2 )
custom_styles/bg = SubResource( 3 )
value = 50.0
percent_visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="."]
wait_time = 0.5
one_shot = true

[node name="Particles2D" type="Particles2D" parent="."]
position = Vector2( 0, 16 )
emitting = false
amount = 60
lifetime = 0.4
one_shot = true
process_material = SubResource( 4 )
             [gd_scene load_steps=8 format=2]

[ext_resource path="res://textures/blue.png" type="Texture" id=1]
[ext_resource path="res://textures/pistol.png" type="Texture" id=2]
[ext_resource path="res://scripts/Player2.gd" type="Script" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 1, 0, 0, 1 )

[sub_resource type="StyleBoxFlat" id=3]

[sub_resource type="ParticlesMaterial" id=4]
emission_shape = 1
emission_sphere_radius = 40.0
flag_disable_z = true
gravity = Vector3( 0, 200, 0 )
initial_velocity_random = 1.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
linear_accel = -50.0
radial_accel = 100.0
scale = 1.7
color = Color( 1, 0, 0, 1 )

[node name="Player2" type="KinematicBody2D"]
scale = Vector2( 1.5, 1.5 )
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Pistol" type="StaticBody2D" parent="."]

[node name="Sprite" type="Sprite" parent="Pistol"]
position = Vector2( 26.6667, 18.001 )
texture = ExtResource( 2 )

[node name="Position2D" type="Position2D" parent="."]
position = Vector2( 50, 15.5 )

[node name="ProgressBarContainer" type="Sprite" parent="."]

[node name="ProgressBar" type="ProgressBar" parent="ProgressBarContainer"]
margin_left = -42.6667
margin_top = -39.2041
margin_right = 43.3333
margin_bottom = -23.2041
rect_scale = Vector2( 1, 0.2 )
custom_styles/fg = SubResource( 2 )
custom_styles/bg = SubResource( 3 )
value = 50.0
percent_visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Timer" type="Timer" parent="."]
wait_time = 0.5
one_shot = true

[node name="Particles2D" type="Particles2D" parent="."]
position = Vector2( 0, 16 )
emitting = false
amount = 60
lifetime = 0.4
one_shot = true
process_material = SubResource( 4 )
              GDSC            P      ���ׄ�   ����Ҷ��   �������¶���   ���������������Ŷ���   ����׶��   ζ��   ��������Ӷ��(   ���������������������Ą��������������Ҷ�   ���������Ӷ�   ��������������������������Ҷ   ���϶���   ����������ƶ   ��������Ӷ��         	   notDelete      
                                                    #   	   $   
   *      .      /      6      :      D      K      L      M      N      3YY;�  Y;�  �  PQYY0�  P�  QV�  �  T�  �  �  �  P�  Q�  Y0�  PQV�  �  PQYY0�	  P�
  QV�  �  PQ�  &�
  T�  P�  QV�  �
  T�  P�  Q�  �  �  Y`           GDSC            L      ���ׄ�   ����Ҷ��   �������¶���   ���������������Ŷ���   ����׶��   ζ��   ��������Ӷ��(   ���������������������Ą��������������Ҷ�   ���������Ӷ�    ���������������������������Ҷ���   ���϶���   ����������ƶ   ��������Ӷ��         	   notDelete      
                                                    "   	   #   
   )      -      .      5      9      C      J      3YY;�  Y;�  �  PQYY0�  P�  QV�  �  T�  �  �  �  P�  Q�  Y0�  PQV�  �  PQYY0�	  P�
  QV�  �  PQ�  &�
  T�  P�  QV�  �
  T�  P�  QY`            GDSC         	   2      ���ӄ�   ������������������������Ҷ��   ���϶���   �ƶ�   ���������������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   �����ڶ�   ������Ӷ   �������Ӷ���   �����������Ӷ���             escape              res://scenes/Menu.tscn                     
                        '      0   	   3YY0�  P�  QV�  �  T�  YY0�  P�  QV�  &�  T�  P�  Q�  T�	  �  V�  �
  PQT�  P�  QY`GDSC         
          ���Ӷ���   ��������ض��   �������Ӷ���   ������Ҷ   �����ć���ض   �����Ą���ض   ������Ӷ      res://textures/green.png      res://textures/blue.png       res://textures/red.png                                                             	      
   3YY;�  Y;�  �  Y;�  �  YY;�  Y;�  Y;�  �  Y` GDSC         (   �      ���ӄ�   �����϶�   �����ڶ�   ������Ӷ   �����������������Ҷ�   �������Ӷ���   �����������Ӷ���   ��������؇�������Ҷ�   �����ć�   ���Ӈ���   ������Ҷ   ��҇����   �����ć���ض   ��������ض��   �������Ӈ�������Ҷ��   ����؇��   �������Ӷ���   ������҇�������Ҷ���   ������Ҷ   ��������؄�������Ҷ�   �����Ą�   ���ӄ���   ��҄����   �����Ą���ض   �������ӄ�������Ҷ��   ����؄��   ������҄�������Ҷ���             res://scenes/Game.tscn                     	                                  	   !   
   '      0      9      A      B      H      Q      Z      b      c      i      r      {      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YY0�  PQV�  �  T�  �  Y0�  PQV�  �  PQT�  P�  QYYY0�  PQV�  W�  �	  T�
  �  W�  �  T�
  �  �  T�  �  T�  YY0�  PQV�  W�  �  T�
  �  W�  �  T�
  �  �  T�  �  T�  YY0�  PQV�  W�  �  T�
  �  W�  �	  T�
  �  �  T�  �  T�  YYY0�  PQV�  W�  �  T�
  �  W�  �  T�
  �  �  T�  �  T�  YY0�  PQV�  W�  �  T�
  �  W�  �  T�
  �  �  T�  �  T�  YY0�  PQV�  W�  �  T�
  �  W�  �  T�
  �  �  T�  �  T�  Y`         GDSC   3      G   �     ������������τ�   ���������¶�   ����������¶   �������¶���   ����Ҷ��   ������϶   ���ƶ���   ��������¶��   ��������ٶ��   �ƶ�   ׶��   ��������Ӷ��   �����Ӷ�   ��������ń�   �������Ѷ���   �����϶�   �����ڶ�   �����ć���ض   ��������ض��   �����Ӷ�   ������Ӷ   ���������������Ŷ���   ����׶��   �������������������Ķ���   ����������Ķ   ����Ӷ��   �������Ӷ���   ���¶���   ������Ӷ   ������Ӷ   ���������Ӷ�   ����������Ķ   ����¶��   ���������������������Ҷ�   ϶��   ����������������Ҷ��   ζ��   ����Ӷ��   ����Ķ��   ���������Ҷ�   �����������������Ӷ�   �������Ӷ���   �������ض���   �������؄�   ��������������ض   ���������¶�   ��������Ҷ��   ������������������Ӷ   ����¶��   �������������Ӷ�   �涶      res://scenes/BulletLeft.tscn      res://scenes/BulletRight.tscn      &     2                     right      d         aaa                 ../Info/Label         Player2 won       ../Info       w                     a         left      d         e         ?                                                  %   	   +   
   0      5      :      ?      @      G      K      R      S      Y      c      k      l      x      y      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1     2   &  3   ,  4   6  5   ?  6   C  7   F  8   L  9   M  :   ]  ;   c  <   l  =   u  >   ~  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   3YY:�  ?PQY:�  ?P�  QYY;�  �  PQY;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�	  �  Y;�
  �  YY0�  P�  QV�  �	  �  �  W�  T�  �	  YY0�  PQV�  &P�  T�  �
  QV�  �  T�  �  T�  �  �  W�  T�  �L  P�  T�  QYY0�  P�  QV�  W�  �  T�  �	  �  �  &�	  
�  V�  �  P�  QT�  �  P�  Q�  �  P�  QT�  �	  �  �  T�  �	  �  �  PQ�  �  &�  PQV�  �  �  �  �  &�   T�!  P�  Q�  PQ�  �  V�  �  T�"  �  �  �  �  �  �  &�   T�!  P�  Q�  PQ�  
�  V�  �  T�"  �  �  �  �  �  �  &�   T�#  P�  QV�  �  T�$  �  �  �%  T�$  �%  T�"  �  �  W�  T�%  T�$  �  �  �  �  �  '�   T�#  P�  QV�  �  T�$  �  �  �%  T�$  �%  T�"  �  �  W�  T�%  T�$  �  �  �  �  �  (V�  �  T�$  �  �  �  &�   T�!  P�  QW�&  T�'  PQV�  &�  �  V�  ;�(  �  T�)  PQ�  �(  T�*  W�+  T�,  �  �-  PQT�.  P�(  Q�  &�  �  V�  ;�/  �  T�)  PQ�  �/  T�*  W�+  T�,  �  �-  PQT�.  P�/  Q�  W�&  T�0  P�  Q�  �  �  T�"  �  T�"  �  �  �  �1  P�  R�  T�2  QY`        GDSC   2      I   �     ������������τ�   ���������¶�   ����������¶   �������¶���   ����Ҷ��   ������϶   ���ƶ���   ��������¶��   ��������ٶ��   �ƶ�   ��������Ӷ��   �����Ӷ�   ��������ń�   �������Ѷ���   �����϶�   ����Ӷ��   ζ��   ϶��   �������������������Ķ���   �����ڶ�   �����Ą���ض   �������Ӷ���   �����Ӷ�   ������Ӷ   ���������������Ŷ���   ����׶��   ����������Ķ   ����Ӷ��   �������Ӷ���   ���¶���   ������Ӷ   ������Ӷ   ���������Ӷ�   ����������Ķ   ����¶��   ���������������������Ҷ�   ����������������Ҷ��   ����Ķ��   ���������Ҷ�   �����������������Ӷ�   �������Ӷ���   �������ض���   �������؄�   ��������������ض   ���������¶�   ��������Ҷ��   ������������������Ӷ   ����¶��   �������������Ӷ�   �涶      res://scenes/BulletLeft.tscn      res://scenes/BulletRight.tscn      &     2                     left   d                         ../Info/Label         Player1 won       ../Info       up              right         enter         ?                                                  %   	   +   
   0      5      :      ;      B      F      M      N      T      _      i      j      t      |      }      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,      -     .     /     0     1      2   *  3   .  4   7  5   =  6   G  7   P  8   T  9   W  :   ]  ;   ^  <   n  =   t  >   }  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   3YY:�  ?PQY:�  ?P�  QYY;�  �  PQY;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�	  �  YY0�
  P�  QV�  �	  �  �  W�  T�  �  YY0�  PQV�  �  T�  �  T�  �	  �  W�  T�  T�  �	  �  �  &P�  T�  �
  QV�  �  T�  �  T�  �  �  W�  T�  �L  P�  T�  QYY0�  P�  QV�  W�  �  T�  �	  �  �  &�	  
�  V�  �  P�  QT�  �  P�  Q�  �  P�  QT�  �  �  �  T�  �  �  �   PQ�  �  &�!  PQV�  �  �  �  �  &�"  T�#  P�  Q�!  PQ�  �  V�  �  T�  �  �  �  �	  �  �  &�"  T�#  P�  Q�!  PQ�  
�	  V�  �  T�  �  �  �  �  �  �  &�"  T�$  P�  QV�  �  T�  �  �  �  T�  �  T�  �	  �  W�  T�  T�  �	  �  �  �  �  '�"  T�$  P�  QV�  �  T�  �  �  �  T�  �  T�  �	  �  W�  T�  T�  �	  �  �  �  �  (V�  �  T�  �  �  �  &�"  T�#  P�  QW�%  T�&  PQV�  &�  �  V�  ;�'  �  T�(  PQ�  �'  T�)  W�*  T�+  �  �,  PQT�-  P�'  Q�  &�  �  V�  ;�.  �  T�(  PQ�  �.  T�)  W�*  T�+  �  �,  PQT�-  P�.  Q�  W�%  T�/  P�  Q�  �  �  T�  �  T�  �  �  �  �0  P�  R�  T�1  QY` GDST@   @            �  PNG �PNG

   IHDR   @   @   %�   sRGB ���  �IDATh��Mn� Fg�����Rs� =O}�����/CVl� �V��4oL����Gq�:����zC��#?�����_T �
�y����_�=/���}j߁��4]B)��r`fo�1&���;J�d�t	��hT �
�Dv�č�'�%�I�	9�3�����%�FШ @ӽ �0g���շF")yVe�����@| "�SP�}H�,�V��j/%����r./���*ds�Q��N�P��;�����-���r��~&3�����h%Z��^�%���xz<~^�X�Đ���D|s��2:Y�]o�ۍ�����G>������r�݋�\o�݉�5Z|���Q"Xcr�4!`�;a�����`�Y��L76���_�
�Q4*�FШ ����]�y����    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/blue.png-1439378f896334c29f5666221247547c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/blue.png"
dest_files=[ "res://.import/blue.png-1439378f896334c29f5666221247547c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST               }   PNG �PNG

   IHDR         ��k   sRGB ���   3IDAT�c<ƀ0!��C1��4RP�0u0000021� #W�J3�K  ����GQ�    IEND�B`�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bullet.png-fcc9b6edffdc3d7ef5fea596f59b4f40.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/bullet.png"
dest_files=[ "res://.import/bullet.png-fcc9b6edffdc3d7ef5fea596f59b4f40.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @            �  PNG �PNG

   IHDR   @   @   %�   sRGB ���  �IDATh��An� E��g��[�=L�[�R��e�%C�|���2&��`P��1D�q��c��뼽�3�@�h^����w��ϟ��cZ_����t�B9��:a��֭�9o_)}����AШ @H�V�~%�*�-TH��h0�����-�FШ @3� ~3�f����k'��S�W5�Ec	�O�DD�2xh�D�ɤ߰$V�%��۔��A|@����.d-Y{���pR���������J8̽|hG?��'��.;�N��"F}N�*N����ya����]WI8��t������e��΋�*v�o��y2��BDV�l�+q��$����J�=ެ���N��8�	C~�u-����0�CF�/�GШ @�hT �����ъ#��$�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/green.png-b4f8ddc6b00d4e627f0e027e2e1193bf.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/green.png"
dest_files=[ "res://.import/green.png-b4f8ddc6b00d4e627f0e027e2e1193bf.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST@   @            9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-f931f6b997c470ed41f337ac62349254.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/icon.png"
dest_files=[ "res://.import/icon.png-f931f6b997c470ed41f337ac62349254.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST               �   PNG �PNG

   IHDR         ��   sRGB ���   KIDAT8�c`�0B���2��J��4���9�hr��1 �.$�0b$�0,
��G�c` �B�#�@���7p� S�X��    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/pistol.png-ff419dbd1311ba2d92c32c7ff503f2cc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/pistol.png"
dest_files=[ "res://.import/pistol.png-ff419dbd1311ba2d92c32c7ff503f2cc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @            �  PNG �PNG

   IHDR   @   @   %�   sRGB ���  �IDATh��A�!E�ɬ<H�g����D�}��2�]t����ۉ��GQ�&��}]�1>���/t���hT �w�����
+��ۚ�W�<}!C�P�-��Nc��ι����@*}�)��-T�
�Q4*�,�٭
72�N\4��P%%'�b@U9�E[�
�Q4*�fz�a.���|����<�C�Ac:	�'r!�|�4x�`"e��wX)6�J�b풉�A� ��rr��;��(>�)\����r^��e��K;���P;�}]7��h;E���Fjh�������u,9�~$�[�=n�;�!�,mt>�d�ӿ�F�X�CDv�b�;q��R2���(��1y�!��]0�	p���6Z���2�p��@�hT �
�Q4�L�h�{*׊�    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/red.png-3cad0ca19141406d60f5fd2311159a86.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/red.png"
dest_files=[ "res://.import/red.png-3cad0ca19141406d60f5fd2311159a86.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST               #  PNG �PNG

   IHDR         �x��   sRGB ���  �IDATx��ݱ��@E���0�#cr�ceI�d�w��*k�q�����Xk}V�1=  v�5=  �����y�����== Ƹ  @�  �   A  �ί��ڵ�[��;= ~    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	  :�z|�w� `#    $   H  @б��L�vL ��\   H  @�  ����<�����	 ��\   H  @�  �   A_~�]; ��\   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   ����}�]; ��\   H  @�  �   A�Z�3=b�1=  vs �   A  ���y�7���{z �q �   A  �  ��uMo�v�j �r �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  ���}�� �f.  $   H  @�  ��c���1�  ��  @�  �   A��<�~����' ��s �   A  �  ��uMo  6s �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  �   A  �  	    $   H  @�  ���}�� �f.  $   H  @�  ��c���1�  ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ��7OC$l�5��    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tilemap.png-6c0e611be40ed183c593b0b25f50e65f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/tilemap.png"
dest_files=[ "res://.import/tilemap.png-6c0e611be40ed183c593b0b25f50e65f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [remap]

path="res://scripts/BulletLeft.gdc"
   [remap]

path="res://scripts/BulletRight.gdc"
  [remap]

path="res://scripts/Game.gdc"
         [remap]

path="res://scripts/Global.gdc"
       [remap]

path="res://scripts/Menu.gdc"
         [remap]

path="res://scripts/Player1.gdc"
      [remap]

path="res://scripts/Player2.gdc"
      �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         shoot'im down      application/run/main_scene          res://scenes/Menu.tscn     application/config/icon          res://textures/icon.png    autoload/Global          *res://scripts/Global.gd   display/window/size/width            display/window/size/height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep_height    global/export             importer_defaults/texture$               flags/filter          input/ui_end8               deadzone      ?      events            input/w`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/s`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/a`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/d`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/e`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   E      unicode           echo          script         input/up`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/down`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/enter`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/escape`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_clear_color      ���>��9?��u?  �?)   rendering/environment/default_environment          res://default_env.tres          