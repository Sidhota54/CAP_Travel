using OrderManagmentService as service from '../../srv/catalog-service';

annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: soNumber,
                Label: 'SO Number is'
            },
            {
                $Type: 'UI.DataField',
                Value: orderDate,
            },
            {
                $Type: 'UI.DataField',
                Value: customerName,
            },
            {
                $Type: 'UI.DataField',
                Value: customerNumber,
            },
            {
                $Type: 'UI.DataField',
                Value: PoNumber,
            },
            {
                $Type: 'UI.DataField',
                Value: InquiryNumber,
            },
            {
                $Type: 'UI.DataField',
                Value: totalOrderItems,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'Information',
        Value : soNumber,
        Target: '@UI.FieldGroup#GeneratedGroup',
    },{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet2',
        Label : 'Tech Details',
        // Value : '',
        Target: '@UI.FieldGroup#TechDetails',
    } ],
    UI.HeaderInfo                : {
        TypeName      : 'Item',
        TypeNamePlural: 'Items',
        Title         : {
            $Type: 'UI.DataField',
            Value: soNumber,
            Label: 'So Number'
        },
        Description:{
             $Type: 'UI.DataField',
            Value: customerName,
            Label: 'Name'
        }
    },
    UI.SelectionFields           : [
        soNumber,
        customerName
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: soNumber,
            Label: 'So Number'
        },
        {
            $Type: 'UI.DataField',
            Value: orderDate,
        },
        {
            $Type: 'UI.DataField',
            Value: customerName,
        },
        {
            $Type: 'UI.DataField',
            Value: customerNumber,
        },
        {
            $Type: 'UI.DataField',
            Value: PoNumber,
        },
    ],
);
