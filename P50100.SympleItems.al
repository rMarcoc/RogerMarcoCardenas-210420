page 50100 "Symple Items"
{
    Caption = 'Symple Items', Comment = 'ESM="Productos Simples"';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Symple Item";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Unique Code"; "Unique Code")
                {
                    ApplicationArea = All;

                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field(Price; Price)
                {
                    ApplicationArea = All;
                }

                field("Quantity Available"; "Quantity Available")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ChargeItems)
            {
                Caption = 'Charge Items', Comment = 'ESM="Cargar Productos"';
                ApplicationArea = All;
                Image = RefreshLines;

                trigger OnAction()
                begin
                    CuChargeItems.StartCharge(RecItems);
                end;
            }
        }
    }

    var
        CuChargeItems: Codeunit "Charge Symple Items";
        RecItems: Record Item;
}