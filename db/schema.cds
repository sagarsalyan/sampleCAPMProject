namespace tddb;

type address {
    phone: String;
    Street : String;
    Pincode: String;
    State: String;
    Country: String;
}
entity Teachers {
        key id:String;
        name: String;
        gender: String;
        address:address;
        depts : Association to Departments;
    }

entity Departments {
        key id:String;
        name: String;
        teachers: Association to many Teachers on teachers.depts = $self;
    }

