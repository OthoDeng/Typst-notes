#import "@preview/dvdtyp:1.0.0": *
#import "@preview/chem-par:0.0.1": *


#show link: it => {
  set text(fill: blue)
  underline(it)
}


#show: dvdtyp.with(
  title: "我包罗万象",
  subtitle: [_2024 fall_],
  author: "365",
  abstract: [This note is made using #link("https://typst.app")[Typst]. It includes but not limits to Atmospheric Physics, Fluid Dynamics, Equation of Mathematics and Physics.  all rights reserved],
)

#outline()
#pagebreak()
#show: chem-style



#pagebreak()
= 大气物理
== 大气成分历史
#definition("大气成分历史")[
  1. $H_2$ $H e$ 阶段 => 45.6亿
  2. 还原性大气 => 25亿
  3. 氧化性大气 => 3.5亿
]

- 干洁大气：不含水汽和悬浮颗粒物的大气称为干洁大气；   
- 相变特征：在地球大气温压条件下，水汽是唯一能发生相变的气体成分；
- 空气密度:标准状态下,干空气密度为$1.29 k g⋅m^(-3)$
- 平均分子量: 90 km以下,空气平均分子量为 28.966,不随高度变化;90km以上,随高度递减。

#theorem("CO2")[
- 二氧化碳是在地壳、大气层、海洋和生物圈之间循环的。
- 人工源：主要的人工源是矿物燃料燃烧和工业活动。 
- 自然源：死亡生物体的腐败和呼吸作用也都排出二氧化碳。
- 汇：植物的光合作用，海洋能吸收大量二氧化碳。
- 对气候影响：二氧化碳有强烈的“温室效应”作用。
]

#figure(image("pic/Greenhouse effect.png",width: 15cm))
== 气溶胶
#theorem("大气气溶胶")[
  - 气溶胶是指悬浮在气体中的固体和（或）液体微粒与气体载体共同组成的多相体系。
- 大气气溶胶是指大气与悬浮在其中的固体和液体微粒共同组成的多相体系。
]
对流层生成O3:光化学反应，Cl原子消耗O3（氟氯烃）
== 大气垂直结构
#definition("气温垂直递减率")[
  $
  gamma = - (partial T)/(partial z)
  $
]

=== 对流层（troposphere）
从地面到1~2 km高度为行星边界层，其中的50~100 m以下的气层称为近地层，近地层以上到边界层顶称为上部摩擦层。
#theorem("比热显热潜热")[
  - 对流层集中了约75%的大气和90%以上的水汽质量。
- 气温随高度增高而降低，北半球低纬地区平均气温直减率约 6.5 $°C⋅"km"^(-1)$ 。
- 垂直运动剧烈，有利于大气成分在垂直方向上的输送。
- 主要天气现象都在对流层内形成。
- 空气受地表影响很大，气象要素水平分布不均匀。

]

=== 平流层(stratosphere)
- 空气稀薄，能见度好，很少出现天气现象。
- 在15~35 km范围内，有厚约20 km的臭氧层。

=== 中间层(mesosphere)
垂直温度梯度大，有强烈的垂直混合，气压和密度随高度升高而降低的程度远慢于低层大气。

在这一层高纬度地区常出现极光现象。

== 基本气象要素
$     K= degree.c+273.15, degree.c=5/9  (degree.f -32)   $
=== 能量、气温和热
#definition()[
-  比热 (Specific Heat)：是单位质量物质的热容量，即单位质量物体改变单位温度时吸收或放出的热量。
- 显热(Sensible Heat)：The heat we can feel, “sense” and measure with a thermometer.
- 潜热 (Latent Heat ) ：The amount of heat exchanged that is hidden, meaning it occurs without change of temperature. 例如，水汽凝结成液态水的相变过程中释放的热量即为凝结潜热。
]
=== 温度的控制因子
最重要的影响因子当然是到达地面的太阳辐射总量，其他主要的控制因子:#highlight("1. 纬度, 2.海拔高度, 3.陆地与水体的分布, 4.洋流. ")

#pagebreak()
= 流体力学

