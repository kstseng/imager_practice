#--- for image
library(imager)
im <- load.image(system.file('extdata/parrots.png',package='imager'))
# im <- load.image(system.file('extdata/Leonardo_Birds.jpg',package='imager'))
as.data.frame(im) %>% head
layout(t(1:3)) 
plot(im,main="Original image")
grad <- grayscale(im) %>% get_gradient("xy")
names(grad) <- paste("Gradient along",c("x","y")) 
l_ply(names(grad),function(n) plot(grad[[n]],main=n))



#--- for video
tennis <- load.image(system.file('extdata/tennis_sif.mpeg',package='imager'))
play(tennis)
#now filter in the time direction and pipe to play
deriche(tennis,10,axis="z") %>% play


