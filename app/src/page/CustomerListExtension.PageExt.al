namespace TheIconic.Common;

using Microsoft.Sales.Customer;

/// <summary>
/// Extends the Customer List page with a Hello World action.
/// Demonstrates the extension pattern and TI prefix convention for actions on standard pages.
/// </summary>
pageextension 50000 "Customer List Extension" extends "Customer List"
{
    actions
    {
        addlast(processing)
        {
            action("TI Hello World")
            {
                ApplicationArea = All;
                Caption = 'Hello World';
                ToolTip = 'Run the Hello World smoke test to verify the development environment.';
                Image = Info;

                trigger OnAction()
                var
                    HelloWorld: Codeunit "Hello World";
                begin
                    HelloWorld.ShowGreeting();
                end;
            }
        }
    }
}
