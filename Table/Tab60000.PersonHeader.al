table 60000 MQPersonHeader
{

    fields
    {
        field(1; PersonNumber; Code[10])
        {
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                if PersonNumber <> xRec.PersonNumber then begin
                    NoSeriesMgt.TestManual('P-NO');
                    "No. Series" := '';
                end;
            end;

        }
        field(2; Name; Code[20])
        {

        }
        field(3; Name2; Code[20])
        {

        }
        field(4; Mobile; Code[20])
        {

        }
        field(5; Address; Text[100])
        {

        }
        field(6; Address2; Text[100])
        {

        }
        field(7; Email; Text[50])
        {

        }
        field(8; "No. Series"; Code[10])
        {

        }
    }

    keys
    {
        key(PK; PersonNumber)
        {
            Clustered = true;
        }
    }

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        myInt: Integer;

    trigger OnInsert()
    begin
        if PersonNumber = '' then begin
            NoSeriesMgt.InitSeries('P-NO', xRec."No. Series", 0D, PersonNumber, "No. Series");
        end;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}