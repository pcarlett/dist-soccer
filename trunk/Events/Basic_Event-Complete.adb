--------------------------------------------------------------------------------
-- Complete body: Child event type
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
with Ada.Exceptions;
with Printer;
package body Basic_Event.Complete is
    function Create(ID: Integer; R: Integer; C: Integer) return Event_Ptr is 
        E: Complete_Ptr := new Complete_Event;
    begin
        E.ID := ID;
        E.Row := R;
        E.Col := C;
        return Event_Ptr(E);
    end Create;
	    
	procedure Simulate(E: in Complete_Event) is 
    begin
		Printer.Print (E.ID, E.Row, E.Col);
		exception
			when Error: others =>
				Put_Line(Ada.Exceptions.Exception_Information(Error));
    end Simulate;
end Basic_Event.Complete;