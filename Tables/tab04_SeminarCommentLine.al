table 50104 "CSD Seminar Comment Line"
{
    Caption = 'CSD Seminar Comment Line';
    DrillDownPageId = "CSD Seminar Comment List";
    LookupPageId = "CSD Seminar Comment List";

    fields
    {
        field(10; "CSD Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = Seminar,"Seminar Registration","Posted Seminar Registration";
            OptionCaption = 'Seminar,Seminar Registration,Posted Seminar Registration';
        }
        field(20; "CSD Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(30; "CSD No."; code[20])
        {
            Caption = 'No.';
            TableRelation = if ("CSD Table Name" = CONST (Seminar)) "CSD Seminar";
        }
        field(40; "CSD Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(50; "CSD Date"; Date)
        {
            Caption = 'Date';
        }
        field(60; "CSD Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(70; "CSD Comment"; Text[10])
        {
            Caption = 'Comment';
        }

    }

    keys
    {
        key(PK; "CSD Table Name", "CSD Document Line No.", "CSD No.", "CSD Line No.")
        {
            Clustered = true;
        }
    }

}