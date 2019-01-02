table 60001 MQPersonList
{


    fields
    {
        field(1; PersonNumber; Code[10])
        {

        }
        field(2; LineNo; Integer)
        {

        }
        field(3; Tasktype; Option)
        {
            OptionMembers = "Support","Development","SelfLearn";
            OptionCaption = 'Support,Development,SelfLearn';

        }
        field(4; Hours; Integer)
        {

        }
        field(5; TaskDetails; Text[100])
        {

        }
    }

    keys
    {
        key(PK; Tasktype, PersonNumber, LineNo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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