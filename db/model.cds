using { cuid } from '@sap/cds/common';

namespace test;

entity header : cuid {
    title : String;

    items : Composition of many item on items.parent = ID;
    status : Association to status;
}

entity item : cuid {
    parent : UUID;
    title : String;
}

@cds.autoexpose
entity status : cuid {
    title : String;
}