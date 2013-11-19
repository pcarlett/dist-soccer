--------------------------------------------------------------------------------
-- Summary body: Child event type
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
with Ada.Exceptions;
with Printer;
package body Basic_Event.Summary is
    function Create(A: Actions) return Event_Ptr is 
        E: Summary_Ptr := new Summary_Event;
    begin
        E.A := A;
        return Event_Ptr(E);
    end Create;

    procedure Simulate(E: in Summary_Event) is 
    begin
		Printer.Print (E.A);
		exception
			when Error: others =>
				Put_Line(Ada.Exceptions.Exception_Information(Error));
    end Simulate;
end Basic_Event.Summary;