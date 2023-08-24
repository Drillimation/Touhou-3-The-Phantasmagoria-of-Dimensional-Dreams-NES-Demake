var inst = instance_create_depth(x,y,0,obj_bullet_player);
inst.player_id = self.player_id;
inst.sprite_index = spr_kagami_bullet;
inst.direction = 90;
inst.speed = 2;