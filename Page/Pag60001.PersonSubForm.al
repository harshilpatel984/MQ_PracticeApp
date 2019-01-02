page 60001 MQPersonSubForm
{
    PageType = ListPart;
    SourceTable = MQPersonList;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(PersonNumber; PersonNumber)
                {
                    Caption = 'Person Number';
                    ApplicationArea = All;
                    Editable = false;
                    Visible = false;
                }
                field(LineNo; LineNo)
                {
                    Caption = 'Line No.';
                    ApplicationArea = ALL;
                    Editable = false;
                    Visible = false;
                }
                field(Tasktype; Tasktype)
                {
                    Caption = 'Task Type';
                    ApplicationArea = ALL;
                }
                field(TaskDetails; TaskDetails)
                {
                    Caption = 'Task Details';
                    ApplicationArea = ALL;
                }
                field(Hours; Hours)
                {
                    Caption = 'Approximate Hours';
                    ApplicationArea = ALL;
                }

            }
        }

    }

    actions
    {
        area(Processing)
        {

        }
    }
}