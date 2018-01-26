#Begins a new plot
plot.new()
#Converts feet to km in flightdataset and sets it as new values "km"
km <- (flightdataset$Altitude[1:1700]/(3.2808*1000))
#filter function and plotting of sbma = small blobs points 1 through 1700
ma <- function(x, n=5){filter(x,rep(1/n,n),sides=2)}
ltma <- ma(flightdataset$LIGHT_TRACK[1:1700],50)
sbma <- ma(flightdataset$SMALL_BLOB[1:1700], 50)
stma <- ma(flightdataset$STRAIGHT_TRACK[1:1700], 50)
htma <- ma(flightdataset$HEAVY_TRACK[1:1700], 50)
hbma <- ma(flightdataset$HEAVY_BLOB[1:1700], 50)
mbma <- ma(flightdataset$MEDIUM_BLOB[1:1700], 50)
plot(km,ltma,col = 1, ylab = "Number of Clusters", 
     xlab = "Altitude (km)",type = "l")
#Begins the initial plot
#plot(km, flightdataset$LIGHT_TRACK[1:1700],
##col = 1, ylab = "Number of Clusters", xlab = "Altitude (km)",type="l")
#Adds a title to plot "km"
title("Cluster Types vs Altitude")
#Formats the x-axis so that it shows whole numbers 
options(scipen=5)
#Adds a legend, formats its and names it
legend("topleft", title="Cluster Types",inset=0.01,cex=.75,
       legend = c("Light Track","Small Blob",
                  "Straight Track","Heavy Track","Heavy Blob","Medium Blob"),
       col = c(1,3,"yellow","orange",2,"blue"),
       pch = 15,)
#Plots additional data points based from flightdataset
points(km, sbma,col = 3,type="l")
points(km, stma,col = "yellow", type="l")
points(km, htma,col = "orange", type="l")
points(km, hbma,col = 2, type="l")
points(km, mbma,col = "blue", type="l")

