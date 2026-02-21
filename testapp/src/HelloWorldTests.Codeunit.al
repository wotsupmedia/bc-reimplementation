namespace TheIconic.Common.Tests;

using TheIconic.Common;

/// <summary>
/// Smoke test to verify the test framework is working
/// and the main extension is accessible.
/// </summary>
codeunit 80000 "Hello World Tests"
{
    Subtype = Test;
    TestPermissions = Disabled;

    [Test]
    [HandlerFunctions('GreetingMessageHandler')]
    procedure TestShowGreeting()
    var
        HelloWorld: Codeunit "Hello World";
    begin
        // [GIVEN] The Hello World codeunit exists
        // [WHEN] ShowGreeting is called
        HelloWorld.ShowGreeting();

        // [THEN] A message is displayed (handled by GreetingMessageHandler)
    end;

    [MessageHandler]
    procedure GreetingMessageHandler(Message: Text[1024])
    begin
        // Verify the message contains expected text
        if StrPos(Message, 'Hello from the BC Reimplementation project') = 0 then
            Error('Unexpected greeting message: %1', Message);
    end;
}
