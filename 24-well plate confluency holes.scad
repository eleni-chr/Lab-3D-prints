module plate
(){cube([127,84,1],true);}

module wells(){
module A1
(){translate([-48,29.5,0])cylinder(5,7.5,7.5,center=true);}
A1();

module A2
(){translate([-28,29.5,0])
    cylinder(5,7.5,7.5,center=true);}
A2();

module A3
(){translate([-8,29.5,0])
    cylinder(5,7.5,7.5,center=true);}
A3();

module A4
(){translate([12,29.5,0])
    cylinder(5,7.5,7.5,center=true);}
A4();

module A5
(){translate([32,29.5,0])
    cylinder(5,7.5,7.5,center=true);}
A5();

module A6
(){translate([52,29.5,0])
    cylinder(5,7.5,7.5,center=true);}
A6();

module B1
(){translate([-48,9.5,0])cylinder(5,7.5,7.5,center=true);}
B1();

module B2
(){translate([-28,9.5,0])
    cylinder(5,7.5,7.5,center=true);}
B2();

module B3
(){translate([-8,9.5,0])
    cylinder(5,7.5,7.5,center=true);}
B3();

module B4
(){translate([12,9.5,0])
    cylinder(5,7.5,7.5,center=true);}
B4();

module B5
(){translate([32,9.5,0])
    cylinder(5,7.5,7.5,center=true);}
B5();

module B6
(){translate([52,9.5,0])
    cylinder(5,7.5,7.5,center=true);}
B6();
}

module allholes(){
module row(){
module holes(){
module h1
(){translate([-50.616,32.116,0])
    cylinder(10,2,2,center=true,$fn=100);}
h1();

module h2
(){translate([-45.384,32.116,0])
    cylinder(10,2,2,center=true,$fn=100);}
h2();
    
module h3
(){translate([-45.384,26.884,0])
    cylinder(10,2,2,center=true,$fn=100);}
h3();

module h4
(){translate([-50.616,26.884,0])
    cylinder(10,2,2,center=true,$fn=100);}
h4();
}
holes();

module holes2(){translate([20,0,0])
    holes();}
holes2();

module holes3(){translate([20,0,0])
    holes2();}
holes3();

module holes4(){translate([20,0,0])
    holes3();}
holes4();

module holes5(){translate([20,0,0])
    holes4();}
holes5();

module holes6(){translate([20,0,0])
    holes5();}
holes6();
}
row();

module row2(){translate([0,-20,0])
    row();}
row2();

module row3(){translate([0,-20,0])
    row2();}
row3();

module row4(){translate([0,-20,0])
    row3();}
row4();
}

module diff()
difference(){plate();allholes();}
diff();