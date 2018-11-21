table 50101 "CSD Seminar"
{
    Caption = 'CSD Seminar';
    LookupPageId = "CSD Seminar List";
    DrillDownPageId = "CSD Seminar List";

    fields
    {
        field(10; "CSD No."; Code[20])
        {
            Caption = 'No.';
            trigger OnValidate()

            begin
                if "csd No." <> xRec."csd No." then begin
                    SeminarSetup.GET;
                    NoSeriesMgt.TestManual(SeminarSetup."csd Seminar Nos.");
                    "csd No. Series" := '';
                end;
            end;

        }
        field(20; "CSD Name"; Text[50])
        {
            Caption = 'Name';
            trigger OnValidate()

            begin
                if ("csd Search Name" = UpperCase(xRec."csd Name")) or ("csd Search Name" = '') then
                    "csd Search Name" := "csd Name";
            end;
        }
        field(30; "CSD Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;
        }
        field(40; "CSD Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
        }
        field(50; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(60; "CSD Search Name"; Text[50])
        {
            Caption = 'Search Name';
        }
        field(70; "CSD Blocked"; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "CSD Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(90; "CSD Comment"; Text[50])
        {
            Caption = 'Comment';
            Editable = false;
            //FieldClass = FlowField;
            //CalcFormula = exist("Seminar Comment Line");
            //where("Table Name" = const("Seminar"),
            //"No." = field("No.") )
        }
        field(100; "CSD Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType = 1;
        }
        field(110; "CSD Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate()

            begin
                if (xRec."csd Gen. Prod. Posting Group" <> "csd Gen. Prod. Posting Group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup
                    (GenProdPostingGroup, "csd Gen. Prod. Posting Group") then
                        Validate("csd VAT Prod. Posting Group",
                        GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        field(120; "CSD VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(130; "CSD No. Series"; Code[20])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "csd No.")
        {
            Clustered = true;
        }
        key(Key1; "csd Search Name")
        {

        }
    }
    var
        SeminarSetup: Record "CSD Seminar Setup";
        //CommentLine : record "CSD Seminar Comment Line";
        Seminar: Record "CSD Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()

    begin
        if "csd No." = '' then begin
            SeminarSetup.get;
            SeminarSetup.TestField("CSD Seminar Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."CSD Seminar Nos.", xRec."CSD No. Series", 0D, "csd No.", "CSD No. Series");
        end;
    end;

    trigger OnModify()
    begin
        "CSD Last Date Modified" := today;
    end;

    trigger OnRename()
    begin
        "CSD Last Date Modified" := today;
    end;

    trigger OnDelete()

    begin
        //CommentLine.Reset;
        //CommentLine.SetRange("Table Name",
        //CommentLine."Table Name"::Seminar);
        //CommentLine.SetRange("No.","No.");
        // CommentLine.DeleteAll;  
    end;

    procedure AssistEdit(): Boolean
    begin
        with Seminar do begin
            Seminar := Rec;
            SeminarSetup.get;
            SeminarSetup.TestField("csd Seminar Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."csd Seminar Nos.", xRec."csd No. Series", "csd No. Series") then begin
                NoSeriesMgt.SetSeries("csd No.");
                Rec := Seminar;
                exit(true);
            end;
        end;
    end;

}