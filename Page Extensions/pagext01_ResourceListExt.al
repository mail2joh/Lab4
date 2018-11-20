pageextension 50101 "CSD ResourceListExt" extends "Resource List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    var
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;

    trigger OnOpenPage()

    begin
        Showtype := (getfilter(Type) = '');
        ShowMaxField := (GetFilter(Type)) = format(type::Machine);

    end;
}