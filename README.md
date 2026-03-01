# SQL--video-game-sales-analysis
🎮 Video Game Sales SQL Project

## 📌 Project Overview

This project analyzes **video game sales data** using **SQL** to extract actionable insights about market trends, regional preferences, publisher performance, and success factors in the gaming industry. The dataset includes sales figures across North America (NA), Japan (JP), Europe (PAL), and other regions, along with critic scores and release information.

---

Dataset used

-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/vg_sales.csv">RAW.videogame-sales</a>

---

## 🛢️ Database & Tools

| Component | Details |
|-----------|---------|
| **Database** | MySQL 8.0 |
| **Tool Used** | MySQL Workbench |
| **Techniques** | Data cleaning, CTEs, aggregations, date functions, filtering, grouping, window functions, CASE statements |

---

### 🎯 Objectives
- Identify high-growth and declining game genres
- Analyze regional gaming preferences
- Evaluate publisher performance across genres and regions
- Determine which consoles produce the most successful games
- Build predictive insights for game success factors

---

## 📊 Key Business Questions Answered

| # | Question | SQL File |
|:--:|----------|----------|
| 1 | Which genres have highest success rates? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/01_genre_sales.sql">SQL-query</a> |
| 2 | Market and sales analysis? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/02_market_and_sales_analysis.sql">SQL-query</a> |
| 3 | How do regional sales (NA, EU, JP, Other) differ by genre? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/03_regional_sales.sql">SQL-query</a> |
| 4 | What type of console that has most played by genre? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/04_type_of_console.sql">SQL-query</a> |
| 5 | How games sell over time? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/05_game_sell_overtime.sql">SQL-query</a> |
| 6 | Which publishers consistently produce the highest-selling games? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/06_publishers_highest_selling_games.sql">SQL-query</a> |
| 7 | Top publishers by genre? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/07_publishers_by_genre.sql">SQL-query</a> |
| 8 | Top publishers in each region? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/08_top_publisher.sql">SQL-query</a> |
| 9 | Publisher dominance analysis? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/09_publisher_dominance.sql">SQL-query</a> |
| 10 | Which genres have highest success rates? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/10_high_success_rate.sql">SQL-query</a> |
| 11 | Which publishers have best track record? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/11_best_track_records.sql">SQL-query</a> |
| 12 | Which consoles produce most hits? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/12_top_console.sql">SQL-query</a>|
| 13 | Quick prediction analysis? |-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/13_quick_prediction.sql">SQL-query</a> |


---

## 💡 Key Insights

### 🏆 Top 5 Publishers in Action Genre by Total Sales

| Rank | Publisher | Genre | Number of Games | Total Sales (Millions) | Avg Sales per Game |
|:----:|-----------|:-----:|:---------------:|:----------------------:|:------------------:|
| **1** 🥇 | **Rockstar Games** | **Action** | **17** | **148.96M** | **8.76M** |
| **2** 🥈 | **Ubisoft** | **Action** | **35** | **72.96M** | **2.08M** |
| **3** 🥉 | **Capcom** | **Action** | **38** | **31.63M** | **0.83M** |
| 4 | Activision | Action | 15 | 24.60M | 1.64M |
| 5 | Eidos Interactive | Action | 11 | 23.11M | 2.10M |

---

🎯 Key Strategic Insights
1. 🟪 Rockstar Games - The Action King
Controls nearly 50% (49.5%) of the Action genre market among top publishers

Only 17 games generated 148.96M in sales - quality over quantity strategy

Avg 8.76M per game - 4.2x higher than #2 publisher (Ubisoft)

Franchise power: Grand Theft Auto, Red Dead Redemption, Max Payne

Key takeaway: Rockstar proves that premium quality and brand loyalty outperform volume

2. 🟥 Ubisoft - Volume Player
35 games (most in top 5) but only 72.96M total sales

Avg 2.08M per game - respectable but far behind Rockstar

Franchises: Assassin's Creed, Far Cry, Watch Dogs

Key takeaway: Ubisoft succeeds through annual releases and franchise fatigue - quantity over quality

3. 🟧 Capcom - The Underperformer
38 games (most in top 5) but only 31.63M total sales

Avg 0.83M per game - lowest in top 5

Franchises: Resident Evil, Devil May Cry, Street Fighter (though Street Fighter is Fighting genre)

