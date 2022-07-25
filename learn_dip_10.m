clc
clear all
close all

block_size=16;
block_cnt=32;

snake_color=234;
food_color=10;
back_color=35;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%create head

snake_head_color=snake_color;
snake_ring_eye_color=23;
snake_eye_color=46;
snake_nose_color=46;
snake_tail_color=snake_color;
snake_body_color=50;

snake_body=ones(block_size+1,block_size+1)*snake_color;
snake_body(5:block_size-5,5:block_size-5)=snake_body_color;

head_box=ones(block_size+1,block_size+1)*snake_head_color;
head_box(1:3,8:12)=snake_ring_eye_color;
head_box(end-2:end,8:12)=snake_ring_eye_color;
head_box(1:2,8:11)=snake_eye_color;
head_box(end-1:end,8:11)=snake_eye_color;


head_box(6,1)=snake_nose_color;
head_box(10,1)=snake_nose_color;


head_up=rot90(fliplr(head_box));
head_down=rot90(head_box);
head_left=head_box;
head_right=fliplr(head_box);


tail_box=ones(block_size+1,block_size+1)*back_color;
tail_box(:,14:end)=snake_color;
tail_box(2:end-2,12:end-2)=snake_color;
tail_box(4:end-4,10:end-4)=snake_color;
tail_box(6:end-6,1:end-6)=snake_color;
tail_box=fliplr(tail_box);

tail_up=rot90(fliplr(tail_box));
tail_down=rot90(tail_box);
tail_left=tail_box;
tail_right=fliplr(tail_box);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[eat_food_sound,Fs]=audioread('p_eat.wav');
[dead_sound,Fs]=audioread('p_dead.wav');
[move_sound,Fs]=audioread('p_move.wav');
Fs=2*Fs;

update_delay=0.01;


img_ram=ones(block_size*block_cnt)*back_color;

%%each 3 home define pos and dir
% 0 up    w
% 1 down  s
% 2 right d
% 3 left  a
snake_pos=[10,1,0,10,2,0,10,3,0];
dir='w'

for i=1:3:len(snake_pos);
   xs=snake_pos(i)*block_size+1;
   ys=snake_pos(i+1)*block_size+1;   
   img_ram(xs:xs+block_size,ys:ys+block_size)=snake_body; 
end


inp='y';
prompt='enter key in w s a d n: ';
step=1;
step_cnt_add_food=8;
score=0;
while inp~='n'
    
    
    if inp=='w' && dir~='s'
        dir='w';
    elseif inp=='s' && dir~='w'
        dir='s';
    elseif inp=='d' && dir~='a'
        dir='d';   
    elseif inp=='a' && dir~='d'
        dir='a';
    end
    
    dx=0;
    dy=0;
    if dir=='w'
       dx=-1;
    elseif dir=='s'
       dx=1;
    elseif dir=='a'
       dy=-1; 
    elseif dir=='d'
       dy=1;
    end
    
    if dx~=0 ||  dy~=0
       
       snake_posx_new=mod(snake_pos(end-2)+dx,block_cnt);
       snake_posy_new=mod(snake_pos(end-1)+dy,block_cnt);
              
       posx_new=snake_posx_new*block_size+1;
       posy_new=snake_posy_new*block_size+1;
       
       if img_ram(posx_new+1,posy_new+1)==food_color
           
           if dir=='w'
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_up;
           elseif dir=='s'
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_down;
           elseif dir=='d'
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_right;
           else
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_left;
           end
           
           xs=snake_pos(end-2)*block_size+1;
           ys=snake_pos(end-1)*block_size+1; 
           
           img_ram(xs:xs+block_size,ys:ys+block_size)=snake_body;
           
           for i=len(snake_pos):-3:6
               snake_pos(i-3)=snake_pos(i);
           end
           
           score=score+1;
           snake_pos(end+1)=snake_posx_new;
           snake_pos(end+1)=snake_posy_new;
           if dir=='w'
               snake_pos(end+1)=0;
           elseif dir=='s'
               snake_pos(end+1)=1;
           elseif dir=='d'
               snake_pos(end+1)=2;
           elseif dir=='a'
               snake_pos(end+1)=3;
           end
           
           sound(eat_food_sound,Fs);
       elseif img_ram(posx_new+1,posy_new+1)==snake_color
           sound(dead_sound,Fs);
           break
       else 
           
           if dir=='w'
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_up;
           elseif dir=='s'
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_down;
           elseif dir=='d'
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_right;
           else
               img_ram(posx_new:posx_new+block_size,posy_new:posy_new+block_size)=head_left;
           end
           
           
           
           xs=snake_pos(end-2)*block_size+1;
           ys=snake_pos(end-1)*block_size+1; 
      
           
           img_ram(xs:xs+block_size,ys:ys+block_size)=snake_body;
           
           
           for i=len(snake_pos):-3:6
               snake_pos(i-3)=snake_pos(i);
           end
           
           
           snake_pos(end+1)=snake_posx_new;
           snake_pos(end+1)=snake_posy_new;
           if dir=='w'
               snake_pos(end+1)=0;
           elseif dir=='s'
               snake_pos(end+1)=1;
           elseif dir=='d'
               snake_pos(end+1)=2;
           elseif dir=='a'
               snake_pos(end+1)=3;
           end
           
           xs=snake_pos(1)*block_size+1;
           ys=snake_pos(2)*block_size+1; 
           
           img_ram(xs:xs+block_size,ys:ys+block_size)=back_color;
           
           
           snake_pos(1:3)=[];
            
           xs=snake_pos(1)*block_size+1;
           ys=snake_pos(2)*block_size+1; 
           
           yv=snake_pos(5)-snake_pos(2);
           xv=snake_pos(4)-snake_pos(1);
           
           if yv==0 && xv==-1
               img_ram(xs:xs+block_size,ys:ys+block_size)=tail_up;
           elseif yv==0 && xv==1
               img_ram(xs:xs+block_size,ys:ys+block_size)=tail_down;
           elseif yv==1 && xv==0
               img_ram(xs:xs+block_size,ys:ys+block_size)=tail_right;
           elseif yv==-1 && xv==0
               img_ram(xs:xs+block_size,ys:ys+block_size)=tail_left;
           end
           
           sound(move_sound,Fs);
       end
       
    end
    
    
    image(img_ram);
    title(sprintf('score : %d step : %d',score,step))
    
   % pause(update_delay);
    %inp=input(prompt,'s');
    
    w=waitforbuttonpress;
    if w
        inp=get(gcf,'CurrentCharacter');
    end
    
    step=step+1;
    
    %food adding functions
    if mod(step,step_cnt_add_food)==0
        repeat=1;
        while repeat==1
            pos=random('unid',block_cnt,1,2);
            xs=mod(pos(1),block_cnt)*block_size+1;
            ys=mod(pos(2),block_cnt)*block_size+1;
            if img_ram(xs+1,ys+1)==back_color
                img_ram(xs:xs+block_size,ys:ys+block_size)=food_color;
                repeat=0;
            end
        end
    end
    
end






