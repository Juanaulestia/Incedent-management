namespace RiskManagement;

using { APIHUB_SANDBOX } from '../srv/external/APIHUB_SANDBOX.cds';

entity Risks
{
    key ID : UUID;
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    miti : Association to one Mitigations;
    supplier : Association to one APIHUB_SANDBOX.A_BusinessPartner;
}

entity Mitigations
{
    key ID : UUID;
    createdAt : String(100);
    createdBy : String(100);
    description : String(100);
    owner : String(100);
    risks : Association to many Risks on risks.miti = $self;
    timeline : String(100);
}
