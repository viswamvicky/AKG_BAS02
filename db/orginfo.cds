namespace staffinfo;

using {cuid} from '@sap/cds/common';


entity Staff : cuid {

  sName       : String;
  sDepartment : Integer;
  sGender     : String;
  address     : Composition of many Address
                  on address.staff = $self;
  salary      : Composition of many Salary
                  on salary.staff = $self;
  department  : Composition of many Salary
                  on department.staff = $self;

}

entity Address : cuid {

  sVillage : String;
  sTown    : String;
  sDistric : String;
  sState   : String;
  iPincode : Integer;
  staff    : Association to Staff;
}

entity Salary : cuid {
  iPf        : Integer;
  iPt        : Integer;
  iTds       : Integer;
  iNetSalary : Integer;
  staff      : Association to Staff;
}

entity Department : cuid {
  name        : String;
  description : String;
  staff       : Association to Staff;
}
