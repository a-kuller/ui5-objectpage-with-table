using MyService from '../../srv/service';

annotate MyService.Foo with @(UI : {
    SelectionFields     : [
        col1,
        col2
    ],
    LineItem            : [
        {Value : col1},
        {Value : col2},
    ],
    HeaderInfo          : {
        TypeName       : '{i18n>item}',
        TypeNamePlural : '{i18n>items}',
        Title          : {Value : ID},
    },
    FieldGroup #general : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                Value : col1,
                Label : '{i18n>col1}'
            },
            {
                Value : col2,
                Label : '{i18n>col2}'
            }
        ]
    },
    Facets              : [
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '{i18n>general}',
            ID     : 'general',
            Target : '@UI.FieldGroup#general'
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Target : 'items/@UI.LineItem',
            Label  : '{i18n>items}',
            ID     : 'items',
        }
    ]
});

annotate MyService.Bar with @(UI : {
    LineItem        : [
        {Value : col1b},
        {Value : col2b},
    ],
    HeaderInfo      : {
        TypeName       : '{i18n>item}',
        TypeNamePlural : '{i18n>items}',
        Title          : {Value : ID}
    }
});
