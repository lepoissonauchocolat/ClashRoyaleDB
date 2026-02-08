# ClashRoyaleDB

This project involves the design, conceptualization, and implementation of a relational database system for the mobile game **Clash Royale**. The system manages players, card collections, battle decks, combat mechanics, clan interactions, and the in-game economy (chests, gold, XP).

##  Functional Description
The database is designed to handle the following core game mechanics based on the system analysis:

### 1. Player & Progression  
* **Profile Management:** Tracks player XP, trophies, total victories, and current level.
* **Leveling:** Players gain XP by winning matches or upgrading cards. Reaching an XP threshold increases the player level.
* **Economy:** Manages Gold and specific Card Points required for upgrades.

### 2. Cards & Decks
* **Collection:** Players collect cards via chests. Cards are categorized by rarity (Champion, Legendary, Epic, Rare, Common).
* **Card Stats:** Each card has specific attributes: HP, Elixir Cost, Hit Speed, Damage, and Favorite Target (Ground, Building, All).
* **Upgrades:** Cards can be leveled up (Levels 1-16) using specific card points and gold defined in leveling rules.
* **Deck Building:**
    * Players can save up to 10 decks.
    * A valid "Complete Deck" must contain exactly 8 cards.
    * A deck can contain a maximum of 1 Champion card.
    * One deck is designated as the "Main Deck" for combat.

### 3. Combat System
* **Match Logic:** Players battle for "Crown Towers". The side destroying the most towers wins.
* **Rewards:**
    * **Winners:** Gain trophies and receive a Chest (if slots available).
    * **Losers:** Lose trophies.
* **Chest Mechanics:** Max 4 chests earned per day. Chests contain Gold, Card Points, Banners, or Emotes.

### 4. Clan System
* **Membership:** A clan can have a maximum of 50 members.
* **Donations:**
    * Players can request cards (1 request per day).
    * A standard request asks for 40 points of a specific card.
    * Clanmates can donate up to 8 points per request, transferring card points from the donor to the receiver.

## Technical Implementation

### Database Structure
The project includes the full design lifecycle:
1.  **Functional Analysis:** Definition of needs and entities.
2.  **Entity-Relationship Diagram (ERD):** Conceptual modeling.
3.  **Relational Model:** Normalized database schema (3NF).
4.  **SQL Implementation:** * Database creation (`.mdf`, `.ldf`).
    * Stored Procedures (Insert, Update, Delete).
    * Triggers (Business rule enforcement).
    * Views and Complex Queries.

### Technologies Used
* **DBMS:** SQL Server 2022

* **Language:** SQL, T-SQL
