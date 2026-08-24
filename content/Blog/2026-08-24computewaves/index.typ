#import "../index.typ": template, tufted

#show: template.with(
  title: "算力浪潮与相关产业",
  description: "1940年代—2026年强计算产业的爆发、一般化与边缘化历史图谱",
  date: "2026-08-24T17:13:18+08:00",
  date_geo: "31.839078,117.263482",
  updated: auto,
  updated_geo: "31.839078,117.263482",
  lang: "zh",
)

#import "@preview/merman:0.1.0": show-mermaid-blocks
#show raw.where(lang: "mermaid"): show-mermaid-blocks(width: 100%)

= 算力浪潮与相关产业

by chatgpt

1940年代—2026年强计算产业的爆发、一般化与边缘化历史图谱

#quote(block: true)[
中文整合版。依据原 Deep Research 英文成稿完整重写，保留其时间范围、主要数据口径、板块划分和来源体系；英文机构名、产品名与专业缩写在首次出现时保留，便于查证。
]

== 执行综述与研究方法
=== 核心结论
计算史并不是一串彼此无关的“科技风口”。更准确的理解方式，是把它看成一组不断叠加、反复出现的#strong[算力驱动浪潮]：原本在经济上不可行的工作负载，因计算、存储、网络、传感器、算法或能效跨过某个阈值而变得可行；随后它被单独命名为一种产业，吸引专用硬件、软件、人才与资本，市场预期通常会过冲，最后再走向几种不同结局。

#quote(block: true)[
#strong[不可行 → 技术上可行 → 经济上稀缺 → 专业产业形成 → 叙事与资本繁荣 → 标准化 → 商品化 → 被更大的平台、基础设施层或持久的专业市场吸收]
]

这些浪潮并非严格按固定年限周期出现。它们之所以反复，是因为计算性能、内存、存储、网络、传感器、算法、能源效率、软件抽象和制造能力的进步，会不断让此前处于边缘的工作负载变得实用。IBM 1401 与 System/360 展示了早期计算标准化；Cray 时代展示了追求极限性能的专用计算；PC 与万维网把计算扩展到个人和网络；CUDA 把 GPU 变成通用并行计算平台；云把基础设施变成 API；2012—2026 年的 AI 浪潮则把大规模加速器算力本身转化成了可直接出售的能力。#footnote[#link("https://www.ibm.com/history/1401")[#text("<https://www.ibm.com/history/1401>")]；#link("https://www.ibm.com/history/system-360")[#text("<https://www.ibm.com/history/system-360>")]；#link("https://www.computerhistory.org/internethistory/1970s/")[#text("<https://www.computerhistory.org/internethistory/1970s/>")]；#link("https://docs.nvidia.com/cuda/cuda-c-programming-guide/")[#text("<https://docs.nvidia.com/cuda/cuda-c-programming-guide/>")]；#link("https://aws.amazon.com/about-aws/our-origins/")[#text("<https://aws.amazon.com/about-aws/our-origins/>")]；#link("https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks")[#text("<https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>")]；#link("https://hai.stanford.edu/ai-index/2026-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report>")]]

分析此类产业时，最重要的不是只问“什么时候达到高峰”，而是区分#strong[四种不同的峰值]：

#table(
  columns: 3,
  [峰值类型], [真正达到峰值的对象], [为什么重要],
  [技术峰值],
  [某种专用架构相对其他方案的优势],
  [往往早于大规模采用],
  [使用峰值],
  [实际部署的工作负载、设备量或用户量],
  [可能比媒体热潮晚很多年],
  [资本/媒体峰值],
  [风险投资、估值、新闻热度、企业支出],
  [最容易出现过度外推],
  [独立产业峰值],
  [把该技术作为独立品类销售的公司数量与价值],
  [常常会因为能力普及而下降],
)

因此，一个产业名称不再流行，并不等于它的经济意义下降。桌面出版是典型案例：PageMaker 在 1985 年推动了一个全新品类，但后来页面排版本身成为普通软件能力。大型机也失去了“计算机默认形态”的文化中心地位，却仍长期存在于高可靠交易系统中。#footnote[#link("https://www.computerhistory.org/timeline/1985/")[#text("<https://www.computerhistory.org/timeline/1985/>")]；#link("https://www.computerhistory.org/tdih/august/31/")[#text("<https://www.computerhistory.org/tdih/august/31/>")]；#link("https://www.ibm.com/history/system-390")[#text("<https://www.ibm.com/history/system-390>")]]

=== 反复出现的五种结局
#strong[一、一般化。] 原先独立的产业变成普通功能，例如桌面出版、“大数据”、基础机器学习、移动端能力，以及正在发生的生成式 AI 助手化。

#strong[二、基础设施吸收。] 工作负载继续增长，但产品类别逐渐隐形，例如云、数据库、存储、网络，以及越来越像基础设施的加速器。

#strong[三、专业市场存续。] 市场规模可能更窄，却长期具有高价值，例如大型机、HPC、EDA、CAE、工业机器人和科学仿真。

#strong[四、平台集中。] 当边际算力成本下降后，经济租金转移到新的稀缺互补物：分发、数据、生态、标准、晶圆制造、能源、知识产权和监管准入。

#strong[五、反复的“虚假黎明”。] 算力已经足够，但系统其他部分尚未成熟。机器人、自动驾驶、VR/AR 都反复出现这种情况：即使原始计算能力提高，可靠性、执行器、电池、传感器栈、安全验证、形态重量和人的行为习惯仍可能成为决定性约束。DARPA 自动驾驶挑战说明，技术边界被跨越可以比规模化商业部署早很多年；通用汽车在 2024 年停止资助 Cruise 的无人出租车开发，也反映了技术可行与经济可行之间仍有距离。#footnote[#link("https://www.darpa.mil/about/innovation-timeline/grand-challenge")[#text("<https://www.darpa.mil/about/innovation-timeline/grand-challenge>")]；#link("https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html")[#text("<https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html>")]]

可以把统一过程概括为：

```mermaid
flowchart LR
    A[计算/内存/带宽/算法提升] --> B[原本不经济的任务跨过可行性阈值]
    B --> C[专用产品和创业公司出现]
    C --> D[使用量加速]
    D --> E[媒体、风投与公开市场叙事升温]
    E --> F{算力之外还剩什么稀缺?}

    F -->|已无独特壁垒| G[功能一般化]
    F -->|规模与可靠性| H[基础设施寡头]
    F -->|领域知识| I[持久专业市场]
    F -->|数据与分发| J[应用/平台租金]
    F -->|物理世界约束| K[漫长部署平台期]
    F -->|出现新算力瓶颈| L[下一轮硬件周期]

    G --> M[品类名称淡出]
    H --> M
    I --> M
    J --> M
    K --> C
    L --> B
```

=== 研究范围与证据口径
本文将“强计算驱动”定义为：计算、内存、存储、网络容量或专用加速能力的大幅提高，实质改变了某个领域的技术可行性或单位经济性。研究范围包括大型机、小型机、PC、HPC、图形/GPU 计算、CAD/CAE/EDA、网络与万维网、搜索/广告技术、分布式数据系统、云/SaaS、移动应用、IoT/边缘计算、AI、工业机器人、服务与具身机器人、自动驾驶、VR/AR/空间计算、加密货币挖矿、科学仿真，以及若干相邻的计算密集型产业。

证据优先使用公司和机构的一手资料，包括 IBM、Apple、Google、Amazon、Microsoft、NVIDIA、Meta、DARPA、Waymo、GM、Stanford HAI、国际机器人联合会 IFR、CERN、美国半导体行业协会 SIA 和 Ethereum；风险投资曲线以 Crunchbase 分类数据为代理，上市公司历史市值使用 CompaniesMarketCap 作为二手历史代理。不同融资数据库的分类口径并不一致；下文 #strong[2026 年公开市场数值均为 2026 年 8 月快照，而不是年末值]。#footnote[#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]；#link("https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/")[#text("<https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/>")]；#link("https://companiesmarketcap.com/")[#text("<https://companiesmarketcap.com/>")]]

== 总时间线：1946—2026
下表有意强调#strong[转折年份]，而非机械填满每个年份。它把硬件架构、软件平台、AI、自动化、网络与资本市场事件放入同一时间轴，以呈现各轮浪潮如何叠加。早期历史以计算机历史博物馆、IBM 与 CERN 资料交叉核对，后期尽量使用公司公告、研究机构与产业组织的一手资料。#footnote[#link("https://www.computerhistory.org/timeline/")[#text("<https://www.computerhistory.org/timeline/>")]；#link("https://www.ibm.com/history/system-360")[#text("<https://www.ibm.com/history/system-360>")]；#link("https://home.cern/science/computing/the-birth-of-the-web/short-history-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/short-history-web/>")]]