Key takeaway: Despite iconic franchises, Capcom struggles to convert brand recognition to sales in Action genre

Possible reason: Many games are niche or cult classics rather than mainstream hits

4. 🟨 Activision - The Shooter Giant in Action
Only 15 games generated 24.60M (1.64M avg)

Known primarily for Shooter genre (Call of Duty)

Action games appear to be secondary focus for them

Key takeaway: Activision's Action titles are opportunistic rather than strategic

5. 🟨 Eidos Interactive - The Dark Horse
11 games (fewest in top 5) with 23.11M total

Avg 2.10M per game - second highest avg after Rockstar

Franchises: Tomb Raider, Deus Ex

Key takeaway: Eidos proves that focused, quality franchises can compete with giants

---

### 🌍 Regional Preferences by Genre

| Genre | NA Sales (M) | JP Sales (M) | PAL Sales (M) | Other Sales (M) | Primary Market |
|-------|:------------:|:------------:|:-------------:|:---------------:|----------------|
| **Shooter** | **301.93M** | 22.41M | **211.24M** | 75.68M | 🟪 **NA/PAL Dominant** |
| **Action** | **247.35M** | 39.46M | **186.72M** | 62.23M | 🟪 **NA/PAL Dominant** |
| **Sports** | 137.72M | 31.35M | **168.15M** | 58.65M | 🟪 **PAL Strong** |
| **Role-Playing** | 103.72M | **47.66M** | 59.15M | 22.72M | 🟥 **JP Strong** |
| **Racing** | 85.12M | 11.79M | 84.89M | 27.58M | 🟨 **NA/PAL Balanced** |

## 💡 Regional Sales Insights

### 🥇 **Shooter Genre - The Western Dominance**

| Region | Sales | Market Share | vs Global Avg |
|--------|:-----:|:------------:|:-------------:|
| **NA** | 301.93M | **49.4%** | 🟪 **+49% above avg** |
| **PAL** | 211.24M | **34.5%** | 🟪 **+34% above avg** |
| **Other** | 75.68M | 12.4% | 🟨 Average |
| **JP** | 22.41M | 3.7% | 🟥 **-63% below avg** |

---

## 💡 Publisher Genre Performance Insights

### 🏆 **Top Publishers by Total Sales**

| Rank | Publisher | Primary Genre | Total Sales | Games | Avg per Game | Grade |
|:----:|-----------|---------------|:-----------:|:-----:|:------------:|-------|
| **1** 🥇 | **Activision** | Shooter | **260.27M** | 46 | 5.66M | 🟪 **ELITE** |
| **2** 🥈 | **EA Sports** | Sports | **161.58M** | 63 | 2.56M | 🟥 STRONG |
| **3** 🥉 | **Rockstar Games** | Action | **148.96M** | 17 | **8.76M** | 🟪 **ELITE** |
| 4 | **Electronic Arts** | Shooter | 136.17M | 60 | 2.27M | 🟥 STRONG |
| 5 | **Electronic Arts** | Racing | 81.70M | 46 | 1.78M | 🟨 AVERAGE |
| 6 | **Ubisoft** | Action | 72.96M | 35 | 2.08M | 🟨 AVERAGE |
| 7 | **Bethesda Softworks** | RPG | 58.50M | 16 | 3.66M | 🟥 GOOD |
| 8 | **Konami** | Sports | 50.75M | 41 | 1.24M | 🟧 LOW |
| 9 | **THQ** | Fighting | 48.67M | 28 | 1.74M | 🟧 LOW |
| 10 | **2K Sports** | Sports | 43.56M | 26 | 1.68M | 🟧 LOW |


## 🔥 **Key Insights by Publisher**

### 🥇 **Activision - The Shooter King**
- **260.27M** from Shooter genre alone
- **NA dominant** (130.52M) with strong PAL presence (90.30M)
- **JP market weak** (5.98M) - only 2.3% of sales
- **5.66M avg per game** - excellent efficiency

### 🥈 **EA Sports - The Sports Empire**
- **161.58M** from Sports genre
- **PAL dominant** (86.17M) - Europe loves football
- **JP almost non-existent** (2.88M) - 1.8% of sales
- **63 games** - volume strategy

### 🥉 **Rockstar Games - The Quality King**
- **148.96M** from Action genre
- **Only 17 games** - most efficient publisher
- **8.76M avg per game** - **#1 in efficiency**
- **Highest critic score** (8.2) - quality leader
- Balanced NA/PAL split

