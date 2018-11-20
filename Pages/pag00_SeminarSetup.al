page 50100 "CSD Seminar Setup"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 2-3
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("CSD Seminar Nos."; "CSD Seminar Nos.")
                {
                    ApplicationArea = All;

                }
                field("CSD Seminar Posting Nos."; "CSD Seminar Posting Nos.")
                {

                }
                field("CSD Seminar Registration Nos."; "CSD Seminar Registration Nos.")
                {

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not get then begin
            init;
            insert;
        end;
    end;
}