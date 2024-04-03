namespace staffinfo;
using {cuid} from '@sap/cds/common';


entity Staff  {
    key id : UUID;
    sName       : String;
    sDepartment : Integer;
    sGender     : String; 
    address     : Composition of many Address
                      on address.staff = $self;
    salary      : Composition of many Salary
                      on salary.staff = $self;

}
entity Address {
    key id :UUID;
  sVillage : String;
  sTown    : String;
  sDistric : String;
  sState   : String;
  iPincode : Integer;
  staff:Association to Staff;
}

entity Salary : cuid {
  iPf        : Integer;
  iPt        : Integer;
  iTds       : Integer;
  iNetSalary : Integer;
  staff      : Association to Staff;
}

