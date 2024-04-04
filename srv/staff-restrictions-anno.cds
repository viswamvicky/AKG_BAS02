using staffsrv from './orgstaffinfo-srv';

annotate staffsrv.staff with @Capabilities : { 
    ReadRestrictions : {
        $Type : 'Capabilities.ReadRestrictionsType',
        Readable:false
    },
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:true
    },
    DeleteRestrictions : {
        $Type : 'Capabilities.DeleteRestrictionsType',
        Deletable:false
    },
 };