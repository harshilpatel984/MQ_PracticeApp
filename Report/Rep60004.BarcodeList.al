report 60004 MQBarcodeList
{
    Caption = 'MQ Test Barcode List Report';
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\Report\MQBarcodeList.rdl';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(No_; "No.")
            {

            }
            column(temp; temp.Blob)
            {

            }
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                cd.DoGenerateBarcode("Sales Header"."No.", 5, temp);
            end;
        }
    }

    var
        a: Code[20];
        temp: Record TempBlob temporary;
        cd: Codeunit MQBarcode;
}