using { ZAPI_BUSINESS_PARTNER } from './external/ZAPI_BUSINESS_PARTNER.cds';

using { Capex as my } from '../db/schema';

using Capex from '../db/schema';

@path : 'service/Capex'
service CapexService
{
    @odata.draft.enabled
    entity Capex as
        projection on my.Capex
        {
            *
        };

    entity Category as
        projection on my.Category
        {
            *
        };

    entity A_BusinessPartner as
        projection on ZAPI_BUSINESS_PARTNER.A_BusinessPartner
        {
            BusinessPartner,
            FirstName,
            LastName
        };
}

annotate CapexService with @requires :
[
    'authenticated-user'
];
