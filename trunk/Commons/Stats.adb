--------------------------------------------------------------------------------
-- Stats: class that records any update from current game and stores it on 
--        a record type
--------------------------------------------------------------------------------
with Ada.Text_IO;	use Ada.Text_IO;
package body Stats is
	
	function Increment (ID: Integer; A: Actions) return Boolean is
	begin
		case ID is
			when 1..11 =>
				case A is
					when Goal => G1 := G1 + 1;
					when Fault => F1 := F1 + 1;
					when Offside => Off1 := Off1 + 1;
					when Ball_Out => Out1 := Out1 + 1;
					when Penalty => P1 := P1 + 1;
					when others => Put_Line ("Error occurred in Stat Action registration.");
				end case;	
			when 12..22 =>
				case A is
					when Goal => G2 := G2 + 1;
					when Fault => F2 := F2 + 1;
					when Offside => Off2 := Off2 + 1;
					when Ball_Out => Out2 := Out2 + 1;
					when Penalty => P2 := P2 + 1;
					when others => Put_Line ("Error occurred in Stat Action registration.");
				end case;	
			when others =>
				Put_Line ("Error occurred in Stat ID registration.");
		end case;
		return True;
	end Increment;
	
end Stats;