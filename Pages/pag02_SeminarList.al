page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';
    Editable = false;
    CardPageId = 50101;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("CSD No."; "CSD No.")
                {

                }
                field("CSD Name"; "CSD Name")
                {

                }
                field("CSD Seminar Duration"; "CSD Seminar Duration")
                {

                }
                field("CSD Seminar Price"; "CSD Seminar Price")
                {

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}