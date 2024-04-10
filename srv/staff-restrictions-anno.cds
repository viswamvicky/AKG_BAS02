using staffsrv from './orgstaffinfo-srv';

annotate staffsrv.Staff with @Capabilities : { 
    ReadRestrictions : {
        $Type : 'Capabilities.ReadRestrictionsType',
        Readable:true
    },
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:true
    },
    DeleteRestrictions : {
        $Type : 'Capabilities.DeleteRestrictionsType',
        Deletable:true
    },
 };