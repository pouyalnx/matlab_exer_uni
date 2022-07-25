function qpsk = coder(d);
% Coder user data steram of bits for making codes
%   each outpit contain data header and crc data make an transable frame
%d=[1,0,0,1]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%used for csi
BLOCK_SIZE=8;
FRAME_SIZE=8;
block=ones(FRAME_SIZE*BLOCK_SIZE,1)*(1+1i);

header_pilot=[
1+1i;
1-j;
-1+j;
-1-j;
1+j;
-1-1i;
1-j;
-1+j
];

block(1:BLOCK_SIZE)=header_pilot;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pos_s=BLOCK_SIZE+1; %block one reserved for channel estimate
pos_e=BLOCK_SIZE*(FRAME_SIZE-1); %end block reseved for crc

if mod(len(d),2)==1
    d=[d,0];
end

for k=1:2:len(d)
    block(pos_s,1)=1-2*d(k)+(1-2*d(k+1))*1i;
    pos_s=pos_s+1;
    if pos_e==pos_s
        break
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

crc_start=BLOCK_SIZE*(FRAME_SIZE-1);

crcable_start=BLOCK_SIZE;
crcable_end=BLOCK_SIZE*(FRAME_SIZE-1);

for k=1:BLOCK_SIZE
    su=sum(block(crcable_start:BLOCK_SIZE:crcable_end,:));
    block(k+crc_start,1)=mod(real(su),2)+mod(imag(su),2)*1i;
end
qpsk=block;
end