== 研究方法
1. 理论方法
2. 计算方法（数值方法）
3. 实验方法

== 物理性质
1. 流动性
处于静止状态下不受任何剪切力，不论在如何小的剪切力下流体都形变。
2. 黏性
抗切变性或者阻碍流体相对运动的特性。

理想流体 ($mu = 0$，黏性系数)

3. 压缩性
液体不可压缩，气体可压缩。

低速流体下压力差温度差变化不大(联想$p V = rho R T$)
不可压缩流体($nabla dot bold(V) = 0$,散度为0)
=== 连续介质假设——宏观理论模型
无数质点没有间隙——流体连续介质假设

流体质点——微观足够大，宏观足够小

#theorem("克努森数 Knudsen")[
  $ K n = l/L $
  当$K n << 1$时流体连续介质才适用。
]

== 流体速度与加速度
=== 描述两种方法
1. Lagrange 质点/随体
类比探空气球、篮球盯人

2. Euler 场
类比水文站、篮球群防

=== 速度
1. Lagrange
用笛卡尔坐标（右手定则）

  $ bold(r) = bold(r)\(x,y,z\) = x bold(i) + y bold(j) + z bold(k) $

初始位置$t_0$ 位于$(x_0,y_0,z_0)$点，#highlight("做标记")


  $ bold(r) = bold(r)(x_0,y_0,z_0,t) $
分量形式：

$
cases(
  bold(x) = bold(x)(x_0,y_0,z_0,t)\
  bold(y) = bold(y)(x_0,y_0,z_0,t)\
  bold(z) = bold(z)(x_0,y_0,z_0,t)
)
$


对$t$求导：
#definition("拉格朗日观点下速度")[
$
bold(V)(x_0,y_0,z_0,t) = dif/(dif t) bold(r)(x_0,y_0,z_0,t)
$]

2. Euler 
#definition("欧拉观点下速度")[
  $
  bold(V) = bold(V)(x,y,z,t)
  $
  其分量可以写成：
  $
  cases(
    u &= u(x,y,z,t)\
    v &= v(x,y,z,t)\
    w &= w(x,y,z,t)
  )
  $
]
- 当流场不随空间变化 => 均匀流场 $partial/(partial x) = partial/(partial y) = partial/(partial z) = 0 \/ nabla dot () = 0$
- 当流场不随时间变化 => 常定（稳定）流场 $partial/(partial t) = 0$

=== 流体加速度 
#theorem("Langanrage's Method")[
  $
  bold(a) = dif /(dif t) bold(V) \(x_0,y_0,z_0,t\)
  $
]
#theorem("Euler's Method")[
  $ (dif bold(V))/(dif t) &= (partial bold(V))/(partial t) + (partial bold(V))/(partial x) (dif x)/(dif t) + (partial bold(V))/(partial y) (dif y)/(dif t) + (partial bold(V))/(partial z) (dif z)/(dif t)\
&= (partial bold(V))/(partial t) + (bold(V) dot nabla)bold(V) = ((partial )/(partial t) + bold(V) dot nabla)bold(V)\
"加速度" &= "局地加速度" + "平流加速度"
  $
]
#proof[
  $  bold(a) = dif /(dif t) bold(V) \(x,y,z,t\)
  $

微商算符
  #highlight[$ underbrace(dif/(dif t) (dot),"个体变化") = underbrace(partial/(partial t) (dot),"局地变化") + underbrace(bold(V)dot nabla(dot) #v(0.8cm),"平流变化") $对于任意矢量与标量都成立]
  ]

1. 流体在运动过程中所具物理量不随时间变化
$ dif/(dif t)() = 0 "或" partial/(partial t) =- bold(V) dot nabla() $
 局地变化完全由平流变化引起。
2. 流体所具物理量分布均匀，或者说流体#highlight("运动方向均匀"),
$
bold(V) dot nabla() = 0 "或" partial/(partial t)() = dif/(dif t) ()
$
局地变化由个体变化引起。
== 迹线与流线
迹线方程不存在时间t，流线方程可以存在时间t

=== 迹线 
某个流点各个时刻所行路径轨迹线 Lagrange 观点

