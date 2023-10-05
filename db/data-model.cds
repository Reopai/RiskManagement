namespace risk.management;

entity Risks
{
    key ID : UUID
        @Core.Computed;
    title : String(100);
    owner : String(100);
    prio : String(100);
    descr : String(100);
    impact : String(100);
    mitigations : Association to one Mitigations;
}

entity Mitigations
{
    key ID : UUID
        @Core.Computed;
    descr : String(100);
    owner : String(100);
    timeline : String(100);
    risks : String(100);
    miti : Association to many Risks on miti.mitigations = $self;
}
