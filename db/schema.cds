namespace Capex;

using { ZAPI_BUSINESS_PARTNER } from '../srv/external/ZAPI_BUSINESS_PARTNER.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Capex
{
    key ID : UUID
        @Core.Computed;
    description : String(100);
    totalCost : Integer;
    category : Association to one Category;
    BusinessPartner : Association to one ZAPI_BUSINESS_PARTNER.A_BusinessPartner;
    criticality : Integer;
}

entity Category
{
    key ID : Integer;
    name : String(100);
}
