table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';

    fields
    {
        field(10; "CSD Primary Key"; CODE[10])
        {
            Caption = 'Primary Key';

        }
        field(20; "CSD Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
        }
        field(30; "CSD Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }
        field(40; "CSD Seminar Posting Nos."; Code[20])
        {
            Caption = 'Seminar Posting Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "CSD Primary Key")
        {
            Clustered = true;
        }
    }

}