#table(
  columns: 3,
  [年份], [计算/平台里程碑], [产业或叙事后果],
  [1946],
  [ENIAC 时代的电子计算确立了可实际运行的电子计算前沿],
  [计算主要属于军事、科学与大型机构；“计算机”本身是一种极稀缺的资本品。#footnote[#link("https://www.computerhistory.org/timeline/")[#text("<https://www.computerhistory.org/timeline/>")]]],
  [1951],
  [早期商用存储程序计算机开始进入政府和商业任务],
  [数据处理逐渐从纯科学计算中分离出来。#footnote[#link("https://www.computerhistory.org/timeline/")[#text("<https://www.computerhistory.org/timeline/>")]]],
  [1953],
  [IBM 发布 IBM 650],
  [IBM 将其称为首款大规模生产的计算机和重要利润来源，商业计算第一次显现明显规模效应。#footnote[#link("https://www.ibm.com/history/650")[#text("<https://www.ibm.com/history/650>")]]],
  [1956],
  [达特茅斯夏季研讨会推动“人工智能”成为正式研究领域],
  [在足够算力和数据尚未出现前几十年，AI 已被命名为独立计算目标。#footnote[#link("https://dl.acm.org/doi/abs/10.1609/aimag.v27i4.1911")[#text("<https://dl.acm.org/doi/abs/10.1609/aimag.v27i4.1911>")]]],
  [1959],
  [IBM 1401 发布],
  [较廉价的企业数据处理迅速扩散；IBM 称到 1960 年代中期，1401 占全球已安装计算机的一半以上。#footnote[#link("https://www.ibm.com/history/1401")[#text("<https://www.ibm.com/history/1401>")]]],
  [1961],
  [分时系统兴起],
  [昂贵计算机开始被视为多用户共享公用设施，而不再只是单任务机器。],
  [1963],
  [Sketchpad 时代的交互式计算机图形出现],
  [在廉价图形硬件出现前，交互式 CAD 与图形操控的概念基础已经形成。],
  [1964],
  [IBM System/360 发布],
  [跨性能档位的兼容架构与可复用软件、外设成为战略资产。#footnote[#link("https://www.ibm.com/history/system-360")[#text("<https://www.ibm.com/history/system-360>")]]],
  [1965],
  [小型机时代加速],
  [院系、实验室和工程部门开始拥有自己的交互式计算，中央大型机中心不再是唯一模式。#footnote[#link("https://www.computerhistory.org/timeline/")[#text("<https://www.computerhistory.org/timeline/>")]]],
  [1960年代后期],
  [计算机控制制造与工业自动化扩大],
  [计算从档案和科学研究进入真实物理过程的控制。],
  [1970年代],
  [微处理器降低了计算系统的最小经济规模],
  [嵌入式控制、仪器和随后到来的个人计算变得经济可行。],
  [1976],
  [Cray-1 展示],
  [向量超级计算成为独立的高声望产业，服务实验室、气象、国防和科学仿真。#footnote[#link("https://www.computerhistory.org/internethistory/1970s/")[#text("<https://www.computerhistory.org/internethistory/1970s/>")]]],
  [1970年代后期],
  [专家系统与知识工程获得商业关注],
  [第二轮主要 AI 商业化叙事启动。],
  [1981],
  [IBM PC 发布],
  [开放架构成为事实标准；约一年内已有数百种软件，催生独立 PC 软件产业。#footnote[#link("https://www.ibm.com/history/personal-computer")[#text("<https://www.ibm.com/history/personal-computer>")]]],
  [1982],
  [Autodesk 成立并发布 AutoCAD],
  [CAD 从昂贵机构级系统走向桌面硬件。#footnote[#link("https://www.autodesk.com/blogs/autocad/what-is-cad/")[#text("<https://www.autodesk.com/blogs/autocad/what-is-cad/>")]]],
  [1985],
  [PageMaker 在 Macintosh 上发布],
  [PageMaker、PostScript 与 LaserWriter 共同触发桌面出版热潮。#footnote[#link("https://www.computerhistory.org/timeline/1985/")[#text("<https://www.computerhistory.org/timeline/1985/>")]；#link("https://www.computerhistory.org/tdih/august/31/")[#text("<https://www.computerhistory.org/tdih/august/31/>")]]],
  [1986],
  [Synopsys 围绕逻辑综合成立],
  [芯片复杂度催生持久且计算密集的 EDA 层。#footnote[#link("https://www.synopsys.com/company/acquisitions.html")[#text("<https://www.synopsys.com/company/acquisitions.html>")]；#link("https://investor.synopsys.com/news/news-details/2024/na-2024-oeIe5Ibtrh/default.aspx")[#text("<https://investor.synopsys.com/news/news-details/2024/na-2024-oeIe5Ibtrh/default.aspx>")]]],
  [1987—1988],
  [ECAD 与 SDA 时代整合为 Cadence],
  [EDA 从半导体公司的内部职能演变为独立软件产业。#footnote[#link("https://community.cadence.com/cadence_blogs_8/b/breakfast-bytes/posts/a-brief-history-of-cadence-m-amp-a-tells-much-of-the-story")[#text("<https://community.cadence.com/cadence_blogs_8/b/breakfast-bytes/posts/a-brief-history-of-cadence-m-amp-a-tells-much-of-the-story>")]；#link("https://community.cadence.com/cadence_blogs_8/b/corporate-news/posts/is-cadence-35-or-40-age-is-just-a-number")[#text("<https://community.cadence.com/cadence_blogs_8/b/corporate-news/posts/is-cadence-35-or-40-age-is-just-a-number>")]]],
  [1980年代后期],
  [商业专家系统与专用 AI 硬件热情逆转],
  [AI 进入叙事强度较低的长期阶段，但统计方法和领域方法仍继续进步；“AI 寒冬”的具体边界在史学上有争议。#footnote[#link("https://cacm.acm.org/opinion/there-was-no-first-ai-winter/")[#text("<https://cacm.acm.org/opinion/there-was-no-first-ai-winter/>")]]],
  [1989],
  [Tim Berners-Lee 在 CERN 提出万维网],
  [网络计算获得通用的信息与应用层。#footnote[#link("https://home.cern/science/computing/the-birth-of-the-web/short-history-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/short-history-web/>")]]],
  [1990],
  [IBM System/390 时代开始],
  [大型机叙事衰退，但高价值交易工作负载继续存在。#footnote[#link("https://www.ibm.com/history/system-390")[#text("<https://www.ibm.com/history/system-390>")]]],
  [1990],
  [第一套 Web 服务器与浏览器接近投入运行],
  [万维网从提案变成可工作的系统。#footnote[#link("https://home.cern/science/computing/the-birth-of-the-web/short-history-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/short-history-web/>")]]],
  [1993],
  [CERN 免费开放 Web 软件；TOP500 首次发布],
  [开放标准加速 Web 扩散；统一基准使全球超级计算竞争变得可见。#footnote[#link("https://home.cern/science/computing/the-birth-of-the-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/>")]；#link("https://top500.org/timeline/")[#text("<https://top500.org/timeline/>")]]],
  [1994],
  [Adobe 与 Aldus 合并],
  [曾经新奇的桌面出版品类开始并入更大的数字媒体软件栈。#footnote[#link("https://www.computerhistory.org/tdih/march/15/")[#text("<https://www.computerhistory.org/tdih/march/15/>")]]],
  [1990年代中期],
  [浏览器和 Web 商业化爆发],
  [“互联网公司”成为独立投资类别。],
  [1997—1999],
  [互联网公司估值激增，GPU 硬件快速进步],
  [网络效应与 3D 游戏成为消费计算的重要需求驱动。],
  [1999],
  [NVIDIA 发布 GeForce 256，并明确命名“GPU”品类],
  [并行图形加速建立起后来会超越图形市场的硬件平台。#footnote[#link("https://blogs.nvidia.com/blog/first-gpu-gaming-ai/")[#text("<https://blogs.nvidia.com/blog/first-gpu-gaming-ai/>")]；#link("https://blogs.nvidia.com/blog/what-is-accelerated-computing/")[#text("<https://blogs.nvidia.com/blog/what-is-accelerated-computing/>")]]],
  [2000],
  [互联网泡沫资本峰值并反转],
  [“互联网”不再足以充当商业模式；基础设施和真正可规模化的网络业务继续增长。],
  [2000年代初],
  [搜索、推荐和广告成为大规模统计计算业务],
  [数据积累开始强化算力优势。],
  [2004],
  [Google 的 MapReduce 时代把商品集群数据处理形式化],
  [“大数据”能力不再只属于少数专有超级系统，而可在普通集群上复现。],
  [2006],
  [AWS 发布 S3、EC2；NVIDIA 推出 CUDA],
  [同一年出现两种决定性抽象：按量购买计算/存储，以及把 GPU 并行能力变成通用编程平台。#footnote[#link("https://aws.amazon.com/about-aws/our-origins/")[#text("<https://aws.amazon.com/about-aws/our-origins/>")]；#link("https://aws.amazon.com/blogs/aws/ec2-instance-history/")[#text("<https://aws.amazon.com/blogs/aws/ec2-instance-history/>")]；#link("https://docs.nvidia.com/cuda/cuda-c-programming-guide/")[#text("<https://docs.nvidia.com/cuda/cuda-c-programming-guide/>")]]],
  [2007],
  [Apple 发布 iPhone],
  [高算力、富传感器、联网的计算机成为大众手持平台。#footnote[#link("https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/")[#text("<https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/>")]]],
  [2008],
  [App Store 以 500 多款原生应用上线；Android/G1 与 Android Market 推出],
  [移动应用成为独立的创业与分发经济。#footnote[#link("https://www.apple.com/newsroom/2008/07/10iPhone-3G-on-Sale-Tomorrow/")[#text("<https://www.apple.com/newsroom/2008/07/10iPhone-3G-on-Sale-Tomorrow/>")]；#link("https://www.apple.com/newsroom/2008/07/14iPhone-App-Store-Downloads-Top-10-Million-in-First-Weekend/")[#text("<https://www.apple.com/newsroom/2008/07/14iPhone-App-Store-Downloads-Top-10-Million-in-First-Weekend/>")]；#link("https://opensource.googleblog.com/2008/10/android-open-source-cell-phone.html")[#text("<https://opensource.googleblog.com/2008/10/android-open-source-cell-phone.html>")]；#link("https://android-developers.googleblog.com/2008/10/android-market-now-available-for-users.html")[#text("<https://android-developers.googleblog.com/2008/10/android-market-now-available-for-users.html>")]]],
  [2008],
  [比特币白皮书提出基于哈希工作量证明的共识],
  [计算消耗本身成为货币共识机制的一部分。#footnote[#link("https://bitcoin.org/en/bitcoin-paper")[#text("<https://bitcoin.org/en/bitcoin-paper>")]]],
  [2008—2010],
  [Azure 宣布并正式商用],
  [公有云从 AWS 的单一实验，变成多平台战略市场。#footnote[#link("https://news.microsoft.com/about/")[#text("<https://news.microsoft.com/about/>")]]],
  [2009],
  [Google 自动驾驶项目启动],
  [Web 规模公司开始把算力和机器学习直接用于自主物理系统。#footnote[#link("https://waymo.com/blog/2020/04/in-the-drivers-seat-1000-mile-challenge/")[#text("<https://waymo.com/blog/2020/04/in-the-drivers-seat-1000-mile-challenge/>")]]],
  [2010],
  [Google 自动驾驶完成首个 1000 英里挑战目标],
  [自动驾驶从 DARPA 研究谱系走向持续企业研发。#footnote[#link("https://waymo.com/blog/2020/04/in-the-drivers-seat-1000-mile-challenge/")[#text("<https://waymo.com/blog/2020/04/in-the-drivers-seat-1000-mile-challenge/>")]]],
  [2011],
  [IoT 叙事预测数百亿联网设备],
  [廉价嵌入式计算与无线连接催生“万物互联”投资叙事；Cisco 后续预测明显收敛。#footnote[#link("https://www.cisco.com/c/dam/en_us/about/ac79/docs/innov/IoT_IBSG_0411FINAL.pdf")[#text("<https://www.cisco.com/c/dam/en_us/about/ac79/docs/innov/IoT_IBSG_0411FINAL.pdf>")]；#link("https://www.cisco.com/c/en/us/solutions/collateral/executive-perspectives/annual-internet-report/white-paper-c11-741490.html")[#text("<https://www.cisco.com/c/en/us/solutions/collateral/executive-perspectives/annual-internet-report/white-paper-c11-741490.html>")]]],
  [2012],
  [AlexNet 以 GPU 训练深层卷积网络赢得 ImageNet 突破],
  [深度学习成为新的主导 AI 叙事，GPU 获得图形之外的第二个大工作负载。#footnote[#link("https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks")[#text("<https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>")]；#link("https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/")[#text("<https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/>")]]],
  [2012],
  [Oculus 时代的消费 VR 复兴启动],
  [更好的 GPU、显示屏和惯性传感器复活了多次失败过的品类。],
  [2014],
  [Facebook 宣布收购 Oculus],
  [VR 从爱好者硬件变成“下一代计算平台”级战略下注。#footnote[#link("https://www.meta.com/about/company-info/?srsltid=AfmBOoqZRzOTUi75QhSt1fSOoezv3zbVEjL-Vhu7ayGimbCLMA2Cg5Pt")[#text("<https://www.meta.com/about/company-info/?srsltid=AfmBOoqZRzOTUi75QhSt1fSOoezv3zbVEjL-Vhu7ayGimbCLMA2Cg5Pt>")]；#link("https://www.meta.com/blog/reality-labs-10-year-anniversary-next-computing-platform-vr-mr-ar-xr/?srsltid=AfmBOopPS1kKl1BlR6tU5wHrYMpqdV8niG-V3o8I0snP8fJLCbVO9a6i")[#text("<https://www.meta.com/blog/reality-labs-10-year-anniversary-next-computing-platform-vr-mr-ar-xr/?srsltid=AfmBOopPS1kKl1BlR6tU5wHrYMpqdV8niG-V3o8I0snP8fJLCbVO9a6i>")]]],
  [2014],
  [Kubernetes 在 Google 内部创建],
  [云抽象从虚拟机进一步上移到可移植容器编排。#footnote[#link("https://www.cncf.io/reports/kubernetes-project-journey-report/")[#text("<https://www.cncf.io/reports/kubernetes-project-journey-report/>")]]],
  [2015],
  [Google/Waymo 实现公开道路上的全无人驾驶乘坐],
  [自动驾驶预期快速抬升，开始指向大规模部署。#footnote[#link("https://waymo.com/about/")[#text("<https://waymo.com/about/>")]]],
  [2015],
  [CNCF 与 Kubernetes 生态形成],
  [云原生架构成为独立开发与运维生态。#footnote[#link("https://www.cncf.io/announcements/2015/06/21/new-cloud-native-computing-foundation-to-drive-alignment-among-container-technologies/")[#text("<https://www.cncf.io/announcements/2015/06/21/new-cloud-native-computing-foundation-to-drive-alignment-among-container-technologies/>")]]],
  [2016],
  [AlphaGo 击败李世石；Oculus Rift 商用一代到来],
  [AI 与 VR 同时达到重要公众关注节点。#footnote[#link("https://deepmind.google/research/alphago/")[#text("<https://deepmind.google/research/alphago/>")]]],
  [2017],
  [Transformer 架构发表],
  [序列建模获得高度适合并行训练的新架构，后来的大语言模型浪潮具备技术基础。#footnote[#link("https://research.google/pubs/attention-is-all-you-need/")[#text("<https://research.google/pubs/attention-is-all-you-need/>")]]],
  [2018],
  [GPU 光线追踪与加速器专业化加深],
  [图形与 AI 工作负载在芯片上越来越共同演化。#footnote[#link("https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/")[#text("<https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/>")]]],
  [2019],
  [HPC 集群普遍跨过千万亿次级性能门槛],
  [TOP500 式高性能计算由商品化并行架构而非传统单体超级机主导。#footnote[#link("https://top500.org/news/top500-becomes-a-petaflop-club-for-supercomputers/")[#text("<https://top500.org/news/top500-becomes-a-petaflop-club-for-supercomputers/>")]]],
  [2020],
  [GPT-3 展示大模型少样本能力],
  [“规模扩展”本身成为 AI 研究和产品战略核心。#footnote[#link("https://openai.com/index/language-models-are-few-shot-learners/")[#text("<https://openai.com/index/language-models-are-few-shot-learners/>")]]],
  [2020—2021],
  [疫情加速云、SaaS 与移动依赖；科技股估值扩张],
  [已成熟的平台再次遭遇需求与资本冲击。],
  [2021],
  [机器人和自动驾驶融资达到加息前主要峰值；Meta 把元宇宙提升为公司级叙事],
  [具身计算和沉浸式计算加入软件产业的投机资本周期。不同口径下，机器人融资约 140—150 亿美元，自动驾驶约 125 亿美元。#footnote[#link("https://news.crunchbase.com/robotics/2024-funding-robust-ai-bezos/")[#text("<https://news.crunchbase.com/robotics/2024-funding-robust-ai-bezos/>")]；#link("https://news.crunchbase.com/transportation/av-startup-may-mobility-vc-funding/")[#text("<https://news.crunchbase.com/transportation/av-startup-may-mobility-vc-funding/>")]]],
  [2022],
  [ChatGPT 于 11 月 30 日发布],
  [大语言模型从研究/API 产品进入大众交互使用。#footnote[#link("https://openai.com/index/chatgpt/")[#text("<https://openai.com/index/chatgpt/>")]]],
  [2022],
  [Ethereum 完成 The Merge],
  [最大的工作量证明生态之一退出挖矿，官方称能源消耗下降约 99.95%。#footnote[#link("https://ethereum.org/roadmap/merge/")[#text("<https://ethereum.org/roadmap/merge/>")]；#link("https://blog.ethereum.org/2022/08/24/mainnet-merge-announcement")[#text("<https://blog.ethereum.org/2022/08/24/mainnet-merge-announcement>")]]],
  [2022],
  [Argo AI 关闭，自动驾驶资本纪律收紧],
  [行业开始分化为少数生存者与失败、放弃的路线。#footnote[#link("https://news.crunchbase.com/transportation/autonomous-vehicles-argo-ai-ford/")[#text("<https://news.crunchbase.com/transportation/autonomous-vehicles-argo-ai-ford/>")]]],
  [2023],
  [全球生成式 AI 私人投资跃升至约 250 亿美元],
  [ChatGPT 把技术浪潮转化为广泛创业和企业资本浪潮。#footnote[#link("https://hai.stanford.edu/news/ai-index-state-ai-13-charts")[#text("<https://hai.stanford.edu/news/ai-index-state-ai-13-charts>")]；#link("https://hai.stanford.edu/news/inside-new-ai-index-expensive-new-models-targeted-investments-and-more")[#text("<https://hai.stanford.edu/news/inside-new-ai-index-expensive-new-models-targeted-investments-and-more>")]]],
  [2023],
  [Apple 以“空间计算机”发布 Vision Pro],
  [VR/AR 从游戏或元宇宙叙事重新包装为空间计算平台。#footnote[#link("https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/")[#text("<https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/>")]]],
  [2024],
  [全球半导体销售额达到 6276 亿美元],
  [AI 与加速计算需求推动新一轮半导体增长周期。#footnote[#link("https://www.semiconductors.org/global-semiconductor-sales-increase-19-1-in-2024-double-digit-growth-projected-in-2025/")[#text("<https://www.semiconductors.org/global-semiconductor-sales-increase-19-1-in-2024-double-digit-growth-projected-in-2025/>")]]],
  [2024],
  [全球生成式 AI 私人投资达到 339 亿美元],
  [AI 资本强度继续上升。#footnote[#link("https://hai.stanford.edu/ai-index/2025-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2025-ai-index-report>")]；#link("https://hai.stanford.edu/ai-index/2025-ai-index-report/economy")[#text("<https://hai.stanford.edu/ai-index/2025-ai-index-report/economy>")]]],
  [2024],
  [自动驾驶融资回升至约 121—126 亿美元，其中 Waymo 56 亿美元融资影响很大],
  [资本集中到更少、更强的平台，而非全面复兴。#footnote[#link("https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/")[#text("<https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/>")]；#link("https://news.crunchbase.com/transportation/autonomous-driving-startup-nuro-raise-tiger-global/")[#text("<https://news.crunchbase.com/transportation/autonomous-driving-startup-nuro-raise-tiger-global/>")]]],
  [2024],
  [GM 停止资助 Cruise 无人出租车开发],
  [“很快 everywhere 部署”的叙事转向更窄的经济性、ADAS 和个人自动驾驶战略。#footnote[#link("https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html")[#text("<https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html>")]]],
  [2025],
  [全球私人 AI 投资达到 3447 亿美元，全球企业 AI 投资达到 5817 亿美元],
  [AI 成为历史上最大的技术资本配置事件之一。#footnote[#link("https://hai.stanford.edu/ai-index/2026-ai-index-report/economy")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report/economy>")]；#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]]],
  [2025],
  [不同 Crunchbase 快照/分类下，机器人融资回到约 140—150 亿美元],
  [“具身 AI”取代泛化的“机器人”成为资本主叙事。#footnote[#link("https://news.crunchbase.com/venture/beyond-ai-growing-startup-sectors-legal-robotics-defense/")[#text("<https://news.crunchbase.com/venture/beyond-ai-growing-startup-sectors-legal-robotics-defense/>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]],
  [2025],
  [工业机器人年安装量连续第四年超过 50 万台],
  [物理自动化已不是单纯叙事热潮，而拥有庞大、耐久的装机基础。#footnote[#link("https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years")[#text("<https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years>")]]],
  [2025],
  [Azure 年收入超过 750 亿美元],
  [云已从新兴品类变成巨型公用设施/平台业务。#footnote[#link("https://www.microsoft.com/investor/reports/ar25/index.html")[#text("<https://www.microsoft.com/investor/reports/ar25/index.html>")]]],
  [2025],
  [Waymo 报告全年约 1500 万次乘坐],
  [无人出租车实际使用开始与整个自动驾驶行业此前的资本退潮分化。#footnote[#link("https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/")[#text("<https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/>")]]],
  [2026],
  [Waymo 融资 160 亿美元；融资时称已在美国六个都市区每周提供超过 40 万次乘坐],
  [自动驾驶进入由少数运营商主导的新扩张阶段。#footnote[#link("https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/")[#text("<https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/>")]]],
  [2026],
  [按 Crunchbase 口径，截至 4 月 15 日自动驾驶创业公司融资 214 亿美元],
  [资本猛烈反弹，但异常集中于少数大额融资。#footnote[#link("https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/")[#text("<https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/>")]]],
  [2026],
  [按 Crunchbase 口径，截至 6 月 22 日机器人创业公司融资 188 亿美元],
  [具身/物理 AI 成为新的资本峰值叙事。#footnote[#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]],
  [2026],
  [6 月 TOP500 有五套系统在 HPL 上超过 1 exaflop，LineShine 位列第一],
  [百亿亿次级从单一国家里程碑变成多系统类别。#footnote[#link("https://top500.org/")[#text("<https://top500.org/>")]]],
  [2026],
  [半导体增长显著加速，SIA 年内多次上调预测],
  [AI 数据中心需求把算力稀缺性重新拉回芯片、内存、制造、网络和电力。#footnote[#link("https://www.semiconductors.org/global-semiconductor-sales-increase-11-month-to-month-in-april/")[#text("<https://www.semiconductors.org/global-semiconductor-sales-increase-11-month-to-month-in-april/>")]；#link("https://www.semiconductors.org/news-events/latest-news/")[#text("<https://www.semiconductors.org/news-events/latest-news/>")]]],
  [2026],
  [AI 投资、云扩建和物理 AI 融资仍处高位],
  [当前浪潮尚未完成“繁荣—一般化”的完整历史周期，因此不能把 2026 武断视为最终峰值。#footnote[#link("https://hai.stanford.edu/ai-index/2026-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report>")]；#link("https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance")[#text("<https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]],
)

压缩为跨浪潮视图：

```mermaid
timeline
    title 强计算产业浪潮，1940年代—2026
    1940s : 电子科学/军事计算
    1950s : 商业数据处理 : 早期人工智能
    1960s : 大型机 : 分时计算 : CAD : 工业控制
    1970s : 小型机 : 超级计算机 : 微处理器 : 早期机器人
    1980s : PC与软件 : 工作站/CAD : EDA : 专家系统 : 桌面出版
    1990s : Web/互联网 : 3D图形 : 企业软件 : 统计机器学习
    2000s : 搜索/广告技术 : 大数据 : GPU通用计算 : 云 : 移动 : 比特币
    2010s : App : 云原生 : 深度学习 : 自动驾驶 : IoT : VR : 加密 : 机器人
    2020s : 基础模型/生成式AI : AI基础设施 : 具身AI : 无人出租车规模化 : 空间计算
    2026 : 百亿亿次计算扩展 : AI与机器人资本周期仍在扩张
```

== 核心算力基础设施：大型机、半导体、GPU、HPC 与云
=== 大型机与企业数据处理：约 1950 年代至今
#strong[出现条件。] 电子计算在可靠性和成本上终于足以承担工资、库存、会计、档案和交易处理。IBM 650 与 1401 标志着商用计算机走向规模生产；System/360 更关键的贡献，是让同一产品家族中的软件和外设可跨性能档位复用，而不是每换一台机器就全部重写。#footnote[#link("https://www.ibm.com/history/650")[#text("<https://www.ibm.com/history/650>")]；#link("https://www.ibm.com/history/1401")[#text("<https://www.ibm.com/history/1401>")]；#link("https://www.ibm.com/history/system-360")[#text("<https://www.ibm.com/history/system-360>")]]

#strong[峰值结构。] 大型机作为独立产业的峰值大致在 1960—1970 年代，当时“计算机产业”几乎就是中央大型机及其外设产业。随后使用量并没有消失；只是随着小型机、PC 和服务器兴起，大型机失去了文化上的中心地位。IBM 自己的 System/390 历史也提到“大型机将死”的预测反复落空，这说明其结局是专业市场存续，而非真正死亡。#footnote[#link("https://www.ibm.com/history/system-390")[#text("<https://www.ibm.com/history/system-390>")]]

#strong[代表企业。] IBM、Univac/Sperry、Burroughs、NCR、Control Data，以及后来的企业系统专业厂商。其叙事从“电子大脑”变成“数据处理”，再变成几十年间反复出现的“大型机已死”。未来它仍会留在高可靠交易、兼容性和迁移成本极高的场景，但几乎不可能重新成为面向普通用户的主导计算形态。#footnote[#link("https://www.ibm.com/history/system-390")[#text("<https://www.ibm.com/history/system-390>")]]

=== 小型机、部门级计算与工作站：1960—1990 年代
集成电路与元件成本下降，使实验室、工程组或企业部门能够自己拥有交互式计算机，而不必向中央主机租用时间。该品类的独立产业峰值位于 1970—1980 年代；随后下方被越来越强的 PC 挤压，上方又被标准服务器和集群挤压。

它提供了一个重要历史样本：#strong[产品类别可以消失，而工作负载却继续扩张。] 交互式工程、实验控制和多用户计算都保留下来，只是不再需要一台被称为“minicomputer”的机器。计算机历史博物馆的时间线记录了这种形态与厂商不断分化、再被通用平台吸收的过程。#footnote[#link("https://www.computerhistory.org/timeline/")[#text("<https://www.computerhistory.org/timeline/>")]]

=== HPC 与超级计算：1960 年代—2026 年
CDC/Cray 路线的核心，是为最大数值性能打造专用机器。1976 年的 Cray-1 代表了专用向量机时代。1993 年开始发布的 TOP500，后来记录了产业向大规模并行集群、商品处理器和加速器迁移的过程。到 2019 年，榜单上每套系统都超过 1 petaflop；到 2026 年 6 月，有五套系统在 HPL 上超过 1 exaflop。#footnote[#link("https://www.computerhistory.org/internethistory/1970s/")[#text("<https://www.computerhistory.org/internethistory/1970s/>")]；#link("https://top500.org/timeline/")[#text("<https://top500.org/timeline/>")]；#link("https://top500.org/news/top500-becomes-a-petaflop-club-for-supercomputers/")[#text("<https://top500.org/news/top500-becomes-a-petaflop-club-for-supercomputers/>")]；#link("https://top500.org/")[#text("<https://top500.org/>")]]

因此，HPC 的“一般化”并不是高端计算消失，而是#strong[架构一般化]：过去必须由奇特、一次性的专用机器承担的任务，逐步迁移到并行集群、Linux、标准化加速器和通用编程工具上；与此同时，最前沿的性能边界继续外移。

- #strong[使用峰值：] 尚未出现。科学、国防、气候、工程和 AI 工作负载都仍在扩大。
- #strong[资本/媒体峰值：] 每次跨越新的数量级时，都会出现新一轮国家级“超级计算机竞赛”。
- #strong[独立产业峰值：] 大致是 1970—1990 年代的专用超级计算机厂商时代。
- #strong[未来：] HPC 与 AI 基础设施正在围绕加速器、高带宽内存、快速互连以及极端供电和散热工程汇合。2026 年 TOP500 的结构支持这种继续融合，而不是回到经典独立向量机经济。#footnote[#link("https://top500.org/")[#text("<https://top500.org/>")]]

=== 半导体与摩尔式扩展：持续存在的底层基座
半导体的特殊之处在于，它既是一个产业，也是本报告多数产业的发动机。SIA 数据显示，全球半导体销售额在 2024 年达到 6276 亿美元，2025 年约 7920 亿美元；随着 AI 基础设施需求加速，2026 年预测在年内被显著上调。SIA 还发布研究，估算半导体约占 AI 数据服务器机架价值的 95%，并预测未来 AI 数据中心半导体收入会大幅增长。这说明经济稀缺性正在重新迁回真实的计算基础设施。#footnote[#link("https://www.semiconductors.org/global-semiconductor-sales-increase-19-1-in-2024-double-digit-growth-projected-in-2025/")[#text("<https://www.semiconductors.org/global-semiconductor-sales-increase-19-1-in-2024-double-digit-growth-projected-in-2025/>")]；#link("https://www.semiconductors.org/global-annual-semiconductor-sales-increase-25-6-to-791-7-billion-in-2025/")[#text("<https://www.semiconductors.org/global-annual-semiconductor-sales-increase-25-6-to-791-7-billion-in-2025/>")]；#link("https://www.semiconductors.org/new-report-finds-semiconductors-account-for-95-of-an-ai-data-server-racks-value-encompassing-the-full-stack-of-chip-technologies/")[#text("<https://www.semiconductors.org/new-report-finds-semiconductors-account-for-95-of-an-ai-data-server-racks-value-encompassing-the-full-stack-of-chip-technologies/>")]]

半导体周期先后对应 PC、内存、移动、网络、加密货币以及当前 AI。与会因一般化而淡出名称的软件类别不同，芯片制造会不断获得新增长波，因为每一次软件能力普及，都会把需求推向一个新的物理容量边界。

=== GPU 与加速计算：1990 年代—2026 年
NVIDIA 在 1999 年以 GeForce 256 明确建立“GPU”品类；2006 年 11 月的 CUDA，则把 GPU 并行能力暴露为通用编程模型，而不再只是图形引擎。2012 年 AlexNet 的结果又把这条架构路线直接连接到现代深度学习。#footnote[#link("https://blogs.nvidia.com/blog/first-gpu-gaming-ai/")[#text("<https://blogs.nvidia.com/blog/first-gpu-gaming-ai/>")]；#link("https://docs.nvidia.com/cuda/cuda-c-programming-guide/")[#text("<https://docs.nvidia.com/cuda/cuda-c-programming-guide/>")]；#link("https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks")[#text("<https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>")]]

其生命周期非常特殊：

#quote(block: true)[
#strong[专用图形加速器 → 大众游戏部件 → 可编程并行处理器 → HPC 加速器 → 加密货币挖矿引擎 → AI 训练与推理平台]
]

这不是普通意义上的商品化，而是#strong[连续占领新的工作负载]。每当出现规模更大的并行任务，GPU 都找到新的扩张路径。

NVIDIA 的历史市值是极醒目的资本代理：约从 1999 年的 9.6 亿美元，升至 2010 年 89 亿美元、2015 年 177 亿美元、2020 年 3230 亿美元、2023 年 1.22 万亿美元、2024 年 3.29 万亿美元、2025 年 4.64 万亿美元，并在本报告使用的 2026 年 8 月二手快照中约为 5.2 万亿美元。这个重估规模远超 1990 年代“图形芯片公司”叙事所能想象。#footnote[#link("https://companiesmarketcap.com/nvidia/marketcap/")[#text("<https://companiesmarketcap.com/nvidia/marketcap/>")]]

#strong[峰值判断。] AI 时代的公开市场峰值可能已在过去，也可能尚未来临；2026 年并不是一个已经闭合的完整周期。

#strong[未来。] 加速器竞争会扩展到 GPU、自研 ASIC、内存系统、网络以及各种领域专用加速器。决定经济性的变量已不只是算术吞吐量，而是每瓦吞吐、内存带宽、集群利用率、软件生态和推理成本。这个判断来自仍在继续的半导体与 AI 基础设施扩建。#footnote[#link("https://www.semiconductors.org/new-report-finds-semiconductors-account-for-95-of-an-ai-data-server-racks-value-encompassing-the-full-stack-of-chip-technologies/")[#text("<https://www.semiconductors.org/new-report-finds-semiconductors-account-for-95-of-an-ai-data-server-racks-value-encompassing-the-full-stack-of-chip-technologies/>")]；#link("https://hai.stanford.edu/ai-index/2026-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report>")]]

=== 云、SaaS 与云原生基础设施：2006 年至今
AWS 在 2006 年 3 月上线 S3，同年推出 EC2，把存储和计算转化为可按量计费、通过 API 获取的资源。Microsoft 在 2008 年宣布 Windows Azure，并在 2010 年正式商用；Kubernetes 2014 年诞生于 Google，随后进入 CNCF，把抽象层从虚拟机进一步抬升到可移植的工作负载编排。#footnote[#link("https://aws.amazon.com/blogs/aws/twenty-years-of-amazon-s3-and-building-whats-next/")[#text("<https://aws.amazon.com/blogs/aws/twenty-years-of-amazon-s3-and-building-whats-next/>")]；#link("https://aws.amazon.com/blogs/aws/ec2-instance-history/")[#text("<https://aws.amazon.com/blogs/aws/ec2-instance-history/>")]；#link("https://news.microsoft.com/about/")[#text("<https://news.microsoft.com/about/>")]；#link("https://www.cncf.io/announcements/2015/06/21/new-cloud-native-computing-foundation-to-drive-alignment-among-container-technologies/")[#text("<https://www.cncf.io/announcements/2015/06/21/new-cloud-native-computing-foundation-to-drive-alignment-among-container-technologies/>")]]

云计算可以被理解为分时计算在条件成熟后的成功复活：这一次同时具备廉价网络、商品服务器、虚拟化、自动化供应、全球支付与互联网原生软件。

- #strong[独立产业峰值：] 2010 年代，“cloud-first”和“cloud-native”本身还是差异化战略；到 2020 年代，云越来越像默认运行方式。
- #strong[使用量：] 仍在增长。Microsoft 报告 Azure 在 FY2025 收入超过 750 亿美元、增长 34%；FY2026 后续季度中，Azure 及其他云服务仍约增长 39%—40%。#footnote[#link("https://www.microsoft.com/investor/reports/ar25/index.html")[#text("<https://www.microsoft.com/investor/reports/ar25/index.html>")]；#link("https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance")[#text("<https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance>")]；#link("https://www.microsoft.com/en-us/investor/earnings/fy-2026-q1/intelligent-cloud-performance")[#text("<https://www.microsoft.com/en-us/investor/earnings/fy-2026-q1/intelligent-cloud-performance>")]]

因此，云最可能的终局不是消失，而是#strong[带有寡头经济性的公用设施化一般化]。用户越来越少抽象地购买“云”，而是在购买数据库、AI、安全和应用；但超大规模厂商仍凭全球基础设施、生态与切换成本获取经济租金。

== 工业软件、互联网与数据、移动、IoT 及相邻计算产业
=== CAD、CAE、EDA 与工程仿真
交互式 CAD 可以追溯到早期计算机图形，但真正决定商业化的步骤，是机器价格下降到工程师桌面可以承担。Autodesk 在 1982 年发布 AutoCAD，并称其为首款面向 PC 设计的 CAD 软件。EDA 则走出更专业的路线：Synopsys 于 1986 年围绕逻辑综合成立，Cadence 于 1988 年由 SDA 与 ECAD 合并形成。#footnote[#link("https://www.autodesk.com/blogs/autocad/what-is-cad/")[#text("<https://www.autodesk.com/blogs/autocad/what-is-cad/>")]；#link("https://www.synopsys.com/company/acquisitions.html")[#text("<https://www.synopsys.com/company/acquisitions.html>")]；#link("https://community.cadence.com/cadence_blogs_8/b/breakfast-bytes/posts/a-brief-history-of-cadence-m-amp-a-tells-much-of-the-story")[#text("<https://community.cadence.com/cadence_blogs_8/b/breakfast-bytes/posts/a-brief-history-of-cadence-m-amp-a-tells-much-of-the-story>")]]

同一轮算力下降，在这个板块产生了三种不同结局：

#strong[CAD 一般化。] 二维制图成为普通工程软件能力，专用 CAD 硬件失去意义。

#strong[CAE 保持“算力需求弹性”。] 更多算力带来更细网格、更多设计迭代、多物理场和优化；用户不会只用更便宜的算力完成同样任务，而会增加仿真规模和次数。

#strong[EDA 的结构重要性反而上升。] 芯片复杂度增加，提高了自动综合、布局布线、验证和 IP 的价值，而不是消灭该品类。产业数据表明，到 2025 年末和 2026 年初，EDA、半导体 IP 与相关服务的季度收入已超过 50 亿美元。#footnote[#link("https://semiengineering.com/eda-and-ip-numbers-up-again-but-numbers-are-more-nuanced/")[#text("<https://semiengineering.com/eda-and-ip-numbers-up-again-but-numbers-are-more-nuanced/>")]；#link("https://semiengineering.com/eda-revenue-up-12-7-apac-roars-back/")[#text("<https://semiengineering.com/eda-revenue-up-12-7-apac-roars-back/>")]]

公开市场也反映了这种耐久性。按本报告使用的二手市值口径，Synopsys 从 1996 年约 19 亿美元升至 2026 年 8 月约 760 亿美元；Cadence 当时约 880 亿美元。#footnote[#link("https://companiesmarketcap.com/synopsys/marketcap/")[#text("<https://companiesmarketcap.com/synopsys/marketcap/>")]；#link("https://companiesmarketcap.com/cadence-design-systems/marketcap/")[#text("<https://companiesmarketcap.com/cadence-design-systems/marketcap/>")]]

#strong[未来。] AI 辅助设计可能减少单个工程步骤所需的人力，却同时增加候选方案和仿真次数。因此 EDA/CAE 很可能体现一种类似杰文斯悖论的算力需求：单位计算越便宜，总计算消费反而越大。这个判断得到 EDA 持续增长以及 AI 进入设计流程的支持。#footnote[#link("https://www.synopsys.com/blogs/chip-design/ais-impact-on-chip-design-from-ceo-aart-de-geus.html")[#text("<https://www.synopsys.com/blogs/chip-design/ais-impact-on-chip-design-from-ceo-aart-de-geus.html>")]；#link("https://semiengineering.com/eda-revenue-up-12-7-apac-roars-back/")[#text("<https://semiengineering.com/eda-revenue-up-12-7-apac-roars-back/>")]]

=== 桌面出版、数字媒体与渲染
1985 年 PageMaker、Adobe PostScript 与 Apple LaserWriter 共同建立了一个全新的桌面出版产业。1994 年 Adobe 与 Aldus 合并；随后几十年中，字体、排版、图像处理与出版都变成通用创作和生产力平台中的能力。#footnote[#link("https://www.computerhistory.org/timeline/1985/")[#text("<https://www.computerhistory.org/timeline/1985/>")]；#link("https://www.computerhistory.org/tdih/august/31/")[#text("<https://www.computerhistory.org/tdih/august/31/>")]]

这可能是最清晰的#strong[“因全面胜利而作为产业死亡”]案例：出版相关计算量大幅增长，但“桌面出版产业”这个词失去了经济区分度，因为几乎所有出版都已经计算机化。

3D 渲染经历了相似迁移：昂贵工作站的能力进入商品 GPU，而前沿继续向电影级渲染、实时光线追踪、仿真和生成式媒体移动。NVIDIA 2018 年 RTX 是这一前沿迁移的标志之一。#footnote[#link("https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/")[#text("<https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/>")]]

=== Web、互联网、搜索、广告技术与推荐系统
Berners-Lee 于 1989 年提出 Web；到 1990 年底，CERN 已运行服务器和浏览器；1993 年 4 月 30 日，CERN 将 Web 软件开放到公共领域。#footnote[#link("https://home.cern/science/computing/the-birth-of-the-web/short-history-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/short-history-web/>")]；#link("https://home.cern/science/computing/the-birth-of-the-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/>")]]

Web 的第一次资本高峰出现在 1990 年代末的互联网泡沫。泡沫破裂后最关键的变化是：互联网不再是一类公司，而成为分发与软件底层。随后，搜索、交易平台、社交网络、流媒体和广告形成新的计算密集型产业，它们的优势依赖巨大数据处理系统。

市值历史很好地区分了“泡沫”与“底层技术继续扩散”。Amazon 市值在 1999 年约 260 亿美元，2001 年跌至约 40 亿美元，但在二手历史序列中，2020 年已约 1.63 万亿美元，2025 年约 2.49 万亿美元。#footnote[#link("https://companiesmarketcap.com/amazon/marketcap/")[#text("<https://companiesmarketcap.com/amazon/marketcap/>")]]

因此：

#quote(block: true)[
互联网泡沫破裂，是#strong[价格和商业模式预期];的崩溃，而不是互联网采用的逆转。
]

=== 大数据、分布式系统与数据平台
2000 年代，商品集群处理海量数据的模式进入主流企业架构。到 2010 年代，“大数据”、Hadoop、NoSQL、数据湖和数据科学都形成自己的厂商品类。

其#strong[独立产业峰值早于使用峰值]。后来大量能力逐步迁入：

#quote(block: true)[
云数据仓库 → 托管数据库 → 流处理系统 → 湖仓架构 → AI/ML 平台
]

“大”这个形容词变得越来越没有信息量，正是因为大规模数据处理已成为普通能力。云增长和 AI 兴起进一步推动一般化，而不是让“大数据”作为独立标签复兴。#footnote[#link("https://www.microsoft.com/investor/reports/ar25/index.html")[#text("<https://www.microsoft.com/investor/reports/ar25/index.html>")]；#link("https://hai.stanford.edu/ai-index/2026-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report>")]]

=== 移动计算与 App 经济
Apple 于 2007 年 1 月 9 日发布 iPhone。App Store 在 2008 年 7 月以 500 多款原生应用上线，首个周末下载量超过 1000 万；Android 和第一款 G1 在 2008 年 10 月商业发布，并配套 Android Market。#footnote[#link("https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/")[#text("<https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/>")]；#link("https://www.apple.com/newsroom/2008/07/10iPhone-3G-on-Sale-Tomorrow/")[#text("<https://www.apple.com/newsroom/2008/07/10iPhone-3G-on-Sale-Tomorrow/>")]；#link("https://www.apple.com/newsroom/2008/07/14iPhone-App-Store-Downloads-Top-10-Million-in-First-Weekend/")[#text("<https://www.apple.com/newsroom/2008/07/14iPhone-App-Store-Downloads-Top-10-Million-in-First-Weekend/>")]；#link("https://opensource.googleblog.com/2008/10/android-open-source-cell-phone.html")[#text("<https://opensource.googleblog.com/2008/10/android-open-source-cell-phone.html>")]；#link("https://android-developers.googleblog.com/2008/10/android-market-now-available-for-users.html")[#text("<https://android-developers.googleblog.com/2008/10/android-market-now-available-for-users.html>")]]

移动浪潮并不只依赖 CPU，而是以下能力同时汇合：

#quote(block: true)[
触摸交互 + 移动 SoC + 摄像头 + GPS + 闪存 + 蜂窝数据 + 电池 + 应用商店支付 + 云后端
]

2009 年前后的“There\'s an app for that”概括了媒体峰值：当时仅仅“移动化”就能区分一家创业公司或传统企业。Apple 后来的数据则展示了相反终点。到 2025 年，App Store 全球每周平均用户超过 8.5 亿；Apple 称开发者自 2008 年以来通过平台累计获得超过 5500 亿美元。App 已成为商业和沟通的普通基础设施，而不是新奇技术品类。#footnote[#link("https://www.apple.com/newsroom/2018/07/app-store-turns-10/")[#text("<https://www.apple.com/newsroom/2018/07/app-store-turns-10/>")]；#link("https://www.apple.com/newsroom/2026/01/2025-marked-a-record-breaking-year-for-apple-services/")[#text("<https://www.apple.com/newsroom/2026/01/2025-marked-a-record-breaking-year-for-apple-services/>")]]

#strong[资本结局。] 价值向上集中于 iOS/Android 的操作系统和分发，向下集中于少数大型应用与服务。“做一个 App”本身不再构成可防御战略。

=== IoT、嵌入式计算与边缘计算
IoT 是另一个叙事分母被放得极大的品类。Cisco 2011 年的研究曾著名地预测 2020 年有 500 亿台联网设备；后续 Cisco 预测则收敛为 2023 年约 147 亿台 IoT 设备、约占所有联网设备一半，说明早期口号明显跑在定义和真实部署之前。#footnote[#link("https://www.cisco.com/c/dam/en_us/about/ac79/docs/innov/IoT_IBSG_0411FINAL.pdf")[#text("<https://www.cisco.com/c/dam/en_us/about/ac79/docs/innov/IoT_IBSG_0411FINAL.pdf>")]；#link("https://www.cisco.com/c/en/us/solutions/collateral/executive-perspectives/annual-internet-report/white-paper-c11-741490.html")[#text("<https://www.cisco.com/c/en/us/solutions/collateral/executive-perspectives/annual-internet-report/white-paper-c11-741490.html>")]]

但底层能力成功一般化：传感器和联网进入工厂、物流、车辆、家电、电表、摄像头与基础设施。“IoT 创业公司”之所以变得不再独特，是因为连接本身已经成为产品功能。

#strong[结局。] 消费 IoT 的泛化叙事部分边缘化；工业 IoT 被吸收到自动化、云遥测和边缘计算中。

#strong[未来。] 边缘推理可能再次给该领域一次算力冲击。系统不再把每个传感器样本都传到云端，而是让越来越强的本地加速器在数据源附近完成感知和控制。价值更可能归属于具体领域系统，而不是“通用 IoT”标签。

=== 其他具有算力需求弹性的子板块
下列相邻产业也符合相同模式，但原研究缺乏足够一致的数十年资本数据，不适合强行画出高精度连续曲线：

#table(
  columns: 3,
  [子板块], [决定性计算阈值], [常见结局],
  [搜索与广告定向],
  [Web 规模索引、排序与拍卖计算],
  [集中到巨型平台],
  [推荐系统],
  [大型行为数据集与统计/机器学习推理],
  [一般化到电商与媒体],
  [科学仿真],
  [并行数值计算],
  [持久的 HPC/CAE 专业市场],
  [计算生物学与药物发现],
  [序列数据、结构与模型计算],
  [生物科技与 AI 周期性交汇],
  [数字孪生],
  [IoT 遥测、仿真与渲染],
  [被工业软件吸收],
  [网络安全分析],
  [高吞吐遥测与模式检测],
  [永久军备竞赛，越来越依赖 AI],
  [量化金融],
  [低延迟与大规模数值优化],
  [高价值专业市场],
  [国防自主系统],
  [传感器、边缘 AI 与仿真],
  [增长中的物理 AI 分支],
  [游戏引擎与实时图形],
  [商品 GPU 吞吐],
  [一般化为开发平台],
  [量子计算],
  [不同于经典缩放的计算基底],
  [尚未一般化，不应与 GPU/云的经典扩展混为一谈],
)

广义历史教训是：#strong[当工作负载需求具有弹性时，算力变便宜通常不会让产业消失。] 分辨率、模型规模、仿真次数、延迟目标或用户规模会继续扩大，直到遇到下一个瓶颈。

== 人工智能的多轮浪潮
AI 是理解算力周期最有代表性的单一板块，因为它反复在“被单独庆祝的前沿领域”和“已经融入普通软件的技术集合”之间切换。

=== 早期符号主义 AI：约 1956—1970 年代
1956 年达特茅斯研讨会推动 AI 成为正式领域。早期系统在极其有限的内存和处理预算下展示了定理证明、搜索和博弈。#footnote[#link("https://dl.acm.org/doi/abs/10.1609/aimag.v27i4.1911")[#text("<https://dl.acm.org/doi/abs/10.1609/aimag.v27i4.1911>")]]

- #strong[出现条件：] 存储程序计算机、符号语言，以及“形式推理能够重现智能”的乐观预期。
- #strong[叙事峰值：] 大致在 1960 年代。少量实验室演示被外推为广泛机器智能。
- #strong[退潮原因：] 搜索空间脆弱、世界知识不足、感知能力弱、算力预算极小，使系统泛化远比基准演示暗示的困难。史学界对“第一次 AI 寒冬”这一说法本身也有争议，因此更准确的描述是资金与预期收缩，而不是边界清晰的寒冬。#footnote[#link("https://cacm.acm.org/opinion/there-was-no-first-ai-winter/")[#text("<https://cacm.acm.org/opinion/there-was-no-first-ai-winter/>")]]

=== 专家系统与知识工程：1970 年代后期—1980 年代
下一轮商业浪潮把专家知识编码成规则和推理引擎。

- #strong[出现条件：] 算力足以进行实用推理；软件工具改善；企业愿意把专业决策规则显式编码。
- #strong[独立产业峰值：] 1980 年代的专业 AI 软件和硬件公司。
- #strong[失败模式：] 知识获取和维护昂贵，规则系统离开封闭领域后十分脆弱。品类收缩，但成功组件被悄悄嵌入普通企业应用。这是早期“AI 效应”：一旦能力变得常规，人们往往不再称它为 AI。

=== 统计机器学习：1990—2000 年代
决定性转向是从显式编码专家推理，变成从不断增长的数字数据中学习预测关系。搜索排序、垃圾邮件过滤、广告、信用评分、推荐、语音和视觉越来越被改写为统计计算问题。

- #strong[出现条件：] 互联网规模数据 + 商品集群 + 概率算法 + 快速下降的存储成本。
- #strong[峰值表现：] 媒体可见度低于后来的深度学习，因为大量经济价值是以“搜索”“广告”“反欺诈”“推荐”等名称变现的。

这点在历史上很重要：#strong[2012 年以前最大的一轮 AI 采用，并不一定自称 AI。]

=== 深度学习：2012 年至今
AlexNet 在 2012 年 ImageNet 上把大型标注数据、卷积网络和 GPU 计算结合起来，显著提高图像识别性能。NVIDIA 自己也把 AlexNet 时期视为其 GPU 平台点燃现代 AI 时代的节点。#footnote[#link("https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks")[#text("<https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>")]；#link("https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/")[#text("<https://www.nvidia.com/en-us/about-nvidia/corporate-timeline/>")]]

2016 年 AlphaGo 击败李世石，成为大语言模型时代之前最强的全球公众注意事件之一，展示了神经网络、搜索和强化学习结合后的能力。#footnote[#link("https://deepmind.google/research/alphago/")[#text("<https://deepmind.google/research/alphago/>")]]

=== Transformer 与基础模型转折：2017—2021 年
2017 年 Transformer 显著提高了序列建模的训练并行性；Google 原论文称，其最大模型使用八张 GPU、在数天内完成训练。2020 年 GPT-3 又表明，超大语言模型无需传统的任务专用再训练，也能在少样本条件下完成多类任务。#footnote[#link("https://research.google/pubs/attention-is-all-you-need/")[#text("<https://research.google/pubs/attention-is-all-you-need/>")]；#link("https://openai.com/index/language-models-are-few-shot-learners/")[#text("<https://openai.com/index/language-models-are-few-shot-learners/>")]]

其经济含义很深：

$ "能力提升" -> "更大的训练任务" -> "更多加速器需求" -> "更好的硬件与软件" -> "更大的训练与推理规模" $

算力不再只是企业要尽量压低的成本，而成为主动扩大投入的战略生产要素。

=== 生成式 AI：2022—2026 年
ChatGPT 于 2022 年 11 月 30 日公开发布，大幅拓宽了普通用户与大语言模型交互的入口。#footnote[#link("https://openai.com/index/chatgpt/")[#text("<https://openai.com/index/chatgpt/>")]]

随后的资本曲线异常陡峭。Stanford AI Index 给出的数据为：

#table(
  columns: 5,
  [指标], [2022], [2023], [2024], [2025],
  [全球生成式 AI 私人投资],
  [约 30 亿美元],
  [约 252 亿美元],
  [339 亿美元],
  [更高；接近全部 AI 私人投资的一半],
  [美国私人 AI 投资],
  [—],
  [672 亿美元],
  [1091 亿美元],
  [2859 亿美元],
  [全球私人 AI 投资],
  [—],
  [—],
  [约 1515 亿美元（由增长率反推）],
  [3447 亿美元],
  [全球企业 AI 投资],
  [—],
  [—],
  [约 2530 亿美元（由增长率反推）],
  [5817 亿美元],
)

2023、2024 年生成式 AI 数据以及 2025 年私人/企业总量来自 Stanford HAI。表中 2024 年全球私人投资约 1515 亿美元，是根据 Stanford 报告的 2025 年同比增长 127.5% 反推，因此应被视为重构值，而非机构单独发布的标题数字。#footnote[#link("https://hai.stanford.edu/news/ai-index-state-ai-13-charts")[#text("<https://hai.stanford.edu/news/ai-index-state-ai-13-charts>")]；#link("https://hai.stanford.edu/ai-index/2025-ai-index-report/economy")[#text("<https://hai.stanford.edu/ai-index/2025-ai-index-report/economy>")]；#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]]

Stanford 2026 报告还称，2025 年美国有 1953 家 AI 公司首次获得融资，并估算美国私人 AI 投资为 2859 亿美元，中国为 124 亿美元；同时提醒，单看私人投资会低估中国由政府引导的资金渠道。#footnote[#link("https://hai.stanford.edu/ai-index/2026-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report>")]；#link("https://hai.stanford.edu/ai-index/2026-ai-index-report/economy")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report/economy>")]]

#strong[各轮代表性参与者。] IBM；Stanford、MIT、Carnegie Mellon 等研究生态；专家系统厂商；Google、Microsoft、Amazon、Meta、NVIDIA、DeepMind、OpenAI，以及快速扩张的基础模型与应用生态。

#strong[叙事序列：]

#quote(block: true)[
“会思考的机器” → “专家系统” → “数据挖掘/机器学习” → “深度学习” → “AI 在某项任务击败人类” → “基础模型” → “生成式 AI” → “Copilot” → “Agent” → “物理/具身 AI”
]

术语变化的速度，快于底层从稀缺计算走向越来越通用的学习系统这一连续演进。

=== 2026 年是否已经达到峰值？
现有证据不足以断言。全球投资在 2025 年显著加速，云厂商继续报告 AI 驱动需求，半导体和机器人数据到 2026 年仍处扩张状态。#footnote[#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]；#link("https://abc.xyz/investor/events/event-details/2025/2025-Q3-Earnings-Call-2025-4OI4Bac_Q9/default.aspx")[#text("<https://abc.xyz/investor/events/event-details/2025/2025-Q3-Earnings-Call-2025-4OI4Bac_Q9/default.aspx>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]；#link("https://www.semiconductors.org/news-events/latest-news/")[#text("<https://www.semiconductors.org/news-events/latest-news/>")]]

更可能的未来是#strong[分层一般化]：

+ 前沿训练保持资本密集，并集中在少数机构；
+ 推理价格大幅下降，进入更多设备和服务；
+ 通用“AI 套壳”产品失去差异化；
+ AI 被嵌入搜索、办公、编程、工程、客服、分析和终端设备；
+ 稀缺价值转移到分发、专有工作流与数据、可靠性、算力基础设施、电力、先进制造，以及出错代价很高的专业领域。

这会重演 PC、网络与云的历史：一项技术可以在经济上#strong[越来越重要，却越来越不适合作为独立品类名称]。

== 机器人、工业自动化、自动驾驶与空间计算
=== 工业自动化与工业机器人
工业自动化是最能说明“媒体周期远短于部署周期”的算力驱动产业之一。早期数控和可编程自动化，逐步演变为数字控制的生产系统与工业机器人；现代系统又加入机器视觉、机器学习、机器人车队软件和云连接。

部署数据表明，底层增长是持久的，而不只是一次炒作。IFR 报告，全球工业机器人安装量为：2018 年 42.2 万台、2021 年 517385 台、2022 年 553052 台。其 2025 年《World Robotics》发布数据显示，2024 年安装量为 54.2 万台，超过十年前的两倍；年安装量连续四年高于 50 万台，全球在役存量约 466 万台。#footnote[#link("https://ifr.org/ifr-press-releases/news/robot-investment-reaches-record-16.5-billion-usd")[#text("<https://ifr.org/ifr-press-releases/news/robot-investment-reaches-record-16.5-billion-usd>")]；#link("https://ifr.org/ifr-press-releases/news/wr-report-all-time-high-with-half-a-million-robots-installed")[#text("<https://ifr.org/ifr-press-releases/news/wr-report-all-time-high-with-half-a-million-robots-installed>")]；#link("https://ifr.org/ifr-press-releases/news/world-robotics-2023-report-asia-ahead-of-europe-and-the-americas")[#text("<https://ifr.org/ifr-press-releases/news/world-robotics-2023-report-asia-ahead-of-europe-and-the-americas>")]；#link("https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years")[#text("<https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years>")]]

中国已经成为重心。IFR 报告中国在 2024 年安装约 29.5 万台，占全球约 54%，在役存量超过 200 万台。#footnote[#link("https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years")[#text("<https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years>")]]

#strong[峰值判断。] 工业机器人不存在一个单一峰值。独立设备产业已经成熟，但部署继续扩张；当前算力又在成熟自动化底座上创造第二轮、软件占比更高的浪潮。

#strong[结局。] 专业市场存续，同时一般化为制造业基础设施。

#strong[未来。] 更多感知、更灵活的操作、仿真、低代码编程和 AI 驱动的任务适应；决定性约束正从原始算力转向可靠性、开机率、灵巧性、安全和投资回报。

=== 服务机器人与具身/物理 AI
当前机器人资本周期与经典工业自动化不同。Crunchbase 数据显示，较早的机器人风投峰值在 2021 年，约 140—150 亿美元；2023 年约 69 亿美元，2024 年约 80 亿美元，2025 年又回到约 140—150 亿美元，具体取决于数据库快照。到 2026 年 6 月 22 日，Crunchbase 统计当年融资已达 188 亿美元，超过其此前所有完整年度纪录。#footnote[#link("https://news.crunchbase.com/robotics/2024-funding-robust-ai-bezos/")[#text("<https://news.crunchbase.com/robotics/2024-funding-robust-ai-bezos/>")]；#link("https://news.crunchbase.com/venture/beyond-ai-growing-startup-sectors-legal-robotics-defense/")[#text("<https://news.crunchbase.com/venture/beyond-ai-growing-startup-sectors-legal-robotics-defense/>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]

叙事已经从“机器人”转向#strong[具身 AI / 物理 AI]：模型不再只是执行大量手工编写的动作序列，而被期待能够感知、推理并把自然语言指令转化为行动。中国机器人融资在 2026 年也达到异常高位；Crunchbase 称截至 5 月中旬已约 56 亿美元。#footnote[#link("https://news.crunchbase.com/robotics/embodied-ai-fuels-record-funding-china-ipo-momentum-builds/")[#text("<https://news.crunchbase.com/robotics/embodied-ai-fuels-record-funding-china-ipo-momentum-builds/>")]]

这是典型的新一轮浪潮：物理机体并不新，#strong[被宣称为断点的是计算和软件层]。

风险同样典型。一个在 95% 情况下可用的模型，可能是令人印象深刻的软件，却是不合格的生产设备。物理 AI 面临漫长的“最后几个 9”问题：执行器、维护、安全、边缘计算以及环境变化都必须共同解决。

=== 自动驾驶
现代自动驾驶产业谱系可从 DARPA 2004、2005 年 Grand Challenge 算起。2004 年没有车辆完成挑战；2005 年有五辆完成，Stanford 的 Stanley 跑完约 132 英里路线。2007 年 Urban Challenge 又把自主驾驶推入类似城市交通的环境。#footnote[#link("https://www.darpa.mil/about/innovation-timeline/grand-challenge")[#text("<https://www.darpa.mil/about/innovation-timeline/grand-challenge>")]；#link("https://www.darpa.mil/news/2014/grand-challenge-ten-years-later")[#text("<https://www.darpa.mil/news/2014/grand-challenge-ten-years-later>")]；#link("https://www.darpa.mil/about/innovation-timeline/darpa-urban-challenge")[#text("<https://www.darpa.mil/about/innovation-timeline/darpa-urban-challenge>")]]

Google 项目于 2009 年启动，2010 年取得早期自主里程目标，2015 年完成公开道路上的全无人乘坐；Waymo 于 2016 年成为 Alphabet 独立公司。#footnote[#link("https://waymo.com/blog/2020/04/in-the-drivers-seat-1000-mile-challenge/")[#text("<https://waymo.com/blog/2020/04/in-the-drivers-seat-1000-mile-challenge/>")]；#link("https://waymo.com/about/")[#text("<https://waymo.com/about/>")]]

此后自动驾驶形成了现代计算产业中最清晰的“资本—预期”周期之一：

#table(
  columns: 3,
  [时期], [资本/产业信号], [含义],
  [2016—2018],
  [大型车企和科技公司进行收购与大额融资],
  [“完全自动驾驶很快到来”叙事加强],
  [2020],
  [Waymo 首轮外部融资 22.5 亿美元],
  [资金来源开始超出母公司内部投入。#footnote[#link("https://news.crunchbase.com/venture/alphabets-autonomous-vehicle-bet-waymo-raises-2-25-billion-in-first-outside-funding-round/")[#text("<https://news.crunchbase.com/venture/alphabets-autonomous-vehicle-bet-waymo-raises-2-25-billion-in-first-outside-funding-round/>")]]],
  [2021],
  [自动驾驶风投约 125 亿美元],
  [主要融资周期峰值。#footnote[#link("https://news.crunchbase.com/transportation/av-startup-may-mobility-vc-funding/")[#text("<https://news.crunchbase.com/transportation/av-startup-may-mobility-vc-funding/>")]]],
  [2022],
  [融资显著下滑；Argo AI 关闭],
  [行业整合，并重新评估技术和经济性。#footnote[#link("https://news.crunchbase.com/transportation/autonomous-vehicles-argo-ai-ford/")[#text("<https://news.crunchbase.com/transportation/autonomous-vehicles-argo-ai-ford/>")]]],
  [2023],
  [融资约 59 亿美元],
  [繁荣后的低谷。#footnote[#link("https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/")[#text("<https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/>")]]],
  [2024],
  [约 121—126 亿美元，受 Waymo 56 亿美元融资强烈影响],
  [选择性反弹，而非全行业复兴。#footnote[#link("https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/")[#text("<https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/>")]；#link("https://news.crunchbase.com/transportation/autonomous-driving-startup-nuro-raise-tiger-global/")[#text("<https://news.crunchbase.com/transportation/autonomous-driving-startup-nuro-raise-tiger-global/>")]]],
  [2024],
  [GM 停止资助 Cruise 无人出租车开发],
  [一家主要企业赞助者放弃独立 robotaxi 路线。#footnote[#link("https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html")[#text("<https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html>")]]],
  [2025],
  [Crunchbase 后续比较中约 59 亿美元],
  [资本再次收缩。#footnote[#link("https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/")[#text("<https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/>")]]],
  [2026 年截至 4 月 15 日],
  [34 笔交易合计 214 亿美元],
  [创纪录速度，但高度集中于少数公司。#footnote[#link("https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/")[#text("<https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/>")]]],
)

与此同时，实际部署终于产生可观规模。Waymo 称 2024 年提供超过 400 万次无人驾驶乘坐，2025 年随后跨过每周 25 万次付费行程；其 2026 年 2 月融资公告称，已在美国六个都市区每周提供超过 40 万次乘坐，2025 年全年约 1500 万次。#footnote[#link("https://waymo.com/blog/2024/12/year-in-review-2024/")[#text("<https://waymo.com/blog/2024/12/year-in-review-2024/>")]；#link("https://waymo.com/blog/2025/05/scaling-our-fleet-through-us-manufacturing")[#text("<https://waymo.com/blog/2025/05/scaling-our-fleet-through-us-manufacturing>")]；#link("https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/")[#text("<https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/>")]]

因此，自动驾驶实际上存在#strong[两条不同历史]：

- 2016—2021 年广泛预期“很多公司都将很快实现通用自动驾驶”，这一预期明显过度；
- 但在地理和运行设计域受限的条件下，无人出租车确实已成为少数生存者正在规模化的业务。

#strong[更可能的未来];不是突然跨入普遍 Level 5，而是一条异质阶梯：驾驶辅助、基于高精地图的脱手驾驶、受限 ODD 内的 robotaxi、自动驾驶卡车、矿区/港口/工厂等工业自主系统。GM 在退出 Cruise robotaxi 后，把目标转向 2028 年“eyes-off”个人自动驾驶，正体现这种战略迁移。#footnote[#link("https://news.gm.com/home.detail.html/Pages/news/us/en/2025/oct/1022-UM-GM-eyes-off-driving-conversational-AI-unified-software-platform.html")[#text("<https://news.gm.com/home.detail.html/Pages/news/us/en/2025/oct/1022-UM-GM-eyes-off-driving-conversational-AI-unified-software-platform.html>")]]

=== VR、AR、元宇宙与空间计算
VR 可能是主流计算品类中经历“几乎成熟”周期最多的一个，因为其瓶颈是乘法式的：

$ "体验质量" approx f("GPU", "显示", "延迟", "追踪", "重量", "电池", "光学", "内容", "社会接受度") $

任一项严重不足，都可能支配整体体验。

2012—2016 年 Oculus 浪潮由更好的移动显示、低价惯性传感器和 GPU 促成。Facebook 2014 年收购 Oculus，把它变成战略平台下注；Meta 现在把该收购描述为十年 VR/MR/AR 投资的起点。#footnote[#link("https://www.meta.com/about/company-info/?srsltid=AfmBOoqZRzOTUi75QhSt1fSOoezv3zbVEjL-Vhu7ayGimbCLMA2Cg5Pt")[#text("<https://www.meta.com/about/company-info/?srsltid=AfmBOoqZRzOTUi75QhSt1fSOoezv3zbVEjL-Vhu7ayGimbCLMA2Cg5Pt>")]；#link("https://www.meta.com/blog/reality-labs-10-year-anniversary-next-computing-platform-vr-mr-ar-xr/?srsltid=AfmBOopPS1kKl1BlR6tU5wHrYMpqdV8niG-V3o8I0snP8fJLCbVO9a6i")[#text("<https://www.meta.com/blog/reality-labs-10-year-anniversary-next-computing-platform-vr-mr-ar-xr/?srsltid=AfmBOopPS1kKl1BlR6tU5wHrYMpqdV8niG-V3o8I0snP8fJLCbVO9a6i>")]]

媒体与资本峰值在 2021 年“元宇宙”叙事中大幅扩大。Meta 明确把元宇宙描述为移动互联网的继任者。然而 Reality Labs 长期结构性亏损：仅 2025 年前九个月，Meta 报告该部门经营亏损约 132 亿美元。#footnote[#link("https://www.meta.com/metaverse/what-is-the-metaverse/?srsltid=AfmBOopt004Tx9udomjxJubI1cnVDe3nUMdtUrUwl59Drd_6HsxJjNEn")[#text("<https://www.meta.com/metaverse/what-is-the-metaverse/?srsltid=AfmBOopt004Tx9udomjxJubI1cnVDe3nUMdtUrUwl59Drd_6HsxJjNEn>")]；#link("https://investor.atmeta.com/investor-news/press-release-details/2025/Meta-Reports-Third-Quarter-2025-Results/default.aspx")[#text("<https://investor.atmeta.com/investor-news/press-release-details/2025/Meta-Reports-Third-Quarter-2025-Results/default.aspx>")]]

Apple 在 2023 年发布 Vision Pro 时有意把品类语言改成“空间计算”；产品于 2024 年 2 月在美国上市。Apple 称到 2024 年中期已有超过 2000 个 Vision Pro 专用空间应用，并兼容超过 150 万个 iPhone/iPad 应用。#footnote[#link("https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/")[#text("<https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/>")]；#link("https://www.apple.com/newsroom/2024/01/apple-vision-pro-available-in-the-us-on-february-2/")[#text("<https://www.apple.com/newsroom/2024/01/apple-vision-pro-available-in-the-us-on-february-2/>")]；#link("https://www.apple.com/newsroom/2024/06/visionos-2-brings-new-spatial-computing-experiences-to-apple-vision-pro/")[#text("<https://www.apple.com/newsroom/2024/06/visionos-2-brings-new-spatial-computing-experiences-to-apple-vision-pro/>")]]

#strong[截至目前的结局。] 把元宇宙视为短期内全面替代移动计算的平台叙事，已较 2021 年明显退潮；但 VR 游戏、工业可视化、培训、混合现实和 AI 眼镜仍继续发展。

#strong[未来。] 最强路径可能比原始元宇宙愿景更“不沉浸”：更轻的混合现实或 AI 眼镜、持续上下文、免手操作，以及选择性的 3D 体验。Meta 目前同时推进 Quest 头显与 Ray-Ban Meta AI 眼镜，也支持这种迁移判断。#footnote[#link("https://www.meta.com/about/?srsltid=AfmBOorFkaiPu2OD62t2eaLWrRRv9y8-aTBeMCJsQoHvVXhJnRVyz_Gt")[#text("<https://www.meta.com/about/?srsltid=AfmBOorFkaiPu2OD62t2eaLWrRRv9y8-aTBeMCJsQoHvVXhJnRVyz_Gt>")]]

=== 加密货币与工作量证明挖矿
比特币 2008 年白皮书把共识安全与基于哈希的工作量证明连接起来，创造了一个特殊产业：计算消耗不只是生产外部产品的手段，而是被有意纳入建立交易顺序和经济安全的机制。#footnote[#link("https://bitcoin.org/en/bitcoin-paper")[#text("<https://bitcoin.org/en/bitcoin-paper>")]]

硬件演化本身就是一条缩小版算力周期：

#quote(block: true)[
CPU → GPU → FPGA → ASIC → 工业规模矿场与能源优化
]

随着专用硬件提高，普通 PC 挖矿在经济上被边缘化。底层网络继续存在，但“用自己的电脑挖矿”专业化为规模化资源产业。

在 AI 成为加速器主叙事之前，加密货币也曾给 GPU 带来巨大邻接需求冲击。但区块链与强计算并非必然绑定：Ethereum 于 2022 年 9 月 15 日从工作量证明切换到权益证明，官方称能耗下降约 99.95%。#footnote[#link("https://ethereum.org/roadmap/merge/")[#text("<https://ethereum.org/roadmap/merge/>")]；#link("https://ethereum.org/developers/docs/consensus-mechanisms/pos/")[#text("<https://ethereum.org/developers/docs/consensus-mechanisms/pos/>")]]

这说明：#strong[计算密集型共识设计本身也可能被另一种技术架构替代。] 比特币挖矿仍高度依赖计算与能源；其他区块链系统不必复制同一结构。

== 资本、市值与关注度证据
=== 公开市场资本曲线
无法为这些不断变换的品类构造一条干净、连续几十年的“行业指数”：今天的云或 AI 公司，往往最初是 PC、互联网、半导体或企业软件公司；历史指数的成分也不断变化。因此，下图和表格使用主要上市公司作为#strong[风向标代理]，而不是投资组合回测或严格板块收益指数。

#image("assets/代表性计算经济公司的市值变化.png", width: 100%, alt: "代表性计算经济公司的市值变化（对数纵轴，十亿美元）")

年度历史值来自 CompaniesMarketCap。即使考虑所有口径限制，结构变化仍很明显：1990 年代末互联网/PC 峰值由 Microsoft 等网络和软件公司主导；2007—2021 年移动/云时代大幅重估 Apple、Amazon 和 Meta；2023—2026 年 AI 基础设施浪潮则显著重估 NVIDIA 与 TSMC。#footnote[#link("https://companiesmarketcap.com/nvidia/marketcap/")[#text("<https://companiesmarketcap.com/nvidia/marketcap/>")]；#link("https://companiesmarketcap.com/microsoft/marketcap/")[#text("<https://companiesmarketcap.com/microsoft/marketcap/>")]；#link("https://companiesmarketcap.com/apple/marketcap/")[#text("<https://companiesmarketcap.com/apple/marketcap/>")]；#link("https://companiesmarketcap.com/amazon/marketcap/")[#text("<https://companiesmarketcap.com/amazon/marketcap/>")]；#link("https://companiesmarketcap.com/tsmc/marketcap/")[#text("<https://companiesmarketcap.com/tsmc/marketcap/>")]；#link("https://companiesmarketcap.com/meta-platforms/marketcap/")[#text("<https://companiesmarketcap.com/meta-platforms/marketcap/>")]]

选取关键年份，单位为十亿美元：

#table(
  columns: 8,
  [年份], [NVIDIA], [Microsoft], [Apple], [Amazon], [TSMC], [Meta], [Tesla],
  [1999],
  [1.0],
  [604],
  [16.6],
  [26.3],
  [69.0],
  [—],
  [—],
  [2000],
  [2.2],
  [231],
  [5.1],
  [5.6],
  [40.3],
  [—],
  [—],
  [2005],
  [6.3],
  [272],
  [60.8],
  [19.6],
  [49.0],
  [—],
  [—],
  [2010],
  [8.9],
  [235],
  [297],
  [81.2],
  [63.6],
  [—],
  [2.5],
  [2015],
  [17.7],
  [440],
  [584],
  [318],
  [110],
  [297],
  [31.5],
  [2020],
  [323],
  [1681],
  [2255],
  [1634],
  [488],
  [778],
  [669],
  [2021],
  [735],
  [2522],
  [2901],
  [1691],
  [576],
  [922],
  [1061],
  [2022],
  [364],
  [1787],
  [2066],
  [857],
  [386],
  [320],
  [389],
  [2023],
  [1223],
  [2794],
  [2994],
  [1570],
  [539],
  [910],
  [790],
  [2024],
  [3288],
  [3200],
  [3766],
  [2352],
  [1045],
  [1514],
  [1385],
  [2025],
  [4638],
  [3625],
  [3997],
  [2485],
  [1570],
  [1671],
  [1580],
  [2026年8月],
  [5200],
  [3588],
  [4514],
  [2789],
  [2172],
  [1400],
  [1433],
)

1996 年后的原始年度序列来自原研究配套 CSV 和工作簿。数值均为近似值；2026 年以前是二手来源中的历史年末估计，2026 年则是 8 月快照。#footnote[#link("https://companiesmarketcap.com/nvidia/marketcap/")[#text("<https://companiesmarketcap.com/nvidia/marketcap/>")]；#link("https://companiesmarketcap.com/microsoft/marketcap/")[#text("<https://companiesmarketcap.com/microsoft/marketcap/>")]；#link("https://companiesmarketcap.com/amazon/marketcap/")[#text("<https://companiesmarketcap.com/amazon/marketcap/>")]；#link("https://companiesmarketcap.com/tesla/marketcap/")[#text("<https://companiesmarketcap.com/tesla/marketcap/>")]；#link("https://companiesmarketcap.com/apple/marketcap/")[#text("<https://companiesmarketcap.com/apple/marketcap/>")]；#link("https://companiesmarketcap.com/tsmc/marketcap/")[#text("<https://companiesmarketcap.com/tsmc/marketcap/>")]；#link("https://companiesmarketcap.com/meta-platforms/marketcap/")[#text("<https://companiesmarketcap.com/meta-platforms/marketcap/>")]]

这张图#strong[不能];被读成“算力单独造成了所有估值”。它更适合回答：在不同年代，金融市场把计算栈的哪一层视为最稀缺、最可能获取超额利润的环节。

=== 风险投资曲线
#image("assets/机器人与自动驾驶融资代理.png", width: 100%, alt: "机器人与自动驾驶融资代理（2026年为不完整年度）")

图中不对缺失年份插值。机器人和自动驾驶使用 Crunchbase 分类；AI 使用 Stanford HAI。各口径不能直接横向等同，Crunchbase 在不同时间发布的机器人总额也略有差异，所以精确到十亿美元以下会制造虚假确定性。#footnote[#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]；#link("https://news.crunchbase.com/venture/beyond-ai-growing-startup-sectors-legal-robotics-defense/")[#text("<https://news.crunchbase.com/venture/beyond-ai-growing-startup-sectors-legal-robotics-defense/>")]；#link("https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/")[#text("<https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/>")]；#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]]

比精确数值更稳定的模式是：

- #strong[AI：] 资本在 2025 年出现极端加速。Stanford 报告 2025 年全球私人 AI 投资 3447 亿美元，企业 AI 投资总额 5817 亿美元。#footnote[#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]]
- #strong[机器人：] 2021 年出现一轮峰值，2022—2024 年收缩，2025—2026 年以具身 AI 名义再度上升。#footnote[#link("https://news.crunchbase.com/robotics/2024-funding-robust-ai-bezos/")[#text("<https://news.crunchbase.com/robotics/2024-funding-robust-ai-bezos/>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]
- #strong[自动驾驶：] 2021 年峰值，2022—2023 年退潮，2024 年选择性恢复，2025 年再次偏弱，2026 年又出现高度集中的反弹。#footnote[#link("https://news.crunchbase.com/transportation/av-startup-may-mobility-vc-funding/")[#text("<https://news.crunchbase.com/transportation/av-startup-may-mobility-vc-funding/>")]；#link("https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/")[#text("<https://news.crunchbase.com/ai/av-startup-nuro-gains-nvda-investor/>")]；#link("https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/")[#text("<https://news.crunchbase.com/venture/record-funding-autonomous-vehicles-q1-2026/>")]]
- #strong[VR/元宇宙：] 传统 VC 数据不能很好捕捉最大资本投入，因为大量投入发生在 Meta 内部；Reality Labs 的经营亏损比独立创业融资更适合作为该浪潮的资本代理。#footnote[#link("https://investor.atmeta.com/investor-news/press-release-details/2025/Meta-Reports-Third-Quarter-2025-Results/default.aspx")[#text("<https://investor.atmeta.com/investor-news/press-release-details/2025/Meta-Reports-Third-Quarter-2025-Results/default.aspx>")]]
- #strong[云与半导体基础设施：] 当产业进入超大规模基础设施阶段，企业资本开支和收入比 VC 更有意义。Azure FY2025 超过 750 亿美元收入及 2026 年持续增长，体现了这种转换。#footnote[#link("https://www.microsoft.com/investor/reports/ar25/index.html")[#text("<https://www.microsoft.com/investor/reports/ar25/index.html>")]；#link("https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance")[#text("<https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance>")]]

=== 关注度与媒体叙事
不存在一个从 1940 年代一直覆盖到 2026 年、口径一致且开放的媒体提及数据库。报纸数字化覆盖、出版量和术语都变化太大，原始提及次数无法直接比较。与其制造伪精确曲线，更合理的做法是把产品发布、重大头条、融资上升和产业叙事编码成#strong[分析者关注度代理]，用于识别叙事状态，而不是当作真实媒体计数。

代表性的媒体/公共叙事节点包括：

#table(
  columns: 3,
  [年代], [代表性表述或公共叙事], [所反映的变化],
  [1981],
  [IBM 历史资料提到，PC 的重要性最终使 #emph[Time] 把计算机评为“年度机器”],
  [PC 从爱好者设备变成社会与经济品类。#footnote[#link("https://www.ibm.com/history/personal-computer")[#text("<https://www.ibm.com/history/personal-computer>")]]],
  [1985],
  [PageMaker 被描述为“发起桌面出版革命”],
  [新的专业软件类别形成。#footnote[#link("https://www.computerhistory.org/timeline/1985/")[#text("<https://www.computerhistory.org/timeline/1985/>")]]],
  [1990年代],
  [Web 开放发布，互联网公司大量出现],
  [“互联网”本身成为投资命题。#footnote[#link("https://home.cern/science/computing/the-birth-of-the-web/")[#text("<https://home.cern/science/computing/the-birth-of-the-web/>")]]],
  [2007],
  [Apple：“Apple Reinvents the Phone with iPhone”],
  [移动计算被框定为平台迁移，而非普通手机升级。#footnote[#link("https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/")[#text("<https://www.apple.com/newsroom/2007/01/09Apple-Reinvents-the-Phone-with-iPhone/>")]]],
  [2008],
  [App Store 上线并迅速超过 1000 万下载],
  [“App 经济”成为独立创业类别。#footnote[#link("https://www.apple.com/newsroom/2008/07/14iPhone-App-Store-Downloads-Top-10-Million-in-First-Weekend/")[#text("<https://www.apple.com/newsroom/2008/07/14iPhone-App-Store-Downloads-Top-10-Million-in-First-Weekend/>")]]],
  [2012],
  [AlexNet 突破],
  [深度学习把“AI”重新推回技术注意中心。#footnote[#link("https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks")[#text("<https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>")]]],
  [2016],
  [AlphaGo],
  [人机对决式基准叙事把 AI 推入全球公共讨论。#footnote[#link("https://deepmind.google/research/alphago/")[#text("<https://deepmind.google/research/alphago/>")]]],
  [2021],
  [Meta：元宇宙是移动互联网的继任者],
  [XR 从设备故事升级为文明尺度的平台故事。#footnote[#link("https://www.meta.com/metaverse/what-is-the-metaverse/?srsltid=AfmBOopt004Tx9udomjxJubI1cnVDe3nUMdtUrUwl59Drd_6HsxJjNEn")[#text("<https://www.meta.com/metaverse/what-is-the-metaverse/?srsltid=AfmBOopt004Tx9udomjxJubI1cnVDe3nUMdtUrUwl59Drd_6HsxJjNEn>")]]],
  [2022],
  [OpenAI：“Introducing ChatGPT”],
  [生成式 AI 获得大众市场交互入口。#footnote[#link("https://openai.com/index/chatgpt/")[#text("<https://openai.com/index/chatgpt/>")]]],
  [2023],
  [Apple：“第一台空间计算机”],
  [行业试图用新计算平台框架替换“VR 头显”框架。#footnote[#link("https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/")[#text("<https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/>")]]],
  [2024],
  [GM 停止资助 Cruise robotaxi],
  [自动驾驶叙事从“普遍且马上到来”转向经济性与受限部署。#footnote[#link("https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html")[#text("<https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html>")]]],
  [2025—2026],
  [“具身 AI”“物理 AI”主导机器人融资叙事],
  [AI 浪潮从数字输出转向在物理世界行动的机器。#footnote[#link("https://news.crunchbase.com/robotics/embodied-ai-fuels-record-funding-china-ipo-momentum-builds/")[#text("<https://news.crunchbase.com/robotics/embodied-ai-fuels-record-funding-china-ipo-momentum-builds/>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]],
)

=== IPO 与公开市场生命周期
代表性公司的公开市场轨迹进一步印证相同生命周期：

#table(
  columns: 3,
  [板块], [代表性公开市场路径], [历史解释],
  [PC/软件],
  [Microsoft 在 PC/互联网时期大涨，2000 年后长期停滞，再因云和 AI 重估],
  [同一家公司可以参与多轮算力浪潮，而非只有一次生命周期。#footnote[#link("https://companiesmarketcap.com/microsoft/marketcap/")[#text("<https://companiesmarketcap.com/microsoft/marketcap/>")]]],
  [互联网/云],
  [Amazon 在互联网泡沫后大跌，最终成为云时代最主要受益者之一],
  [泡沫失败不意味着底层技术失败。#footnote[#link("https://companiesmarketcap.com/amazon/marketcap/")[#text("<https://companiesmarketcap.com/amazon/marketcap/>")]]],
  [移动],
  [Apple 从 1990 年代较小的计算机厂商变成数万亿美元移动/平台公司],
  [价值可从通用计算迁移到一体化设备和生态控制。#footnote[#link("https://companiesmarketcap.com/apple/marketcap/")[#text("<https://companiesmarketcap.com/apple/marketcap/>")]]],
  [GPU/AI],
  [NVIDIA 从 1999 年不足 10 亿美元市值变成数万亿美元 AI 基础设施风向标],
  [专用部件可以演化为通用计算底座。#footnote[#link("https://companiesmarketcap.com/nvidia/marketcap/")[#text("<https://companiesmarketcap.com/nvidia/marketcap/>")]]],
  [EDA],
  [芯片复杂度上升，使 Synopsys 和 Cadence 价值显著增加],
  [计算的一般化可以反而提高专业工具需求。#footnote[#link("https://companiesmarketcap.com/synopsys/marketcap/")[#text("<https://companiesmarketcap.com/synopsys/marketcap/>")]；#link("https://companiesmarketcap.com/cadence-design-systems/marketcap/")[#text("<https://companiesmarketcap.com/cadence-design-systems/marketcap/>")]]],
  [SaaS],
  [Salesforce 从上市早期数十亿美元级成长到后续峰值的数千亿美元级],
  [云应用交付先成为公开市场类别，之后变成普通软件架构。#footnote[#link("https://companiesmarketcap.com/salesforce/marketcap/")[#text("<https://companiesmarketcap.com/salesforce/marketcap/>")]]],
  [自动驾驶/电动车叙事],
  [Tesla 从 2010 年代初数十亿美元升至 2021 年超过 1 万亿美元，并在 2024—2026 快照再度高位],
  [市场定价的不只是汽车，还包括自动驾驶、软件和机器人预期；无法从整体股权价值中干净拆分。#footnote[#link("https://companiesmarketcap.com/tesla/marketcap/")[#text("<https://companiesmarketcap.com/tesla/marketcap/>")]]],
)

== 跨板块比较与生命周期地图
综合证据可形成以下板块地图：

#table(
  columns: 6,
  [板块], [最初的强计算触发因素], [主要独立产业/叙事峰值], [被一般化或衰退的部分], [仍然稀缺的价值], [2026 年状态],
  [大型机/数据处理],
  [电子可靠性、内存、存储],
  [1960—1970年代],
  [“计算中心”作为普遍默认形态],
  [可靠性、兼容性、交易处理],
  [成熟专业市场],
  [小型机],
  [更廉价的 IC、交互式计算],
  [1970—1980年代],
  [产品类别本身],
  [工作负载迁移到服务器/PC],
  [已吸收],
  [PC 软件],
  [微处理器、本地存储和显示],
  [1980—1990年代],
  [“计算机化”作为差异化],
  [OS/应用生态、分发],
  [已一般化],
  [桌面出版],
  [GUI、字体、激光打印],
  [1980年代末—1990年代初],
  [品类名称],
  [创作工作流],
  [完全一般化],
  [CAD/CAE],
  [交互图形与 CPU],
  [1980—2000年代],
  [专用工作站硬件],
  [工程工作流、仿真],
  [持久],
  [EDA],
  [芯片复杂度与自动化],
  [1980年代至今],
  [部分单点工具],
  [验证、IP、流程锁定],
  [战略增长],
  [HPC],
  [先向量、后并行计算],
  [多次反复],
  [奇特架构的垄断],
  [前沿规模、互连、电力],
  [增长],
  [GPU],
  [3D 图形，随后可编程并行],
  [1999 游戏；2012 深度学习；2023—2026 AI],
  [“只用于图形”的身份],
  [软件生态与加速计算],
  [当前超级周期],
  [互联网/Web],
  [网络与廉价服务器],
  [1999—2000 资本峰值],
  [“互联网公司”标签],
  [平台、网络、分发],
  [一般化基础设施],
  [搜索/广告技术],
  [数据与集群计算],
  [2000—2010年代],
  [搜索作为独立新奇事物],
  [数据与网络效应],
  [成熟平台],
  [大数据],
  [商品集群与存储],
  [2011—2016 叙事峰值],
  [“大数据”标签与许多 Hadoop 栈],
  [托管数据平台],
  [已一般化],
  [云],
  [虚拟化、网络、自动化],
  [2010年代叙事峰值],
  [“cloud-first”的新奇性],
  [超大规模基础设施与生态],
  [公用设施/平台],
  [移动/App],
  [SoC、触摸、传感器、无线],
  [2008—2015],
  [“有一个 App”作为差异化],
  [OS、商店、分发、用户图谱],
  [已一般化],
  [IoT],
  [嵌入式计算与廉价连接],
  [约 2013—2018 叙事峰值],
  [泛消费 IoT 标签],
  [工业遥测与边缘],
  [已吸收],
  [符号主义 AI],
  [存储程序搜索],
  [1960年代],
  [广泛的早期承诺],
  [特定算法],
  [历史阶段],
  [专家系统],
  [更多内存/算力与编码知识],
  [1980年代],
  [独立专家系统产业],
  [嵌入普通软件的规则],
  [已吸收],
  [统计机器学习],
  [数据、廉价存储与 CPU],
  [2000年代],
  [“ML”作为许多产品中的专用卖点],
  [数据、模型、实验能力],
  [已一般化],
  [深度学习],
  [GPU 与大型数据集],
  [2012—2019],
  [一些定制感知栈],
  [模型、加速器、数据],
  [基础层],
  [生成式 AI/基础模型],
  [Transformer 与大规模加速器],
  [2023—2026，仍在发展],
  [早期套壳产品可能衰退],
  [算力、分发、工作流与数据],
  [扩张期],
  [工业机器人],
  [控制计算与传感器],
  [多次反复],
  [固定编程逐步减少],
  [可靠性、集成、硬件],
  [成熟增长],
  [具身 AI/人形机器人],
  [基础模型、视觉、仿真],
  [2025—2026 当前],
  [尚早],
  [物理可靠性与成本],
  [早期繁荣],
  [自动驾驶],
  [GPU/ML、传感器、地图],
  [2016—2021；2024/2026 反弹],
  [“通用自动驾驶马上到来”],
  [车队运营、安全、数据、规模],
  [选择性部署],
  [VR/元宇宙],
  [GPU、显示、追踪],
  [2016；2021],
  [元宇宙即将成为普遍平台的叙事],
  [游戏、MR、眼镜],
  [专业化/演进中],
  [加密挖矿],
  [PoW、GPU/ASIC],
  [2013、2017、2021 周期],
  [消费者挖矿],
  [ASIC 与能源效率],
  [专业化],
  [空间计算],
  [高分辨率显示、自研芯片、追踪],
  [2023—2024 发布浪潮],
  [尚难判断],
  [形态与生态],
  [新兴],
)

最强的普遍规律不是“每一轮算力繁荣都会崩盘”，而是：

#strong[当算力变得丰富，经济价值会迁移到算力无法商品化的东西上。]

历史上，新的稀缺互补物大致沿以下方向迁移：

机器 → 架构 → 软件 → 网络 → 数据 → 分发 → 能源/制造/物理执行

当前 AI 周期尤其有意思，因为它部分逆转了此前的方向。过去几十年，软件似乎一直在把硬件抽象隐藏；但大模型训练和推理重新让#strong[芯片、内存、网络、数据中心与电力];具有战略可见性。SIA 半导体数据、NVIDIA/TSMC 市值轨迹、超大规模云增长和 Stanford AI 投资数据都指向这一点。#footnote[#link("https://www.semiconductors.org/news-events/latest-news/")[#text("<https://www.semiconductors.org/news-events/latest-news/>")]；#link("https://companiesmarketcap.com/nvidia/marketcap/")[#text("<https://companiesmarketcap.com/nvidia/marketcap/>")]；#link("https://companiesmarketcap.com/tsmc/marketcap/")[#text("<https://companiesmarketcap.com/tsmc/marketcap/>")]；#link("https://www.microsoft.com/investor/reports/ar25/index.html")[#text("<https://www.microsoft.com/investor/reports/ar25/index.html>")]；#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]]

因此，2020 年代并不只是另一轮软件繁荣，更像一场#strong[全栈算力—资本周期]。

== 未来路径与历史结论
=== 一轮算力繁荣之后通常发生什么
历史记录给出了一条可用于诊断当代产业的顺序。

#strong[第一，能力跨过阈值。]

原先只能在实验室完成的任务，突然能以具有经济意义的规模运行。IBM 时代的企业数据处理、PC 上的桌面出版、GPU 深度学习和现代大语言模型推理都是例子。#footnote[#link("https://www.ibm.com/history/1401")[#text("<https://www.ibm.com/history/1401>")]；#link("https://www.computerhistory.org/timeline/1985/")[#text("<https://www.computerhistory.org/timeline/1985/>")]；#link("https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks")[#text("<https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>")]；#link("https://openai.com/index/chatgpt/")[#text("<https://openai.com/index/chatgpt/>")]]

#strong[第二，工作负载变成产品类别。]

企业明确销售“CAD”“桌面出版”“大数据”“云”“App”“VR”“AI”或“自动驾驶”，因为技术本身仍然稀缺且具有区分度。

#strong[第三，资本把前沿外推成普遍未来。]

此时最重要的错误通常不是技术完全虚假，而是投资者把本应持续 10—20 年的扩散过程压缩成 2—5 年的估值叙事。互联网公司、自动驾驶创业公司和元宇宙周期都是强例子。

#strong[第四，失败与整合暴露真正的互补资产。]

当所有人都能获得算力后，价值迁移到：

- 数据和专有反馈循环；
- 分发和已安装用户基础；
- 半导体与 IP 生态；
- 电力和数据中心场址；
- 监管许可；
- 制造能力；
- 可靠性与安全；
- 领域工作流整合。

#strong[第五，技术在语言中消失。]

今天没有普通企业会专门宣传自己“使用电子数据处理”“拥有网站”“使用数据库”“进行桌面出版”或“会计已经计算机化”，但这些曾经都是有意义的创新声明。

生成式 AI 很可能也会经历相同的语言磨损。未来“AI-powered”的区分度，可能像今天的“Internet-enabled”一样低。

=== 哪些当代板块最接近一般化
#strong[云。] 已经走得很远。使用量仍在增长，但云越来越像默认底层。Azure 超过 750 亿美元收入并在 FY2026 继续增长，清楚区分了“叙事成熟”和“使用成熟”。#footnote[#link("https://www.microsoft.com/investor/reports/ar25/index.html")[#text("<https://www.microsoft.com/investor/reports/ar25/index.html>")]；#link("https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance")[#text("<https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance>")]]

#strong[移动/App。] 已大体一般化。App Store 仍拥有巨大的用户与开发者经济，但“我们有 App”已经不再是战略差异。#footnote[#link("https://www.apple.com/newsroom/2026/01/2025-marked-a-record-breaking-year-for-apple-services/")[#text("<https://www.apple.com/newsroom/2026/01/2025-marked-a-record-breaking-year-for-apple-services/>")]]

#strong[基础机器学习。] 已进入搜索、广告、信息流、反欺诈、摄像头和企业软件等普通系统。

#strong[生成式 AI。] 已开始一般化，但仍处资本和基础设施扩张阶段。Stanford 的 2025 年投资数据与 2026 年采用数据，不支持把它描述为已完成的繁荣周期。#footnote[#link("https://hai.stanford.edu/ai-index/2026-ai-index-report")[#text("<https://hai.stanford.edu/ai-index/2026-ai-index-report>")]；#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]]

=== 哪些板块可能长期保持专业化
#strong[EDA] 可能是最清晰的案例。半导体越复杂，领域反而越专业；Cadence、Synopsys 的估值和近期 EDA 收入增长支持这一点。#footnote[#link("https://companiesmarketcap.com/synopsys/marketcap/")[#text("<https://companiesmarketcap.com/synopsys/marketcap/>")]；#link("https://companiesmarketcap.com/cadence-design-systems/marketcap/")[#text("<https://companiesmarketcap.com/cadence-design-systems/marketcap/>")]；#link("https://semiengineering.com/eda-revenue-up-12-7-apac-roars-back/")[#text("<https://semiengineering.com/eda-revenue-up-12-7-apac-roars-back/>")]]

#strong[HPC] 同样不断外移前沿，而不是消灭自己。2026 年 6 月 TOP500 已有五套 exaflop 级系统，说明当一个性能阈值在前沿变得普通，更高阈值又会成为差异。#footnote[#link("https://top500.org/")[#text("<https://top500.org/>")]]

#strong[工业机器人] 即使 AI 编程能力一般化，也很可能继续是专业集成产业，因为物理可靠性、机械集成、安全和服务不能被简化成一次模型推理。IFR 的庞大装机基础支持这一判断。#footnote[#link("https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years")[#text("<https://ifr.org/ifr-press-releases/news/global-robot-demand-in-factories-doubles-over-10-years>")]]

=== 哪些板块仍容易再次经历预期重置
#strong[具身/人形 AI。] 融资增长快于大规模、经济可靠的部署证据。Crunchbase 的 2026 年纪录融资，说明资本峰值可能正在商业化之前发生。#footnote[#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]；#link("https://news.crunchbase.com/robotics/embodied-ai-fuels-record-funding-china-ipo-momentum-builds/")[#text("<https://news.crunchbase.com/robotics/embodied-ai-fuels-record-funding-china-ipo-momentum-builds/>")]]

#strong[自动驾驶。] 实际 robotaxi 使用量已经足以证明“自动驾驶彻底失败”过于粗糙；但 GM/Cruise 的退缩也证明，某个运营商或地区的成功不会自动推广到所有公司和地理环境。#footnote[#link("https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html")[#text("<https://news.gm.com/home.detail.html/Pages/news/us/en/2024/dec/1210-gm.html>")]；#link("https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/")[#text("<https://waymo.com/blog/2026/02/waymo-raises-usd16-billion-investment-round/>")]]

#strong[空间计算。] 技术体验已经明显进步，但大众采用仍取决于形态、成本、电池、社会接受度和持续有用的场景。Apple Vision Pro 与 Meta 同时强调更轻的 AI 眼镜，说明最终产品形态尚未解决。#footnote[#link("https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/")[#text("<https://www.apple.com/newsroom/2023/06/introducing-apple-vision-pro/>")]；#link("https://www.meta.com/about/?srsltid=AfmBOorFkaiPu2OD62t2eaLWrRRv9y8-aTBeMCJsQoHvVXhJnRVyz_Gt")[#text("<https://www.meta.com/about/?srsltid=AfmBOorFkaiPu2OD62t2eaLWrRRv9y8-aTBeMCJsQoHvVXhJnRVyz_Gt>")]]

=== 最深层的历史模式
计算史最显眼的悖论是：

#quote(block: true)[
#strong[作为独立类别被“摧毁”得最彻底的产业，往往恰恰是赢得最彻底的产业。]
]

桌面出版消失在出版中。 \
网络消失在软件中。 \
数据库消失在应用中。 \
移动计算消失在普通消费者行为中。 \
云正在消失在 IT 架构中。 \
机器学习已经消失在搜索、广告、摄像头和推荐中。 \
生成式 AI 也可能以同样方式消失在知识工作中。

但前沿本身不会消失，只会迁移：

- 1955 年，前沿是能否接触到一台计算机；
- 1975 年，是能否接触小型机或超级计算机；
- 1985 年，是图形化交互计算；
- 1995 年，是网络接入与 Web 分发；
- 2005 年，是 Web 规模数据处理；
- 2010 年，是云与移动规模；
- 2015 年，是 GPU 训练的深度学习；
- 2020 年，是基础模型规模；
- 2026 年，稀缺性迁移到#strong[加速器集群、HBM 与先进半导体、电力、数据中心容量、推理经济性、可靠的自主物理执行，以及组织把越来越通用的模型真正整合进工作流的能力]。半导体销售、超大规模云增长、AI 投资和机器人融资都为这种迁移提供了同时期证据。#footnote[#link("https://www.semiconductors.org/news-events/latest-news/")[#text("<https://www.semiconductors.org/news-events/latest-news/>")]；#link("https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance")[#text("<https://www.microsoft.com/en-us/investor/earnings/fy-2026-q2/intelligent-cloud-performance>")]；#link("https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report")[#text("<https://hai.stanford.edu/news/inside-the-ai-index-12-takeaways-from-the-2026-report>")]；#link("https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/")[#text("<https://news.crunchbase.com/robotics/startup-venture-funding-surges-2026-data/>")]]

由此可提出一个分析任何当代“热门计算产业”时最有用的问题：

#quote(block: true)[
#strong[假设实现该能力所需的计算成本下降十倍乃至一百倍，这个产业会扩大十倍，还是这个产品将不再值得拥有独立品类？]
]

在需求具有弹性的领域——HPC、仿真、AI 训练/推理、芯片设计——产业往往会消耗新增算力并继续外推前沿。

在工作负载有限且已标准化的领域——文档排版、普通企业数据处理、通用 App 功能——能力更容易商品化并消失进平台。

在物理世界构成主要约束的领域——机器人、自动驾驶、AR——算力进步可能反复触发投资浪潮，却无法同时消除那些变化更慢的瓶颈。

当计算本身属于经济机制的一部分——例如工作量证明挖矿——它可能演变成专业资源产业，也可能像 Ethereum 在 2022 年所展示的那样，被根本不同的架构替代。#footnote[#link("https://ethereum.org/roadmap/merge/")[#text("<https://ethereum.org/roadmap/merge/>")]]

因此，最可靠的历史信号并不是“媒体关注是否正在达到峰值”，而是：#strong[用户何时不再谈论这项技术，并开始默认每个严肃产品都理应拥有它。]

== 用于判断未来科技浪潮的指标框架
把以上历史压缩成一套可操作的观察框架，可以分别追踪六组变量，而不是把所有东西压成一条“热度曲线”。

#table(
  columns: 3,
  [维度], [可观察指标], [关键问题],
  [技术可行性],
  [基准性能、单位能耗、延迟、可靠性、模型/系统能力边界],
  [是否刚跨过“能做”的阈值，还是只在演示环境有效？],
  [单位经济性],
  [每次任务成本、硬件折旧、维护、人工替代、毛利、回收期],
  [技术可行是否已经转化为客户可接受的经济性？],
  [实际采用],
  [装机量、付费用户、任务次数、真实收入、续费、部署范围],
  [使用曲线是否独立于媒体热度继续增长？],
  [资本与估值],
  [VC、企业资本开支、并购、上市公司估值、估值/收入倍数],
  [资本是否把长期扩散提前压缩进当前价格？],
  [互补瓶颈],
  [数据、分发、能源、制造、传感器、执行器、安全、监管、工作流],
  [算力下降后，新的决定性稀缺资源是什么？],
  [一般化程度],
  [标准、开源、API 化、平台内置、品类名称淡出、价格下降],
  [能力是在形成独立产业，还是已变成基础功能？],
)

还可以用四条曲线判断一个板块所处阶段：

+ #strong[技术能力曲线];通常先上升；
+ #strong[媒体与融资曲线];常在技术演示之后迅速过冲；
+ #strong[实际采用和收入曲线];在物理产业中往往明显滞后；
+ #strong[独立品类价值曲线];可能先涨后跌，即使总使用量仍持续上升。

对自动驾驶、机器人、医疗设备等物理世界产业，还必须额外追踪：每小时人工接管或故障数、运行设计域、维护频率、保险与责任、认证周期、车队/工厂运营强度和真实全生命周期成本。它们解释了为什么同样由 AI 和算力推动，纯软件产品可以按周迭代，而物理系统的扩散常按十年计算。
