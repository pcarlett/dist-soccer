--------------------------------------------------------------------------------
-- Event Display: Process that receive events from queues and put them in 
--                a buffer or display them from command line
--------------------------------------------------------------------------------
with Ada.Text_IO;		use Ada.Text_IO;
with Queue;
with Stats;
with Printer;
with Basic_Event;
package body Event_Display is

    task body E_Display is
        E: Basic_Event.Event_Ptr;
		I: Integer := 0;
		G1, G2, F1, F2, Off1, Off2, Out1, Out2, P1, P2 : Integer := 0;
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
			I := I + 1;
			if (I mod 5 = 0) then
				Stats.Get_Stats (G1, G2, F1, F2, Off1, Off2, Out1, Out2, P1, P2);
				Printer.Print (G1, G2, F1, F2, Off1, Off2, Out1, Out2, P1, P2);
			end if;
        end loop;
    end E_Display;
    
end Event_Display;