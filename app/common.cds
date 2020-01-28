/*
  Common Annotations shared by all apps
*/

using { sap.capire.worklist as my } from '../db/schema';


////////////////////////////////////////////////////////////////////////////
//
//	ToDos Lists
//
annotate my.ToDos with @(
	UI:{
		Identification: [{Value:ID}],
	  	SelectionFields: [solved, area_ID], //fiori searchable fields

		HeaderInfo: {
			TypeName: '{i18n>ToDo}',
			TypeNamePlural: '{i18n>ToDos}'
		},
		LineItem: [
			// {Value: ID, Label:'{i18n>TaskID}'},	//will be automatically generated as UI.DataField
			{Value: description, Label:'{i18n>TaskDescription}'},
			{Value: solved, Label:'{i18n>TaskSolved}'},
			{Value: area.name, Label:'{i18n>TaskArea}'},
		]
	}
){
	//required for the selection of the areas
	area @ValueList.entity :'Areas';
};
//used to forward the data to the selection
annotate my.Areas with @(
	UI:{
		Identification: [{Value: name}]
	}
);

////////////////////////////////////////////////////////////////////////////
//
//	ToDos ListReport Header search Elements
//
annotate my.ToDos with {
	ID @title:'{i18n>TaskID}' @UI.HiddenFilter;
	description @title:'{i18n>TaskDescription}';
	solved @title:'{i18n>TaskSolved}';
	area @title:'{i18n>TaskArea}';
}