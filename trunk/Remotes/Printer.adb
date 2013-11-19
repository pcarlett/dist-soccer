--------------------------------------------------------------------------------
-- Printer: it use RCI to print strings on Display partition
--
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
package body Printer is
				
	procedure Print (A: in Actions) is
	begin
		Put_Line ("TEST OUTPUT SUMMARY");
		Put_Line ("Summary message: " & Actions'Image(A));
	end Print;
	
	procedure Print (ID: in Integer; A: in Actions) is
	begin
		Put_Line ("TEST OUTPUT PARTIAL");
		Put_Line ("Partial message: ID " & Integer'Image(ID) & ": " & Actions'Image(A));
	end Print;
	
	procedure Print (ID: in Integer; R: in Integer; C: in Integer) is
	begin
		Put_Line ("TEST OUTPUT COMPLETE");
		Put_Line ("Complete message: ID " & Integer'Image(ID) & ": Row "  
                    & Integer'Image(R) & " - Col " & Integer'Image(C));
	end Print;
	
end Printer;