using { cuid } from '@sap/cds/common';

namespace test;

entity Header : cuid {
    name : String;

    items : Composition of many Item on items.parent = $self;
    user : Association to User;
}

entity Item : cuid {
    name : String;

    parent : Association to Header;
}

entity User : cuid {
    name : String;
}