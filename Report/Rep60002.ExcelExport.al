report 60002 MQExcelExport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    UseRequestPage = false;
    Caption = 'MQ Export To Excel';
    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                ExcelBuffer.NewRow();
                ExcelBuffer.AddColumn('Customer No.', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn('Customer Name', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn('Debit Amount', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn('Credit Amount', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                Customer.CalcFields("Debit Amount", "Credit Amount");
                ExcelBuffer.NewRow();
                ExcelBuffer.AddColumn(Customer."No.", false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Customer.Name, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Customer."Debit Amount", false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(Customer."Credit Amount", false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
            begin

            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
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

    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        ExcelBuffer.DeleteAll();
    end;

    trigger OnPreReport()
    var
        myInt: Integer;
    begin

    end;

    trigger OnPostReport()
    var
        myInt: Integer;
    begin
        ExcelBuffer.CreateNewBook('Customer Details');
        ExcelBuffer.WriteSheet('Report', CompanyName(), UserId());
        ExcelBuffer.CloseBook();
        ExcelBuffer.OpenExcel();
    end;

    var
        ExcelBuffer: Record "Excel Buffer";

}