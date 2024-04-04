using staffsrv from './orgstaffinfo-srv';

annotate staffsrv.staff with {
    id          @title: '{i18n>id}';
    sName       @title: '{i18n>sName}';
    sDepartment @title: '{i18n>sDepartment}';
    sGender     @title: '{i18n>sGender}';
};
