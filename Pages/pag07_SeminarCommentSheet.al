page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    caption = 'Seminar Comment List';
    Editable = false;

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
}
