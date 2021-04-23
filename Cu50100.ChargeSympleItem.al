codeunit 50100 "Charge Symple Items"
{
    trigger OnRun()
    begin

    end;

    procedure StartCharge(pItem: Record Item)
    var
        tSympleItem: Record "Symple Item";
    begin
        pItem.reset();
        pItem.setfilter(Quantity, '<>%1', 0);
        if pItem.findset then
            repeat
                tSympleItem.Init();
                tSympleItem."Unique Code" := pItem.Code;
                tSympleItem.Description := pItem.Description;
                tSympleItem.Price := pItem."Unit Cost" * 1.19;
                tSympleItem."Quantity Available" := pItem.Quantity;
                tSympleItem.Insert();
            until pItem.next = 0;
    end;

    var
        myInt: Integer;
}