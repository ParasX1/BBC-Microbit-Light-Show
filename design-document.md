
< 
Design Structure:
My goal in the design structure of my microbit program was to implement modularity and very easily changeable code,so that if another developer came by and wanted to extend my light show and code their own extension it would be possible! A secondary goal I had in mind was to minimize rewriting common code, which also incorporates compartmentalisation and clear separation of code in a clear readable format.
Example:
	Main:
		Sequence_1:
       B main
    Sequence_1:
	    Column_1
        Column_2
        Column_3
        Column_4
        Column_5
 
Design Visual (How it looks and how it was created):
How it looks: The goal behind the light show was to create something that occupies a person's attention for at least 30 seconds in a visual format. As such I created many visual patterns, for example a centering cross then explosion, a laying down sand timer, diamond, heart and tessellations.
Shapes/Patterns: 
Fill in full board from the left : Done by turning on Col 1 -> 5 leds with a delay (All rows were kept on)
Fill in full board from the right : Done by turning on Col 5 -> 1 leds with a delay (All rows were kept on) 
Flash pattern right (3-2-3-2-3) : Done by flashing Col 1 leds then turning them off with “clearBit” then proceeding to the next column till Col 5, with a variation in led light patterns
Flash pattern left (2-3-2-3-2): Done by flashing Col 1 leds then turning them off with “clearBit” then proceeding to the next column till Col 5, with a variation in led light patterns
Left 2 corners meet then merge right : Turn on corners top & button left then turn on col 2 and row 2,4 then 3 finally then column 4 and 5, giving the illusion of merging 
Right 2 corners meet then merge left : Turn on corners top & button right then turn on col 4 and row 2,4 then 3 finally then column 2 then 1, giving the illusion of merging 
All 4 corners move to center : Turn on Col 1,5 row 1,5 then keep adding rows moving towards the center till Col 3 & row 3 is reached.
Explosion : Turn on Col & Row 3 then turn on the 2 col/row on the left & right side of the current and turn off previous column/columns that were on 
Diamond/Heart Flicker: Done by storing columns and turning on and off with a delay which imitates the shape building itself.
Diamond/Heart Still picture : Loops over all columns without delay 30000 times or s, resulting in a very fast flashing (Illusion of still image)
 
How does it meet design Specs:
My design of the light show incorporates flashes, interesting pictures, animations and moving patterns. The overall length of a singular cycle of my program is roughly 10 seconds and due to the abundant interesting shapes/flashing leds/patterns will easily loop a few times.My code also correctly implements a never ending loop, works when powered on (startup) and uses the stored memory of the Microbit to create the light show.
** No input peripherals were used **
** PROGRAMMED IN ARMv7 **
 
Why my choices were appropriate for the task:
My choices were appropriate for this task, as they fulfilled all the requirements of the assignment. My choice of design method was appropriate as it promoted reusability of code and compartmentalisation.


>
