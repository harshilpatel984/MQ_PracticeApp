page 60000 MQPerson
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = MQPersonHeader;

    layout
    {
        area(Content)
        {
            group("Person Detail")
            {
                field(PersonNumber; PersonNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Person Number';
                    Editable = false;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                }
                field(Name2; Name2)
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';
                }
                field(Sex; Sex)
                {
                    ApplicationArea = All;
                    Caption = 'Sex';
                }
            }
            group("Person Contact")
            {
                field(Address; Address)
                {
                    Caption = 'Address';
                    ApplicationArea = All;
                }
                field(Address2; Address2)
                {
                    Caption = 'Address2';
                    ApplicationArea = All;
                }
                field(Mobile; Mobile)
                {
                    Caption = 'Mobile Number';
                    ApplicationArea = All;
                }
                field(Email; Email)
                {
                    Caption = 'Email Address';
                    ApplicationArea = All;
                }
            }
            part(PersonList; MQPersonSubForm)
            {
                Caption = 'Person Task Detail';
                SubPageLink = PersonNumber = field (PersonNumber);
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }

    var
        myInt: Integer;
}