#highlight("消去时间t")

=== 流线
某一固定时刻，曲线上任意一点流速方向与该点切线方向相吻合。 Euler 观点
#theorem()[
  $
  dif bold(r) times bold(V) &= mat(delim: "|",i,j,k;u,v,w;dif x,dif y,dif z)= 0\ 
 &=> (dif x)/u =  (dif y)/u = (dif z)/u
  $
  t作为常数，积分时做常数处理
]
流线只能反映方向不能反映大小

#pagebreak()
= 数理方程
#theorem("Lapalce Function")[
  $
 (partial ^2 u )/(partial x^2) + (partial ^2 u )/(partial y^2) +(partial ^2 u )/(partial z^2) = 0
  $
  Where $u = 1\/(sqrt(x^2 + y^2 +z^2))$
]
== 偏微分方程
#theorem("一阶线性微分方程解")[
The solution of $ y' + P(x)y =Q(x)$ is 
$
y = e^(- integral P(x)dif x) \(integral Q(x) e^(integral P(x)dif x) dif x + C \)
$
]


#definition($Delta , nabla, "div" "and" "rot" $)[
$ Delta &eq.triple (#sym.partial ^2)/(#sym.partial x_1 ^2) + (#sym.partial ^2)/(#sym.partial x_2 ^2) + dots + (#sym.partial ^2)/(#sym.partial x_n ^2) ,"拉普拉斯算子"\
 nabla &eq.triple \( (#sym.partial ^2)/(#sym.partial x_1 ^2),(#sym.partial ^2)/(#sym.partial x_2 ^2), dots , (#sym.partial ^2)/(#sym.partial x_n ^2) \) , "哈密顿算子"\
 "grad" bold(A) &= nabla dot bold(A) \
 "rot" bold(A) &= nabla times bold(A)

 $]
$nabla(nabla U) = Delta U, "in short" => nabla^2 = Delta$

=== 弦的微小振动
1. 水平方向(仅有张力分量没有位移)

$ T(x+ delta x) = T(x) => "T"与"x""无关"
$
2. 垂直方向
$ -T sin alpha + T' sin alpha ' - rho g dif x &approx rho dif x (partial^2 u(x,t))/(partial t^2)
$
$sin alpha approx tan alpha approx dif x$
$
T/rho &underbrace(1/(dif x) [(partial u(x + dif x,t))/(partial x)-(partial u(x,t))/(partial x)]) approx (partial ^2 u(x,t))/(partial t^2)+g\
&approx (partial^2 u(x,t))/(partial x^2)  $


#theorem("一维波动方程")[
  $
  (partial^2 u )/(partial t^2) =a^2 (partial ^2 u)/(partial x^2) + f(x,t)
  $

$a^2 = T\/rho , "外力" f(x,t) = F(x,t)\/rho $
]

=== 热传导方程
#highlight("能量守恒定律:")
$ underbrace(Q_2,"V中增加热量") = underbrace(-Q_1,"边界流入热量") + underbrace(Q_3,"内部产生热量") $

#proof(
  $
  Q_1 = - integral^(t_2) _(t_1) integral.surf_S k (partial u)/(partial n) dif S dif t 
  &= -integral^(t_2) _(t_1) integral.surf_S k nabla u dot bold(n) dif S dif t \
  &= - integral^(t_2) _(t_1) integral.triple_V k Delta u dif V dif t ,"高斯公式 高数下" 
  $
+ "高斯公式："+$ 
integral.surf_S [P cos(n,x) + Q cos(n,y) + R cos(n,z)] dif S = integral.triple_V ((partial P)/(partial x) +(partial Q)/(partial y) + (partial R)/(partial z)) dif V
$
)
#theorem("三维热传导方程")[
  $ u_t &= a^2 Delta u + f(x,y,z,t),"有热源"\
  u_t &= a^2 Delta u ,"无热源"
  $
  $a^2 = k\/(c rho) , f(x,y,z,t) = F\/(c rho)$
]

=== 位势方程
$u$不随时间变化而变化，常定：$(partial u)/(partial t)=0$

