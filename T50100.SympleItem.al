table 50100 "Symple Item"
{
    Caption = 'Symple Item', Comment = 'ESM="Producto Simple"';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Unique Code"; Code[10])
        {
            Caption = 'Unique Code', Comment = 'ESM="Código Único"';
            DataClassification = ToBeClassified;
        }

        field(2; Description; Text[150])
        {
            Caption = 'Description', Comment = 'ESM="Descripción"';
            DataClassification = ToBeClassified;
        }

        field(3; Price; Decimal)
        {
            Caption = 'Price', Comment = 'ESM="Precio"';
            DataClassification = ToBeClassified;
        }

        field(4; "Quantity Available"; Integer)
        {
            Caption = 'Quantity Available', Comment = 'ESM="Cantidad Disponible"';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Unique Code")
        {
            Enabled = true;
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