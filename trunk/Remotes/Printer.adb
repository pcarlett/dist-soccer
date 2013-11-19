--------------------------------------------------------------------------------
-- Printer: it use RCI to print strings on Display partition
--
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
package body Printer is
				
	procedure Print (S: in String) is
	begin
		Put_Line ("TEST OUTPUT SUMMARY");
		Put_Line (S);
	end Print;
	
	procedure Print (ID: in Integer; A: in Actions) is
	begin
		Put_Line ("TEST OUTPUT PARTIAL");
	end Print;
	
	procedure Print (ID: in Integer; R: in Integer; C: in Integer) is
	begin
		Put_Line ("TEST OUTPUT COMPLETE");
	end Print;
	
end Printer;