### 4️⃣ **Electronic Arts (Shooter) - The Competitor**
- **136.17M** from Shooter genre
- Trails Activision by **124.1M** in Shooter
- **60 games** vs Activision's 46 - less efficient
- **2.27M avg** vs Activision's 5.66M

### 5️⃣ **Electronic Arts (Racing) - The Racing Power**
- **81.70M** from Racing genre
- Balanced NA/PAL split
- **1.78M avg** - moderate efficiency



### 🏆 Top Publishers Consistently Producing High-Selling Games

| Rank | Publisher | Total Sales (Millions) | Market Share | Key Strength |
|:----:|-----------|:----------------------:|:------------:|--------------|
| **1** 🥇 | **Activision** | **334.32M** | **27.7%** | 🎯 Shooter Dominance |
| **2** 🥈 | **Electronic Arts** | **330.73M** | **27.4%** | 🎮 Multi-Genre Power |
| **3** 🥉 | **Rockstar Games** | **190.27M** | **15.8%** | ⭐ Quality Over Quantity |
| 4 | **Ubisoft** | 186.21M | 15.4% | 📦 Volume Strategy |
| 5 | **EA Sports** | 165.84M | 13.7% | ⚽ Sports Empire |
| | **TOTAL TOP 5** | **1,207.37M** | **100%** | |


### 🥇 **Activision - The Shooter King**

**📌 Key Insight:** Activision edges out EA by just **3.59M** to claim the top spot. Their **Shooter dominance** through the Call of Duty franchise is unmatched, generating **260.27M from Shooter genre alone**. With **46 games averaging 5.66M per title**, they've perfected the annual release model. The **NA market** (130.52M) is their stronghold, but they've built significant **PAL presence** (90.30M). The **JP market remains virtually untapped** (5.98M, only 1.8% of sales) - a massive growth opportunity.

### 🥈 **Electronic Arts - The Multi-Genre Powerhouse**

**📌 Key Insight:** EA trails Activision by a razor-thin **3.59M** - the closest competition in the top 5. Unlike Activision's single-genre focus, EA employs a **diversified portfolio strategy** across Shooter (136.17M), Racing (81.70M), and Action genres. This multi-genre approach provides **stability and risk mitigation** - if one genre declines, others compensate. Their **PAL strength** (49.69M in Shooter, 32.94M in Racing) balances NA dominance. However, their **2.27M avg per game** lags behind Activision's 5.66M, indicating room for efficiency improvement.

### 🥉 **Rockstar Games - The Quality King**


**📌 Key Insight:** Rockstar achieves #3 ranking with only **~17 games** - an astonishing feat that redefines industry efficiency. Their **11.19M avg per game** is:
- **4.9x higher** than Ubisoft (1.86M)
- **2.1x higher** than EA (2.27M)
- **2.0x higher** than Activision (5.66M)

The **GTA and Red Dead franchises** prove that **quality over quantity** wins. With **148.96M from Action genre alone**, they've mastered the formula. Highest **critic scores (8.2)** confirm their quality leadership. Their **NA/PAL balance** (68.32M / 57.13M) shows broad appeal.

---

### 🎮 Top Consoles by Average Sales

| Rank | Console | Games | Avg Sales (M) | Max Sales (M) | Avg Score | Performance Grade |
|:----:|---------|:-----:|:-------------:|:-------------:|:---------:|------------------|
| **1** 🥇 | **Xbox One** | 28 | **2.386M** | 8.72M | 3.9 | 🟪 **TOP PERFORMER** |
| **2** 🥈 | **PS4** | 240 | **1.759M** | 19.39M | 2.2 | 🟥 VERY HIGH |
| **3** 🥉 | **PS2** | 238 | **1.562M** | 16.15M | 3.2 | 🟥 HIGH |
| 4 | **Xbox 360** | 343 | 1.533M | 15.86M | 5.8 | 🟨 AVERAGE |
| 5 | **PS3** | 419 | 1.361M | 20.32M | 4.7 | 🟨 AVERAGE |

**🎮 Console Insights:**

### 🥇 **Xbox One - The Efficiency King**

**📌 Key Insight:** Xbox One takes the #1 spot with only **28 games** but the highest **average sales per game at 2.386M**. This indicates a **focused, quality library** rather than volume-based strategy. Despite lower critic scores (3.9), the console achieved strong sales per title, suggesting **commercial success over critical acclaim**.

