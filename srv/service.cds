using {demo as my} from '../db/schema';

service MyService {
    entity Foo as projection on my.Foo;
    entity Bar as projection on my.Bar;
}

annotate MyService.Foo with @(
    odata.draft.enabled,
    Capabilities           : {
        Insertable : true,
        Updatable  : true,
        Deletable  : true,
        Readable   : true
    },
    NavigationRestrictions : {RestrictedProperties : [{
        NavigationProperty : items,
        Insertable         : true,
        Updatable          : true,
        Deletable          : true
    }]}
);

annotate MyService.Bar with @(
    Capabilities           : {
        Insertable : true,
        Updatable  : true,
        Deletable  : true,
        Readable   : true
    }
);
