using { sap.capire.worklist as my } from '../db/schema';

service CatalogService @(path:'/browse') {

  // @readonly entity Tasks as SELECT from my.Tasks {*,
  //   details.description as details
  // } excluding { createdBy, modifiedBy };

  @requires_: 'authenticated-user'
  // entity Details as projection on my.Details;
  @readonly entity ToDos as projection on my.ToDos{*} excluding {modifiedAt,modifiedBy,createdAt,createdBy};
  @readonly entity Areas as select from my.Areas{*} excluding {modifiedAt,modifiedBy,createdAt,createdBy};

// annotate CatalogService.ToDos with @odata.draft.enabled;
}