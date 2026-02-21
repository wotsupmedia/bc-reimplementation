namespace TheIconic.Common;

/// <summary>
/// Hello World codeunit to verify the development environment is working.
/// This is a smoke test — if you can compile and publish this, your setup is correct.
/// </summary>
codeunit 50000 "Hello World"
{
    /// <summary>
    /// Displays a greeting message.
    /// Used to verify extension publishing and debugging are working.
    /// </summary>
    procedure ShowGreeting()
    begin
        Message(GreetingMsg);
    end;

    var
        GreetingMsg: Label 'Hello from the BC Reimplementation project! Your development environment is working.';
}
