#Hamed Baghal Ghaffari
#2021-10-20
#This code plots several PSWFs together.
using Plots
pyplot()

N=100
x=range(-1,1,length=N)
theme(:default)
plot(x,x->computeprolate(x,1,20,1),size=[1200,800],label =["n=0"], lw = 3)
plot!(x,x->computeprolate(x,1,20,2),size=[1200,800],label =["n=1"], lw = 3)
plot!(x,x->computeprolate(x,1,20,3),size=[1200,800],label =["n=2"], lw = 3)
plot!(x,x->computeprolate(x,1,20,4),size=[1200,800],label =["n=3"], lw = 3)
plot!(x,x->computeprolate(x,1,20,5),size=[1200,800],label =["n=4"], lw = 3)
plot!(x,x->computeprolate(x,1,20,5),size=[1200,800],title = "Plots of different PSWFs",label =["n=5"], lw = 3 )
#savefig("VarietiesPSWFs.pdf")
