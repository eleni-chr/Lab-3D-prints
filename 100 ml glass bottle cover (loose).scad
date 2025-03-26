module outer(){
    cylinder(83,31.5,31.5,center=true,$fn=200);}

module inner(){
    translate([0,0,1])
    cylinder(82,29.5,29.5,center=true,$fn=200);}

module diff()
difference(){outer();inner();}
diff();