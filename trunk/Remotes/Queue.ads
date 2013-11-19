--------------------------------------------------------------------------------
-- Event Queuer: Process that append and manage new events 
--               (talks with Event Manager)
--------------------------------------------------------------------------------
with Basic_Event;
package Queue is
	
	pragma Remote_Call_Interface;

	procedure Push (E_Ptr: in Basic_Event.Event_Ptr);
    procedure Pop (E_Ptr: out Basic_Event.Event_Ptr);
	
	pragma Asynchronous (Push);
	
	private
	    Queue_Size : constant := 1000;
	    subtype Queue_Range is Positive range 1 .. Queue_Size;
	    Length : Natural range 0 .. Queue_Size := 0;
	    Head, Tail : Queue_Range := 1;
	    Data : array (Queue_Range) of Basic_Event.Event_Ptr;
end Queue;