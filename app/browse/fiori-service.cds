using CatalogService from '../../srv/cat-service';

////////////////////////////////////////////////////////////////////////////
//
//	ToDos Object Page
//
annotate CatalogService.ToDos with @(
	UI: {
        HeaderInfo: {
            Title: {Value: description},
            Description: {Value: area.name}
        },
		// HeaderFacets: [
		// 	{$Type: 'UI.ReferenceFacet', Label: '{i18n>Description}', Target: '@UI.FieldGroup#Description'},
		// ],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}', Target: '@UI.FieldGroup#Details'},
		],
		// FieldGroup#Description: {
		// 	Data: [
		// 		{Value: area.name},
		// 	]
		// },
		FieldGroup#Details: {
			Data: [
				{Value: ID, Label:'{i18n>TaskID}'},
				{Value: description, Label:'{i18n>TaskDescription}'},
				{Value: solved, Label:'{i18n>TaskSolved}'},
				{Value: area.name, Label:'{i18n>TaskArea}'},
			]
		},
	}
);