== 定解问题
偏微分方程 + 特定条件

=== 初始条件(Cauchy)，得出初始状态
- 弦振动 
1. 固定端 $u(L,t)= 0, t>= 0$
2. 自由端 $T (partial u)/(partial x) |_x_(x=l) = 0$
3. 弹性支撑端

#pagebreak()
= 热力学
== 热力学系统平衡以及描述
大量微观粒子组成的宏观物质系统 ($10 ^(23)$数量级)
#definition("系统分类")[
  $
  "根据是否与外界物质/能量交换分类" ==>cases(
   "孤立系"\
   "闭系"\
   "开系"
  )
  $
  
]

热力学平衡(Thermodynamic Equilibrium)

#definition("弛豫时间")[
  系统有初始状态到平衡状态所需时间
]
热动平衡——粒子统计平均效果不变

- 均匀系——Homogeneous System
- 非均匀系——Heterogeneous System

1. 几何参量 2. 力学参量 3. 化学参量 4. 电磁参量

#definition("简单系统")[
  只需要体积$V$、压强$p$可以确定系统状态
]

$ 1 "atm" = 101 325 "Pa" $

非绝热的器壁——透热壁

#theorem("Temperture")[
  A、B互为热平衡系统 $<=>$ 存在相等的状态函数 $g_A (p_A,bold(V)_A) = g_B (p_B,bold(V)_B)$
  
  有相同的冷热程度
]
纯水的三相点温度数值为273.16

#definition("温标")[
$
T_V "数值" = p/p_t times 273.16
$
]
== 物态方程 Equation of State 
$P V = n R T$
温度与状态参量之间的关系


=== 物态方程有关物理量
- 体胀系数
#theorem("Volumetric expasion coefficient")[
  $
  alpha = 1/(V) ((partial V)/(partial T))_P
  $ 压强不变，温度升高引起物体体积相对变化
]
- 压强系数
#theorem("Pressure coefficient")[
  $
  beta = 1/p ((partial p)/(partial T))_V
  $
]
- 等温体积系数
#theorem("Isothermal compressibillity coefficient")[
  $ kappa_T = - 1/V ((partial V)/(partial p))_T 
  $ 取负号 s.t. $kappa_T$ 为正值
]
#proof(
$ alpha = kappa_T beta p $ +
"since:" + $ ((partial V)/(partial p))_T ((partial p)/(partial T))_V ((partial V)/(partial p))_p  = -1
$
)

#theorem("范式方程")[
  $
(p + (a n^2)/(V^2)) (V - n b) = n R T
  $
$ underbrace((a n^2)/(V^2),"引力修正"),underbrace( n b#v(2em),"斥力修正") $
]

== 功 Work
#definition("准静态过程 ")[
  进行非常缓慢，每个状态都可以看作平衡态
]

体积功，外界对系统做的功

$ W = - integral_(V_1)^(V_2) p dif V $

等容过程： $W = 0$
等压过程：$W = - p Delta V$

== 热力学第一定律
#theorem()[
  $ Q eq.triple U_B -U_A -W
  $从外界吸收能量 = 两个状态之差 - 系统做功
]
说明第一类永动机不能实现，需要外界供给能量来对外界做功。

#pagebreak()
= 大气化学
推荐阅读：
```
Atmospheric Chemistry and Physics: From Air Pollution to Climate Change
by John H. Seinfeld & Spyros N. Pandis, John Wiley & Sons, Inc., 2016
```

== Evolution
During the evolution, O2 ever peaked at ~35% (300m years ago), dropped to ~11% (250m years ago)

Oxygen (in greek: #highlight("acid former"))

== Layers of the Atmosphere

#figure(image("pic/Layeratmos.png", width: 20cm))

绝大多数化学过程发生在Tropo & Strato

#theorem("Troposhere")[
- Contains ~82% of atmosphere mass & most water vapor, clouds
- Bottom ~1.5km is “boundary layer” or “mixed layer”
- BL height increases throughout day b/c of solar heating, typically higher in summer
]

Variation of pressure with altitude
$
P(z) = P(0) e^(-z\/bold(H))
$
where $bold(H) $ is scale height $ H = (R T)/(M_a g) approx 7.4 "km" $

