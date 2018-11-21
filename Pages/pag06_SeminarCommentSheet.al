page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    caption = 'Seminar Comment Sheet';
    AutoSplitKey = true;
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("CSD Date"; "CSD Date")
                {

                }
                field("CSD Code"; "CSD Code")
                {
                    Visible = false;
                }
                field("CSD Comment"; "CSD Comment")
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

                trigger OnAction();
                begin

                end;
            }
        }
    }
    trigger OnNewRecord(BelowxRec: Boolean)

    begin
        SetupNewLine();
    end;
}
