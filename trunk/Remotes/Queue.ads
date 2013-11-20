--------------------------------------------------------------------------------
-- Event Queuer: Process that append and manage new events 
--               (talks with Event Manager)
--------------------------------------------------------------------------------
with Basic_Event;
package Queue is
	
	pragma Remote_Call_Interface;

	procedure Push (E_Ptr: in Basic_Event.Event_Ptr);
    procedure Pop (Id: in Integer; E_Ptr: out Basic_Event.Event_Ptr);
	
	pragma Asynchronous (Push);
	
	private
	
		-- Queue for 1' Display
	    Queue_Size1 : constant := 1000;
	    subtype Queue_Range1 is Positive range 1 .. Queue_Size1;
	    Length1 : Natural range 0 .. Queue_Size1 := 0;
	    Head1, Tail1 : Queue_Range1 := 1;
	    Data1 : array (Queue_Range1) of Basic_Event.Event_Ptr;

		-- Queue for 2' Display
	    Queue_Size2 : constant := 1000;
	    subtype Queue_Range2 is Positive range 1 .. Queue_Size2;
	    Length2 : Natural range 0 .. Queue_Size2 := 0;
	    Head2, Tail2 : Queue_Range2 := 1;
	    Data2 : array (Queue_Range2) of Basic_Event.Event_Ptr;
end Queue;