--------------------------------------------------------------------------------
-- Stats: class that records any update from current game and stores it on 
--        a record type
--------------------------------------------------------------------------------
with Common_Types;	use Common_Types;
package Stats is
	
	type Stat is
		record
			-- Goal, Fault, Offside, Ball_Out, Penalty
			G1, G2, F1, F2, Off1, Off2, Out1, Out2, P1, P2 : Integer := 0; 
	end record;
	
	type Stat_Ptr is access all Stat;
	
	function Increment (ID: Integer; A: Actions) return Boolean;
	
end Stats;