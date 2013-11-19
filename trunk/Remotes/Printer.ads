--------------------------------------------------------------------------------
-- Printer: it use RCI to print strings on Display partition
--
--------------------------------------------------------------------------------
with Common_Types;		use Common_Types;
package Printer is
	
	pragma Remote_Call_Interface;
	
	procedure Print (S: in String);
	procedure Print (ID: in Integer; A: in Actions);
	procedure Print (ID: in Integer; R: in Integer; C: in Integer);
	
	pragma Asynchronous (Print);

end Printer;