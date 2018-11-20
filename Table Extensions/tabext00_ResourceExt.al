tableextension 50100 "CSD ResourceExt" extends Resource
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin
                rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }

        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'CSD Resource Type';
            OptionMembers = Internal,External;
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'CSD Maximum Participants';
        }
        field(50103; "CSD Quantity Per Day"; Integer)
        {
            Caption = 'CSD Quantity Per Day';
        }

    }

}