Pkg.add("Vega")

home = ((37/21)+(74/21))/2
away = ((50/21)+(54/21))/2
function poisson(x,y)
  return ((x^y)*2.718^-x)/(factorial(y))
end

using Vega

h0 = poisson(home,0)
h1 = poisson(home,1)
h2 = poisson(home,2)
h3 = poisson(home,3)
h4 = poisson(home,4)
h5 = poisson(home,5)
havg = (h0*0+h1*1+h2*2+h3*3+h4*4+h5*5)

a0 = poisson(away,0)
a1 = poisson(away,1)
a2 = poisson(away,2)
a3 = poisson(away,3)
a4 = poisson(away,4)
a5 = poisson(away,5)
aavg = (a0*0+a1*1+a2*2+a3*3+a4*4+a5*5)

odds = ((havg)*(1-aavg)*.55)/((havg)*(1-aavg)*.55+(1-havg)*(aavg)*.45)
if aavg < havg
  println("Home team: $odds, expected score $havg to $aavg")
else
  println("Away team: $odds, expected score $havg to $aavg")
end

hs = [h0,a0,h1,a1,h2,a2,h3,a3,h4,a4,h5,a5]
ys = [0,0,1,1,2,2,3,3,4,4,5,5]
gs = [0,1,0,1,0,1,0,1,0,1,0,1]
scatterplot(x = hs, y = ys, group = gs)


