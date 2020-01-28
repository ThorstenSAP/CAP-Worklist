using { sap.capire.worklist as my } from '../db/schema';

service AdminService @(_requires:'admin') {
  entity Areas as SELECT from my.Areas;
  entity ToDos as select from my.ToDos;



annotate AdminService.ToDos with @odata.draft.enabled;
annotate AdminService.Areas with @odata.draft.enabled;
}