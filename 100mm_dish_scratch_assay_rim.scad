module rim
(){cylinder(10,45.5,45.5,true,$fn=100);}

module bottom
(){cylinder(9,44.5,44.5,true,$fn=100);}

module top
(){cylinder(6,44.5,44.5,false,$fn=100);}

module uni()
union(){bottom();top();}

module allholes(){
module holes(){
module h1
(){cylinder(10,1.75,1.75,center=true,$fn=100);}
h1();

module h2
(){translate([19.75,0,0])
    cylinder(10,1.75,1.75,center=true,$fn=100);}
h2();
    
module h3
(){translate([-19.75,0,0])
    cylinder(10,1.75,1.75,center=true,$fn=100);}
h3();

module h4
(){translate([0,19.75,0])
    cylinder(10,1.75,1.75,center=true,$fn=100);}
h4();

module h5
(){translate([0,-19.75,0])
    cylinder(10,1.75,1.75,center=true,$fn=100);}
h5();
}
holes();
}

module diff()
difference(){rim();uni();allholes();}
diff();