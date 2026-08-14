# 🕐 10 Second Madness

A fast-paced minigame collection built in **Godot 4** where every challenge lasts just 10 seconds. Complete minigames, survive the timer, and don't lose your lives!

---

## 🎮 About

10 Second Madness is a collection of quick minigames where the player must complete each objective before the 10-second timer runs out. Fail and you lose a life. Complete enough minigames and you reach the finish screen.

---

## 🕹️ How to Play

- Each minigame gives you **10 seconds** to complete an objective
- **Complete the objective** → move to the next minigame
- **Run out of time** → lose a life and go back to the intermission
- Complete enough minigames to reach the **done screen** and win

---

## 🗂️ Minigames

| Minigame | Objective |
|---|---|
| ** madness orb Collector** | Collect 2 madness orbs before the timer runs out |
| **Space Shooter** | Survive enemy ships and shoot them down |
| *(more coming soon)* | |

---

## 🛠️ Built With

- **Godot 4** — Game engine
- **GDScript** — Scripting language
- **Godot AnimationPlayer** — Cutscenes and animations
- **Godot Area2D / CharacterBody2D** — Physics and collision

---

## 📁 Project Structure

```
10-Second-Madness/
├── scenes/
│   ├── timer_screen.tscn    # Intermission between minigames
│   ├── done_screen.tscn     # Win screen
│   ├── winscreen.tscn       # Space shooter scene
│   └── ...
├── characters/
│   ├── player_ship.tscn     # Player ship
│   ├── enemy_ship.tscn      # Enemy ship
│   ├── projectile.tscn      # Player projectile
│   └── ...
├── scripts/
│   └── Global.gd            # Autoload — tracks lives, minigames done
└── README.md
```

---

## ⚙️ Global State

The game uses a **Global autoload singleton** to track persistent state across scenes:

```gdscript
Global.lives          # how many lives the player has left
Global.minigames_done # how many minigames have been completed
```

---

## 🚀 How to Run

1. Clone the repo:
```bash
git clone https://github.com/Nikolaossamaras/10-Second-Madness.git
```
2. Open **Godot 4**
3. Click **Import** and select the project folder
4. Hit **Play** ▶️
   or visit my Itch.io page for [10 second madness](https://scammaras.itch.io/10-second-madness)

