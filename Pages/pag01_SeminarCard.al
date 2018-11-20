page 50101 "CSD Seminar Card"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 2-4 & Lab 2-5
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("CSD No."; "CSD No.")
                {
                    ApplicationArea = All;
                    trigger OnAssistEdit()
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field("CSD Name"; "CSD Name")
                {

                }
                field("CSD Search Name"; "CSD Search Name")
                {

                }
                field("CSD Seminar Duration"; "CSD Seminar Duration")
                {

                }
                field("CSD Minimum Participants"; "CSD Minimum Participants")
                {

                }
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
                field("CSD Blocked"; "CSD Blocked")
                {

                }
                field("CSD Last Date Modified"; "CSD Last Date Modified")
                {

                }
            }
            group(Invoicing)
            {
                field("CSD Gen. Prod. Posting Group"; "CSD Gen. Prod. Posting Group")
                {

                }
                field("CSD VAT Prod. Posting Group"; "CSD VAT Prod. Posting Group")
                {

                }
            }

        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //RunObject=page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name"= const(Seminar),
                    // "No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
        }
    }

}