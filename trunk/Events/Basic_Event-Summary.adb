--------------------------------------------------------------------------------
-- Summary body: Child event type
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
with Ada.Exceptions;
with Printer;
package body Basic_Event.Summary is
    function Create(S: String) return Event_Ptr is 
        E: Summary_Ptr := new Summary_Event;
    begin
        E.Description := S;
        return Event_Ptr(E);
    end Create;

    procedure Simulate(E: in Summary_Event) is 
		S: String (1..34);
    begin
		S := ("Summary message: " & E.Description);
		Printer.Print (E.Description);
		exception
			when Error: others =>
				Put_Line(Ada.Exceptions.Exception_Information(Error));
    end Simulate;
end Basic_Event.Summary;