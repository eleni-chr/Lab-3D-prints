module outer(){
    cube([106,107,77],center=false);}

module inner(){
    translate([0,2,2])
    cube([103,104,74],center=false);}

module diff(){
    rotate(a=[0,90,0])
    difference(){outer();inner();}}
diff();