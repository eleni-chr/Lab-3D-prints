module outer(){
    cylinder(82,30.5,30.5,center=true,$fn=200);}

module inner(){
    translate([0,0,1])
    cylinder(81,28.5,28.5,center=true,$fn=200);}

module diff()
difference(){outer();inner();}
diff();