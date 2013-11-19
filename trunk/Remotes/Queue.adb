--------------------------------------------------------------------------------
-- Queuer: Process that append and manage new events 
--         (talks with Event Manager and Event Display)
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
package body Queue is

	protected Protected_Queue is
		entry Protected_Push (E_Ptr: in Basic_Event.Event_Ptr);
		entry Protected_Pop (E_Ptr: out Basic_Event.Event_Ptr);
	end Protected_Queue;
	
	protected body Protected_Queue is
		entry Protected_Push (E_Ptr: in Basic_Event.Event_Ptr) 
			when Length < Queue_Size is
		begin
	        Data(Tail) := E_Ptr;
			Put_Line ("E_Que: event pushed in queue.");
	        Tail := Tail mod Queue_Size + 1;
	        Length := Length + 1;
		end Protected_Push;
		
		entry Protected_Pop (E_Ptr: out Basic_Event.Event_Ptr) 
			when Length > 0 is
		begin
	        E_Ptr := Data(Head);
			Put_Line ("E_Que: event popped out from queue.");
	        Head := Head mod Queue_Size + 1;
	        Length := Length - 1;
		end Protected_Pop;
	end Protected_Queue;

	procedure Push (E_Ptr: in Basic_Event.Event_Ptr) is
	begin
		Protected_Queue.Protected_Push (E_Ptr);
	end Push;
	
    procedure Pop (E_Ptr: out Basic_Event.Event_Ptr) is
	begin
		Protected_Queue.Protected_Pop (E_Ptr);
	end Pop;

end Queue;