--------------------------------------------------------------------------------
-- Summary: Child event type
--------------------------------------------------------------------------------
package Basic_Event.Summary is
    
	type Summary_Event is new Event with private; 
	
    function Create(S: String) return Event_Ptr; 
    procedure Simulate(E: in Summary_Event);
		
private
    type Summary_Ptr is access all Summary_Event;
    type Summary_Event is new Event with
        record 
	        Description : String (1..17);
        end record;
end Basic_Event.Summary;