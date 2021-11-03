using {test} from '../db/model';

service TestService {
    @odata.draft.enabled
    entity header as projection on test.header;
};

service RawService {
    entity header as projection on test.header;
};