### 🥈 **PS4 - The Volume Leader**


**📌 Key Insight:** PS4 has a massive library of **240 games** with solid **1.759M average sales**. The **19.39M max sales** indicates at least one blockbuster title performed exceptionally well. However, the **low critic score (2.2)** is surprising - this could indicate a different scoring scale or that commercial success didn't require critical acclaim.

### 🥉 **PS2 - The Legacy Champion**


**📌 Key Insight:** PS2 proves its legendary status with **238 games** and **1.562M average sales**. Despite being an older console, it outperforms Xbox 360 and PS3 in average sales per game. The **16.15M max sales** shows it had major hits during its lifecycle.

---

### 📈 Genre Success Rates

### 📈 Genre Success Rates Analysis

| Rank | Genre | Total Games | Successful Games | Success Rate | Avg Sales (M) | Avg Score | Performance Grade |
|:----:|-------|:-----------:|:----------------:|:------------:|:-------------:|:---------:|------------------|
| **1** 🥇 | **Shooter** | 309 | 148 | **47.9%** | 1.977M | 4.8 | 🟪 **ELITE** |
| **2** 🥈 | **Sports** | 242 | 111 | **45.9%** | 1.635M | 3.7 | 🟪 EXCEPTIONAL |
| **3** 🥉 | **Racing** | 171 | 78 | **45.6%** | 1.224M | 4.7 | 🟪 EXCEPTIONAL |
| 4 | **Action-Adventure** | 66 | 25 | **37.9%** | 1.390M | 3.9 | 🟥 HIGH |
| 5 | **Action** | 399 | 131 | **32.8%** | 1.343M | 3.7 | 🟨 AVERAGE |



**📈 Success Rate Insights:**

- 🎯 **Shooter** leads with **47.9% success rate** - **safest investment** with highest sales (1.977M avg)
- ⚽ **Sports** follows at **45.9%** - **commercial powerhouse** despite lowest critic scores (3.7)
- 🏎️ **Racing** achieves **45.6%** - **quality niche** with strong critic scores (4.7)
- 🎬 **Action-Adventure** hits **37.9%** - **high-risk, high-reward** with limited games (66)
- 💥 **Action** has **most games (399)** but only **32.8% success rate** - **crowded market, low hit ratio**

---

**📊 Key Takeaways:**
| Genre | Success Rate | Verdict |
|-------|:------------:|---------|
| **Shooter** | 47.9% | 🟪 **SAFEST BET** |
| **Sports** | 45.9% | 🟥 **PROVEN WINNER** |
| **Racing** | 45.6% | 🟥 **RELIABLE NICHE** |
| **Action-Adventure** | 37.9% | 🟨 **SELECTIVE INVEST** |
| **Action** | 32.8% | 🟧 **OVERCROWDED** |

---

### 🏆 Publisher Track Record

| Rank | Publisher | Games | Avg Sales (M) | Avg Score | Success Level |
|:----:|-----------|:-----:|:-------------:|:---------:|---------------|
| **1** 🥇 | **Rockstar Games** | 30 | **6.342M** | **7.6** | 🟪 **BLOCKBUSTER** |
| **2** 🥈 | **Activision** | 89 | **3.756M** | 5.3 | 🟪 **BLOCKBUSTER** |
| **3** 🥉 | **EA Sports** | 68 | **2.439M** | 4.9 | 🟪 **BLOCKBUSTER** |
| 4 | **Microsoft Game Studios** | 19 | **2.226M** | **7.6** | 🟪 **BLOCKBUSTER** |
| 5 | **Bethesda Softworks** | 38 | **2.190M** | 5.2 | 🟪 **BLOCKBUSTER** |

### 🏆 Publisher Track Record

| Rank | Publisher | Games | Avg Sales (M) | Avg Score | Success Level |
|:----:|-----------|:-----:|:-------------:|:---------:|---------------|
| **1** 🥇 | **Rockstar Games** | 30 | **6.342M** | **7.6** | 🟪 **BLOCKBUSTER** |
| **2** 🥈 | **Activision** | 89 | **3.756M** | 5.3 | 🟪 **BLOCKBUSTER** |
| **3** 🥉 | **EA Sports** | 68 | **2.439M** | 4.9 | 🟪 **BLOCKBUSTER** |
| 4 | **Microsoft Game Studios** | 19 | **2.226M** | **7.6** | 🟪 **BLOCKBUSTER** |
| 5 | **Bethesda Softworks** | 38 | **2.190M** | 5.2 | 🟪 **BLOCKBUSTER** |

