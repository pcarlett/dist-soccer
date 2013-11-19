--------------------------------------------------------------------------------
-- Main Server: Main procedure that init server side tasks 
--
--------------------------------------------------------------------------------
with Ada.Text_IO;
with Event_Display;
procedure Client is
	E_Dis: Event_Display.E_Display_Acc := new Event_Display.E_Display;
	
begin
	E_Dis.Start;
		
	loop
		Ada.Text_IO.Put ("*");
		delay 1.0;
	end loop;
		
end Client;