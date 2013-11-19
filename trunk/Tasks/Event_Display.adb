--------------------------------------------------------------------------------
-- Event Display: Process that receive events from queues and put them in 
--                a buffer or display them from command line
--------------------------------------------------------------------------------
with Ada.Text_IO;		use Ada.Text_IO;
with Queue;
with Basic_Event;
with Basic_Event.Summary;
with Basic_Event.Partial;
with Basic_Event.Complete;
package body Event_Display is

    task body E_Display is
        E: Basic_Event.Event_Ptr;
    begin
        accept Start do
            Put ("Event Display activating...");
        end Start;
        Put_Line (" done.");
        loop
            -- accept Display (E: in Basic_Event.Event) do
            -- accept Display do
			--     Queue.Pop(E);
	        --     Basic_Event.Simulate(E.all);
            -- end Display;
			Queue.Pop(E);
			-- E2 := Basic_Event.Create; -- created specialized event
			-- Basic_Event.Transfer (E, E2);
			Put ("E_Dis: ");
			-- Basic_Event.Simulate(E2.all);
			Basic_Event.Simulate(E.all);
        end loop;
    end E_Display;
    
end Event_Display;