Mixing Ratio （混合比）
$ 
xi_i &= c_i/(p\/R T)\
&= (p_i\/ R T)/(p\/ R T)\
&= p_i/p
$

#problem()[
  P = 1 atm, T = 298 K 下 $O_3$ 混合比为120ppb, 相当于多少$mu g \/m^3$?
$ 
mu g \/m^3 &= (p M_i)/(R T) times "Mixing ratio in ppm"\
mu g \/m^3 &= ((1.103 times 10^5)(48))/(8.314(298)) times 0.12
$]

== 大气成分和排放源
=== 大气污染物的直接排放源(一次来源)
1. 人为源 Anthropogenic sources

2. 天然源 Natural sources
#highlight("生物(动植物)排放")

=== 大气污染的生成(二次来源)
#definition()[
  进入大气的某些一次污染物，受环境中物理的、化学的或生物的因素作用，转化生成的大气污染物则为二次污染物。]

=== 复合污染
 #definition()[
   复合型大气污染: 是指大气中由多种来源的多种污染物在一定的大气条件下(如温度、湿度、阳光等)发生#highlight("多种界面间的相互作用彼此耦合构成")的复杂大气污染体系。]

结果: 二次污染物，尤其是颗粒物细粒子大量增加 

=== 大气污染物来源分析技术
1. 源清单  2. 扩散模型  3. 受体模型

== 大气污染物的汇机制(考点！)

1. 干沉降(dry deposition):重力沉降，与植物、建筑物或地面相碰撞而被表 面吸附或吸收的过程;大气特性、表面特性和污染物本身特性会影响干沉降速 率。
2. 湿沉降( wet deposition ):通过降水而落到地面的过程;#highlight("雨除")是被去除物 质参与了成云过程;#highlight("冲刷")是指在云层下部即降雨过程中的去除。
3. 化学过程:实际上不是真正的去除，而是污染物存在形式的转化;
4. 向平流层输送:相对于对流层而言是去除过程。

== 大气痕量组分及分类
1. 含硫化合物 (sulfur-containing)
#highlight("H2S DMS(二甲基硫)")
2. 含氮化合物 (nitrogen-containing) 
3. 含碳化合物 (carbon-containing)
4. 含卤素化合物 (halogen-containing) 
5. 臭氧 (ozone, O3)
6. 颗粒物 (particulate matter, PM)

=== 臭氧(O3):对流层化学
- 天然源:平流层注入(约90%的臭氧集中在平流层) 对流层光化学过程→背景浓度上升
- 人为源: VOCs /CO + NOx = O3
- 汇:
  - 气相反应
    - O3 +hv = O(1D) + O2(O(1D) + H2O = 2 OH)\
    - O3 + NO = NO2 + O2
  - 液相反应
    - O3 + SO2 = H2SO4
  - 干沉降

=== 颗粒物(Particular matter, PM):气溶胶化学
#definition("气溶胶 aerosol")[液体或固体微粒均匀地分散在气体中形成的相对稳定的
悬浮体系，狭义上就是指大气中的颗粒污染物。]

#highlight("气溶胶的源汇与一般大气污染物的源汇类似。")

===  含硫化合物:H2S
#definition("H2S")[
  - 源:植物腐烂(热带雨林、湿地、稻田、海洋等)
  - 汇:H2S + OH = H2O + SH
]

=== 含硫化合物:DMS
#definition("DMS")[
 - 天然源: 海洋、湖泊、沼泽、湿地(浮游植物藻类 的光合作用)
 - 汇: DMS + OH= MSA $=> "SO"_4^(2-)$
]

=== 含硫化合物:SO2
#definition("SO2")[
  - 人为源: 化石燃料的燃烧:占人为源的88% 
- 天然源: 火山活动
- 汇: SO2 $=> "SO"_4^(2-)$(干、湿沉降)
]

=== 含氮氧化物
NOx = NO + NO2 

NH3

=== 含碳化合物
大气中的甲烷是丰度最高的气态有机物(1.8 ppm)