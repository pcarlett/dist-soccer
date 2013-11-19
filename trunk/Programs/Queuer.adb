--------------------------------------------------------------------------------
-- Main Queue Server: Main procedure that init queue server side tasks 
--
--------------------------------------------------------------------------------
with PolyORB.Parameters;
with Ada.Text_IO;
with Queue;
procedure Queuer is
begin
    -- Start queue msg
    -- Ada.Text_IO.Put_Line("*** - Queue Init - ***");
    -- Ada.Text_IO.Put_Line ("");
    -- Ada.Text_IO.Put_Line ("Queue started, embedded name server is at:");
    -- Ada.Text_IO.Put_Line ("");
    -- Ada.Text_IO.Put ("export POLYORB_DSA_NAME_SERVICE=");
    -- Ada.Text_IO.Put_Line (PolyORB.Parameters.Get_Conf ("dsa", "name_service", ""));
    -- Ada.Text_IO.Put_Line ("");
    -- Ada.Text_IO.Put_Line("*** - Queue Completed. Up and Running - ***");
		
	loop
		Ada.Text_IO.Put ("*");
		delay 1.0;
	end loop;
		
end Queuer;