---

## 📈 Publisher Track Record Insights

- 🥇 **Rockstar Games leads** with **6.342M avg sales** and **7.6 critic score** - most efficient publisher in industry
- 🎯 **All 5 publishers** qualify as **"Blockbuster"** (>2M avg sales) - top tier consistency
- 📦 **Activision** proves **volume works** with 89 games at **3.756M avg** - reliable blockbuster machine
- ⚽ **EA Sports** dominates **sports niche** with **2.439M avg** despite lowest scores (4.9)
- 🎮 **Microsoft Game Studios** is the **quality specialist** - only 19 games but **2.226M avg** and **7.6 score**
- ⚔️ **Bethesda** rounds out top 5 as **RPG powerhouse** with **2.190M avg** from 38 games

---

### 📊 **Efficiency vs Quality Matrix**

| Publisher | Efficiency (Avg Sales) | Quality (Avg Score) | Verdict |
|-----------|:----------------------:|:--------------------:|---------|
| **Rockstar** | 🟪 **ELITE** (6.342M) | 🟪 **ELITE** (7.6) | 🏆 **BEST OVERALL** |
| **Microsoft** | 🟨 GOOD (2.226M) | 🟪 **ELITE** (7.6) | 🎯 **Quality King** |
| **Activision** | 🟥 HIGH (3.756M) | 🟨 AVG (5.3) | 📦 **Volume Champion** |
| **Bethesda** | 🟨 GOOD (2.190M) | 🟨 AVG (5.2) | ⚔️ **RPG Specialist** |
| **EA Sports** | 🟨 GOOD (2.439M) | 🟧 LOW (4.9) | ⚽ **Niche Dominator** |

---

## 🔑 **Key Takeaways**

- **Rockstar Games** is the **gold standard** - highest sales, highest quality, fewest games
- **Microsoft** proves **quality over quantity** - top critic scores with minimal releases
- **Activision** shows **consistency at scale** - nearly 90 games with strong averages
- **EA Sports** demonstrates **niche dominance** - owns sports market despite lower scores
- **Bethesda** is the **reliable RPG machine** - steady performer across 38 games

---

### 🔮 Predictive Success Factors

| Critic Category | Genre | Publisher | Console | Games | Avg Sales (M) | Success Probability |
|-----------------|-------|-----------|---------|:-----:|:-------------:|---------------------|
| **Low Score** | Action | **Rockstar Games** | PS2 | 3 | **10.930M** | 🟪 **VERY HIGH** |
| **Low Score** | Sports | **Electronic Arts** | PS4 | 2 | **10.045M** | 🟪 **VERY HIGH** |
| **Low Score** | Action | **Rockstar Games** | PS3 | 4 | **9.660M** | 🟪 **VERY HIGH** |
| **Low Score** | Shooter | **Activision** | X360 | 10 | **8.735M** | 🟪 **VERY HIGH** |
| **Low Score** | Shooter | **Activision** | PS4 | 9 | **7.786M** | 🟪 **VERY HIGH** |

---

## 📈 Predictive Insights

### 🥇 **Rockstar Games + Action + PlayStation = Gold**
- **PS2:** 3 games → **10.93M avg** - legacy dominance
- **PS3:** 4 games → **9.66M avg** - continued success
- **Formula:** Action genre + Rockstar + Sony consoles = **guaranteed blockbuster**

### 🥈 **EA + Sports + PS4 = Commercial Machine**
- **2 games** → **10.045M avg** - FIFA effect
- **Low scores don't matter** - sports fans buy regardless
- **PS4** is the **sports gaming console of choice**

### 🥉 **Activision + Shooter + Any Console = Consistency**
- **X360:** 10 games → **8.735M avg**
- **PS4:** 9 games → **7.786M avg**
- **Call of Duty effect** - works on any platform
- **17% higher on X360** - Microsoft partnership advantage

---

🛠️ Full Data analysis code (SQL)

-<a href="https://github.com/Donovandonz/SQL--video-game-sales-analysis/blob/main/vg_sales_db_portolio%20SQL.sql">Videogame-sales-analysis</a>



