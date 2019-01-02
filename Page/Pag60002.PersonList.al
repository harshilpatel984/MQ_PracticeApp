page 60002 MQPersonList
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = MQPersonHeader;
    UsageCategory = Lists;
    CardPageId = MQPerson;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(PersonNumber; PersonNumber)
                {
                    Caption = 'Person Number';
                    ApplicationArea = ALL;
                }
                field(Name; Name)
                {
                    Caption = 'First Name';
                    ApplicationArea = ALL;
                }
                field(Email; Email)
                {
                    Caption = 'Email';
                    ApplicationArea = ALL;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {

        }
    }
}