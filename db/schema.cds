namespace sap.capire.worklist;
using {managed, cuid} from '@sap/cds/common';

entity Areas : managed, cuid { 
  key ID : Integer; //used for the linking between the ToDos and the Areas
  name : String (50);
  todo : Association to ToDos on todo.area = $self;
}

entity ToDos : managed, cuid {
  description : String(50) default 'a description' @mandatory;
  solved : Boolean default false; 
  area: Association to Areas @mandatory;
}