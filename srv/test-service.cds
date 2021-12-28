using { test } from '../db/model';

service TestService {
    @odata.draft.enabled
    entity Header as projection on test.Header actions { 
        function myFunction() returns Boolean; 
    };

    //@cds.odata.valuelist
    entity User as projection on test.User;
};

service RawService {
    entity Header as projection on test.Header actions { 
        function myFunction() returns Boolean; 
    };

    entity User as projection on test.User;
};

annotate TestService.Header with @(UI : {
    LineItem : {
        $value: [    
            { Value : name },
            { Value : user_ID }
        ]
    }
});

annotate TestService.Header {
    ID            @UI.Hidden;
    name          @title        : 'header name';
    user          @title        : 'user' @Common : {
        Text            : user.name,
        TextArrangement : #TextOnly
    };
}

annotate TestService.User with {
    ID @title : 'User ID';
    name @title : 'User name';
}