# waterLines
A Processing project aimed to create lines characterized by a water-like movement.

## Some notes
1) The variable lines determine the number of lines that will be drawn. Not all the lines will be visible since the rotation is now for default at -PI/4: if you prefer a horizontal or vertical distribution of the lines, comment the rotation line and reduce the xCoverage value to canvas.width .

2) the variable resolution is aimed to sample the composition of the lines to draw: each line is composed of curve vertex points; this variable determines how much of these points must be created for each line.

3) yErr variable has to infer into the design randomness through the offset set to the point, in terms of height.

4) yOff determines the spacing between lines.
