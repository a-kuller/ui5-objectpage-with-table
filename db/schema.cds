using { cuid } from '@sap/cds/common';

namespace demo;

entity Foo : cuid {
    col1 : String;
    col2: String;
    items: Association to many Bar on items.foo = $self;
}

entity Bar : cuid {
    foo : Association to Foo;
    col1b : String;
    col2b: String;
}

annotate cuid with {
    ID @Core.Computed;
};