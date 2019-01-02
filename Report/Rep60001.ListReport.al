report 60001 MQListReport
{
    Caption = 'MQ List Report';
    DefaultLayout = RDLC;
    RDLCLayout = '.\Report\MQListReport.rdl';
    PreviewMode = Normal;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            column(Item_No; "Item No.")
            {

            }
            column(Entry_No; "Entry No.")
            {

            }
            column(Entry_Type; "Entry Type")
            {

            }
            column(Document_No; "Document No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Quantity; Quantity)
            {

            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {

            }
        }
    }

    var
        myInt: Integer;
}