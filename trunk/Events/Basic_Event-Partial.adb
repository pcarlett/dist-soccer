--------------------------------------------------------------------------------
-- Partial body: Child event type
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
with Ada.Exceptions;
with Printer;
package body Basic_Event.Partial is
    function Create (ID: Integer; A: Actions) return Event_Ptr is 
        E: Partial_Ptr := new Partial_Event;
    begin
        E.A := A;
        return Event_Ptr(E);
    end Create;

    procedure Simulate (E: in Partial_Event) is 
    begin
		Printer.Print (E.ID, E.A);
		exception
			when Error: others =>
				Put_Line(Ada.Exceptions.Exception_Information(Error));
    end Simulate;
end Basic_Event.Partial;