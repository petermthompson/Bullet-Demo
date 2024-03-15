GDPC                P                                                                         T   res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn  �            �&b��x�yF��)��    T   res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn   �      x      +��=q�Ջ��w�,�    ,   res://.godot/global_script_class_cache.cfg  �!             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �%      W       ���*q��a�#3ؗ��       res://bouncing_plane.gd         �      x���W!�u�:O��!       res://bullet.gd �      �      �V?�!��ͥ�(��)       res://bullet.tscn.remap  !      c       �ڦQDc?�]�F��       res://icon.svg   "      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       S�l�\�Ǡ�H$w�x       res://project.binary &      #      �9�\!U�j�dE�N�       res://world.gd  `            ��N'���x̹�lLb{g       res://world.tscn.remap  p!      b       �t�׵B�}��6�x                extends Node2D

var velocity := Vector2(100.0, 100.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Update the position based on velocity
	position += velocity * delta
	
	# Get the size of the screen
	var screen_size = get_viewport_rect().size
	
	# Keep the x value within the screen
	if position.x < 0.0:
		position.x = 0.0
		velocity.x = abs(velocity.x)
	elif position.x > screen_size.x:
		position.x = screen_size.x
		velocity.x = -abs(velocity.x)
	
	# Keep the y value within the screen
	if position.y < 0.0:
		position.y = 0.0
		velocity.y = abs(velocity.y)
	elif position.y > screen_size.y:
		position.y = screen_size.y
		velocity.y = -abs(velocity.y)
      extends Node2D

var velocity := Vector2(0.0, 0.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Update the position based on velocity
	position += velocity * delta
	
	# Get the size of the screen
	var screen_size = get_viewport_rect().size
	
	# Delete the bullet if it goes outside of the screen
	if position.x < 0.0 or position.x > screen_size.x \
			or position.y < 0.0 or position.y > screen_size.y:
		queue_free()
      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://bullet.gd ��������      local://PackedScene_v8q7t          PackedScene          	         names "         Bullet    script    Node2D 
   ColorRect    offset_left    offset_top    offset_right    offset_bottom    	   variants                      ��     �@      node_count             nodes        ��������       ����                            ����                                     conn_count              conns               node_paths              editable_instances              version             RSRC         GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://knvh14bmooq8"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 extends Node2D

var bullet_scene := preload("res://bullet.tscn")
const BULLET_SPEED: float = 1000.0

# When the timer runs out, fires a bullet from Firing to Target
func _on_fire_timer_timeout():
	print("Fire!")
	# Get a reference to each of the planes
	var firing := $FiringPlane
	var target := $TargetPlane
	# Instantiate a new bullet
	var bullet := bullet_scene.instantiate()
	add_child(bullet)
	# Put the bullet in the right position and give it the right velocity
	bullet.position = firing.position
	bullet.velocity = get_bullet_velocity(firing.position, firing.velocity, target.position, target.velocity, BULLET_SPEED)

# This function calculates the velocity which a bullet should travel to hit a target plane.
# Note: All parameters should be provided in global coordinates. The return value is also given in
# global coordinates.
#
# Parameters:
# pos_fire: the position of the firing plane
# vel_fire: the velocity of the firing plane
# pos_targ: the position of the target plane
# vel_targ: the velocity of the target plane
# speed_bullet: the speed at which the bullet will travel (relative to the firing plane)
func get_bullet_velocity(pos_fire: Vector2, vel_fire: Vector2,
						pos_targ: Vector2, vel_targ: Vector2,
						speed_bullet: float) -> Vector2:
	var vel_fire_to_targ_unit: Vector2 = (pos_targ - pos_fire).normalized()
	var vel_fire_to_targ_mag: float # unknown at this time
	var a: float = 1
	var b: float = 2.0 * vel_fire_to_targ_unit.dot(vel_targ - vel_fire)
	var c: float = (vel_targ - vel_fire).length_squared() - speed_bullet * speed_bullet
	vel_fire_to_targ_mag = (-b + sqrt(b * b - 4.0 * a * c)) / (2.0 * a)
	var vel_bullet: Vector2 = vel_targ + vel_fire_to_targ_mag * vel_fire_to_targ_unit
	print((vel_bullet - vel_fire).length())
	print(speed_bullet)
	print()
	return vel_bullet
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://world.gd ��������
   Texture2D    res://icon.svg 	3��&�!
   Script    res://bouncing_plane.gd ��������      local://PackedScene_d2o8c ^         PackedScene          	         names "         World    script    Node2D    FiringPlane 	   position    scale    texture 	   Sprite2D    TargetPlane 
   FireTimer 
   wait_time 
   autostart    Timer    _on_fire_timer_timeout    timeout    	   variants                 
      B   B
     �>  �>                  
    ��D ��C      @            node_count             nodes     2   ��������       ����                            ����                                             ����                                          	   ����   
                      conn_count             conns                                      node_paths              editable_instances              version             RSRC        [remap]

path="res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn"
             [remap]

path="res://.godot/exported/133200997/export-76e0adcbc83681695885bae615f516ae-world.scn"
              list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             T{���[\   res://bullet.tscn	3��&�!
   res://icon.svgѥ[�\<^j   res://world.tscn         ECFG      application/config/name         Bullet Demo    application/run/main_scene         res://world.tscn   application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg     dotnet/project/assembly_name         demo             