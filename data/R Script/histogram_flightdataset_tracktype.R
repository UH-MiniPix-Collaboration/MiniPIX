#Begins a new plot
plot.new()
#Converts feet to km in flightdataset and sets it as new values "km"
km <- (flightdataset$Altitude[1:1700]/(3.2808*1000))
#Begins the initial plot
plot(km, flightdataset$LIGHT_TRACK[1:1700],col = 1, ylab = "Number of Clusters", xlab = "Altitude (km)",type="p")
#Adds a title to plot "km"
title("Cluster Types vs Altitude")
#Formats the x-axis so that it shows whole numbers 
options(scipen=5)
#Adds a legend, formats its and names it
legend("topleft", title="Cluster Types",inset=0.06,
       legend = c("Light Track","Small Blob","Straight Track","Heavy Track","Heavy Blob","Medium Blob"),
       col = c(1,3,"yellow","orange",2,"blue"),
       pch = 15,)
#Plots additional data points based from flightdataset
points(km, flightdataset$SMALL_BLOB[1:1700],col = 3,type="p")
points(km, flightdataset$STRAIGHT_TRACK[1:1700],col = "yellow", type="p")
points(km, flightdataset$HEAVY_TRACK[1:1700],col = "orange", type="p")
points(km, flightdataset$HEAVY_BLOB[1:1700],col = 2, type="p")
points(km, flightdataset$MEDIUM_BLOB[1:1700],col = "blue", type="p")

