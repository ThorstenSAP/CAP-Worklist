using AdminService from '../../srv/admin-service';

annotate AdminService.ToDos with @(
    UI:{
  	HeaderInfo: {
  		Title: {Value: description},
  		Description: {Value: area.name}
  	},
        Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.FieldGroup#Details'},
			// {$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}', Target: '@UI.FieldGroup#Details'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Admin}', Target: '@UI.FieldGroup#Admin'},
            ],
		FieldGroup#Details: {
			Data: [
				// {Value: ID, Label:'{i18n>TaskID}'},
				{Value: description, Label:'{i18n>TaskDescription}'},
				{Value: solved, Label:'{i18n>TaskSolved}'},
				{Value: area_ID, Label:'{i18n>TaskArea}'},
			]
		},
		// FieldGroup#Details: {
		// 	Data: [
		// 		{Value: stock},
		// 		{Value: price},
		// 		{Value: currency_code, Label: '{i18n>Currency}'},
		// 	]
		// },
		FieldGroup#Admin: {
			Data: [
				{Value: createdBy},
				{Value: createdAt},
				{Value: modifiedBy},
				{Value: modifiedAt}
			]
		}
    }
);