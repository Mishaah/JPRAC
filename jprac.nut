ClearGameEventCallbacks()

enum teles {
    ON,
    TIMED,
    ROUND_RESTART,
    OFF,
}
enum teleLocations {
    RIGHT_SPAWN,
    LEFT_SPAWN,
    MID_FORWARD,
    SECOND_FORWARD,
    OUR_LOBBY,
    OUR_CHOKE,
    THEIR_CHOKE,
    THEIR_LOBBY,
    CUSTOM_1,
    CUSTOM_2,
    CUSTOM_3,
    CUSTOM_4,
    OPTIONS_MENU,
}
enum teleObjectives {
    REACH,
    KILL,
    CAP,
    NONE,
}
enum teleTimerControls {
    PLUS_TEN,
    PLUS_ONE,
    MINUS_ONE,
    MINUS_FIVE,
}
enum objectiveResults {
    RESET,
    PASS,
    FAIL,
}
enum health {
    ON_TELE,
    NEGATE_DAMAGE,
    PREVENT_DAMAGE,
    OFF,
}
enum healthRegen {
    FIVE_HUNDRED,
    HUNDRED_FIFTY,
    HUNDRED,
    FIFTY
}
enum healthRegenAdd {
    PLUS_FIFTY,
    PLUS_TEN
    MINUS_TEN,
    MINUS_FIFTY,
}
enum healing {
    ON_TELE,
    UNTIL_JUMP,
    INFINITE,
    OFF,
}
enum healingType {
    MEDI_GUN,
    KRITZKRIEG,
    QUICK_FIX,
    VACCINATOR,
}
enum healingTimerControls {
    PLUS_TEN,
    PLUS_ONE,
    MINUS_ONE,
    MINUS_FIVE,
}
enum uber {
    ON_TELE,
    UNTIL_JUMP,
    INFINITE,
    OFF,
}
enum uberTimerControls {
    PLUS_EIGHT,
    PLUS_ONE,
    MINUS_ONE,
    MINUS_FIVE,
}
enum ammo {
    ON_TELE,
    ON_ATTACK,
    INFINITE,
    OFF,
}
enum ammoType {
    TOTAL,
    RESERVE,
    CLIP,
    CLIP_ONLY,
}
enum ammoRegen {
    HUNDRED,
    SEVENTY_FIVE,
    FIFTY,
    TWENTY_FIVE,
}
enum ammoRegenAdd {
    PLUS_FOURTH,
    PLUS_SIXTEENTH,
    MINUS_SIXTEENTH,
    MINUS_EIGHTH,
}
enum bots {
    NORMAL,
    HARD,
    EXPERT,
    OFF,
}
enum botSetups {
    OUR_SECOND,
    MIDDLE,
    SECOND,
    LAST,
    MIDDLE_ROLLOUT_1,
    MIDDLE_ROLLOUT_2,
    MIDDLE_ROLLOUT_3,
    MIDDLE_ROLLOUT_4,
    CUSTOM_1,
    CUSTOM_2,
    CUSTOM_3,
    CUSTOM_4,
}
enum caps {
    DEFAULT,
    OVERRIDE,
}
enum capsAdd {
    PLUS_ONE,
    MINUS_ONE,
}
enum locks {
    DEFAULT,
    ALL,
    ATTACK,
    DEFEND,
}
enum buildings {
    SENTRY,
    DISPENSER,
    TELE_ENTRANCE,
    TELE_EXIT,
}
enum mercs {
    UNDEFINED,
    SCOUT,
    SNIPER,
    SOLDIER,
    DEMOMAN,
    MEDIC,
    HEAVYWEAPONS,
    PYRO,
    SPY,
    ENGINEER,
    CIVILIAN,
    COUNT_ALL,
    RANDOM,
}
enum teams {
    SPECTATOR,
    PVE_DEFENDERS,
    RED,
    BLUE,
}
enum optionsGroupTypes{
    RADIO,
    CHECK,
    CLICK,
}

local scripts = ["jprac2"]

function IncludeScripts(toIncludeScripts)
{
    foreach(script in toIncludeScripts)
    {
        IncludeScript(script)
    }
}

// TABLE REGION

local gamemodes = {}
gamemodes.koth                      <- {}
gamemodes.koth.controls                 <- [[0],[2],[3]]
gamemodes.koth.locks                    <- {}
gamemodes.koth.locks.def                    <- { lock = [0]}
gamemodes.koth.locks.all                    <- { lock = [1]}
gamemodes.koth.locks.defend                 <- { lock = [0]}
gamemodes.koth.locks.attack                 <- { lock = [1]}

gamemodes.cp                        <- {}
gamemodes.cp.controls                   <- [[3,3,0,2,2],[3,3,3,3,2],[3,3,3,2,2],[3,3,2,2,2],[3,2,2,2,2]]
gamemodes.cp.locks                      <- {}
gamemodes.cp.locks.def                      <- [[1,1,0,1,1],[1,1,1,0,0],[1,1,0,0,1],[1,0,0,1,1],[0,0,1,1,1]]
gamemodes.cp.locks.all                      <- [[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,1]]
gamemodes.cp.locks.defend                   <- [[1,1,0,1,1],[1,1,1,1,0],[1,1,1,0,1],[1,1,0,1,1],[1,0,1,1,1]]
gamemodes.cp.locks.attack                   <- [[1,1,0,1,1],[1,1,1,0,1],[1,1,0,1,1],[1,0,1,1,1],[0,1,1,1,1]]

gamemodes.cp3                       <- {}
gamemodes.cp3.controls                  <- [[2,2,2],[3,2,2],[3,3,2]]
gamemodes.cp3.locks                     <- {}
gamemodes.cp3.locks.def                     <- [[0,0,1],[0,0,1],[0,0,0]]
gamemodes.cp3.locks.all                     <- [[1,1,1],[1,1,1],[1,1,1]]
gamemodes.cp3.locks.defend                  <- [[0,0,1],[0,0,1],[0,0,0]]
gamemodes.cp3.locks.attack                  <- [[0,0,1],[0,0,1],[0,0,0]]


local maps = {}

// MAP DATA: cp_process_f12
maps.cp_process_f12                                     <- {}
maps.cp_process_f12.name                                    <- "cp_process_f12"
maps.cp_process_f12.gamemode                                <- maps.cp_process_f12.name.slice(0, maps.cp_process_f12.name.find("_"))
maps.cp_process_f12.teles                                   <- {}
maps.cp_process_f12.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(4365  ,1640  ,580   ), ang = QAngle(0   ,160 ,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(4365  ,940   ,580   ), ang = QAngle(0   ,-160,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(2295  ,2830  ,700   ), ang = QAngle(0   ,-100,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(1015  ,-480  ,560   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(2385  ,1210  ,650   ), ang = QAngle(0   ,120 ,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(960   ,1770  ,520   ), ang = QAngle(0   ,-120,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-730  ,-880  ,560   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-2500 ,-1480 ,720   ), ang = QAngle(0   ,140 ,0   ), vel = Vector(0,0,0)}
maps.cp_process_f12.setups                                  <- {}
maps.cp_process_f12.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_process_f12.teles.lob}
maps.cp_process_f12.setups.sec.bots                                 <- {}
maps.cp_process_f12.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_process_f12.teles.choke}
maps.cp_process_f12.setups.mid.bots                                 <- {}
maps.cp_process_f12.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_process_f12.teles.tchoke}
maps.cp_process_f12.setups.tsec.bots                                <- {}
maps.cp_process_f12.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_process_f12.teles.tlob}
maps.cp_process_f12.setups.last.bots                                <- {}
maps.cp_process_f12.setups.last.bots.engineer                           <- { pos = Vector(-3833 ,-974  ,644   ), ang = QAngle(0   ,180 ,0   ), name = "b0t1"         , merc = "engineer"    }
maps.cp_process_f12.setups.last.bots.pscout                             <- { pos = Vector(-3751 ,-1280 ,644   ), ang = QAngle(0   ,180 ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.last.bots.rsoldier                           <- { pos = Vector(-3011 ,-600  ,750   ), ang = QAngle(0   ,180 ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.last.bots.psoldier                           <- { pos = Vector(-2832 ,-2236 ,772   ), ang = QAngle(0   ,180 ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.last.bots.demo                               <- { pos = Vector(-3048 ,-1471 ,603   ), ang = QAngle(0   ,180 ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.last.bots.medic                              <- { pos = Vector(-3049 ,-1386 ,548   ), ang = QAngle(0   ,180 ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.last.buildings                           <- {}
maps.cp_process_f12.setups.last.buildings.sentry                        <- { pos = Vector(-3410 ,-1284 ,576   ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_process_f12.setups.last.buildings.dispenser                     <- { pos = Vector(-3050 ,-1280 ,480   ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_process_f12.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_process_f12.teles.rspawn}
maps.cp_process_f12.setups.roll1.bots                               <- {}
maps.cp_process_f12.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_process_f12.teles.rspawn}
maps.cp_process_f12.setups.roll2.bots                               <- {}
maps.cp_process_f12.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_process_f12.teles.rspawn}
maps.cp_process_f12.setups.roll3.bots                               <- {}
maps.cp_process_f12.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_process_f12.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_process_f12.teles.rspawn}
maps.cp_process_f12.setups.roll4.bots                               <- {}
maps.cp_process_f12.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_process_f12.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_process_f12.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_process_f12.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_process_f12.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_gullywash_f9
maps.cp_gullywash_f9                                     <- {}
maps.cp_gullywash_f9.name                                    <- "cp_gullywash_f9"
maps.cp_gullywash_f9.gamemode                                <- maps.cp_gullywash_f9.name.slice(0, maps.cp_gullywash_f9.name.find("_"))
maps.cp_gullywash_f9.teles                                   <- {}
maps.cp_gullywash_f9.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-4195 ,830   ,310   ), ang = QAngle(0   ,35  ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-20 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-1770 ,1145  ,165   ), ang = QAngle(0   ,-20 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(35    ,1400  ,255   ), ang = QAngle(0   ,-115,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(330   ,-855  ,255   ), ang = QAngle(0   ,-130,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(1920  ,-740  ,300   ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.setups                                  <- {}
maps.cp_gullywash_f9.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_gullywash_f9.teles.lob}
maps.cp_gullywash_f9.setups.sec.bots                                 <- {}
maps.cp_gullywash_f9.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_gullywash_f9.teles.choke}
maps.cp_gullywash_f9.setups.mid.bots                                 <- {}
maps.cp_gullywash_f9.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_gullywash_f9.teles.tchoke}
maps.cp_gullywash_f9.setups.tsec.bots                                <- {}
maps.cp_gullywash_f9.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_gullywash_f9.teles.tlob}
maps.cp_gullywash_f9.setups.last.bots                                <- {}
maps.cp_gullywash_f9.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.last.buildings                           <- {}
maps.cp_gullywash_f9.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_gullywash_f9.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_gullywash_f9.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_gullywash_f9.teles.rspawn}
maps.cp_gullywash_f9.setups.roll1.bots                               <- {}
maps.cp_gullywash_f9.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_gullywash_f9.teles.rspawn}
maps.cp_gullywash_f9.setups.roll2.bots                               <- {}
maps.cp_gullywash_f9.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_gullywash_f9.teles.rspawn}
maps.cp_gullywash_f9.setups.roll3.bots                               <- {}
maps.cp_gullywash_f9.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_gullywash_f9.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_gullywash_f9.teles.rspawn}
maps.cp_gullywash_f9.setups.roll4.bots                               <- {}
maps.cp_gullywash_f9.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_gullywash_f9.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_gullywash_f9.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_gullywash_f9.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_snakewater_final1
maps.cp_snakewater_final1                                     <- {}
maps.cp_snakewater_final1.name                                    <- "cp_snakewater_final1"
maps.cp_snakewater_final1.gamemode                                <- maps.cp_snakewater_final1.name.slice(0, maps.cp_snakewater_final1.name.find("_"))
maps.cp_snakewater_final1.teles                                   <- {}
maps.cp_snakewater_final1.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(5805  ,-1265 ,-85   ), ang = QAngle(0   ,160 ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(5800  ,-1955 ,-85   ), ang = QAngle(5   ,-160,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(1945  ,-2435 ,-180  ), ang = QAngle(0   ,90  ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(2060  ,290   ,-20   ), ang = QAngle(0   ,-180,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(3735  ,-1075 ,10    ), ang = QAngle(5   ,-165,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(1885  ,-365  ,-20   ), ang = QAngle(0   ,105 ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-775  ,510   ,-20   ), ang = QAngle(0   ,90  ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-2365 ,2160  ,85    ), ang = QAngle(5   ,-115,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.setups                                  <- {}
maps.cp_snakewater_final1.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_snakewater_final1.teles.lob}
maps.cp_snakewater_final1.setups.sec.bots                                 <- {}
maps.cp_snakewater_final1.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_snakewater_final1.teles.choke}
maps.cp_snakewater_final1.setups.mid.bots                                 <- {}
maps.cp_snakewater_final1.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_snakewater_final1.teles.tchoke}
maps.cp_snakewater_final1.setups.tsec.bots                                <- {}
maps.cp_snakewater_final1.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_snakewater_final1.teles.tlob}
maps.cp_snakewater_final1.setups.last.bots                                <- {}
maps.cp_snakewater_final1.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.last.buildings                           <- {}
maps.cp_snakewater_final1.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_snakewater_final1.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_snakewater_final1.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_snakewater_final1.teles.rspawn}
maps.cp_snakewater_final1.setups.roll1.bots                               <- {}
maps.cp_snakewater_final1.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_snakewater_final1.teles.rspawn}
maps.cp_snakewater_final1.setups.roll2.bots                               <- {}
maps.cp_snakewater_final1.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_snakewater_final1.teles.rspawn}
maps.cp_snakewater_final1.setups.roll3.bots                               <- {}
maps.cp_snakewater_final1.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_snakewater_final1.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_snakewater_final1.teles.rspawn}
maps.cp_snakewater_final1.setups.roll4.bots                               <- {}
maps.cp_snakewater_final1.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_snakewater_final1.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_snakewater_final1.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_snakewater_final1.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_sunshine
maps.cp_sunshine                                     <- {}
maps.cp_sunshine.name                                    <- "cp_sunshine"
maps.cp_sunshine.gamemode                                <- maps.cp_sunshine.name.slice(0, maps.cp_sunshine.name.find("_"))
maps.cp_sunshine.teles                                   <- {}
maps.cp_sunshine.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(-5635 ,5285  ,1100  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-3420 ,760   ,-110  ), ang = QAngle(0   ,50  ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-3840 ,765   ,-110  ), ang = QAngle(0   ,130 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-2985 ,4400  ,5     ), ang = QAngle(0   ,-180,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-4525 ,4865  ,20    ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-4015 ,2440  ,65    ), ang = QAngle(0   ,50  ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(-4160 ,4470  ,5     ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-6135 ,5860  ,5     ), ang = QAngle(0   ,155 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-7855 ,7695  ,-60   ), ang = QAngle(0   ,45  ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.setups                                  <- {}
maps.cp_sunshine.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_sunshine.teles.lob}
maps.cp_sunshine.setups.sec.bots                                 <- {}
maps.cp_sunshine.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_sunshine.teles.choke}
maps.cp_sunshine.setups.mid.bots                                 <- {}
maps.cp_sunshine.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_sunshine.teles.tchoke}
maps.cp_sunshine.setups.tsec.bots                                <- {}
maps.cp_sunshine.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_sunshine.teles.tlob}
maps.cp_sunshine.setups.last.bots                                <- {}
maps.cp_sunshine.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.last.buildings                           <- {}
maps.cp_sunshine.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_sunshine.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_sunshine.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_sunshine.teles.rspawn}
maps.cp_sunshine.setups.roll1.bots                               <- {}
maps.cp_sunshine.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_sunshine.teles.rspawn}
maps.cp_sunshine.setups.roll2.bots                               <- {}
maps.cp_sunshine.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_sunshine.teles.rspawn}
maps.cp_sunshine.setups.roll3.bots                               <- {}
maps.cp_sunshine.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sunshine.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_sunshine.teles.rspawn}
maps.cp_sunshine.setups.roll4.bots                               <- {}
maps.cp_sunshine.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sunshine.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sunshine.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sunshine.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sunshine.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_metalworks_f5
maps.cp_metalworks_f5                                     <- {}
maps.cp_metalworks_f5.name                                    <- "cp_metalworks_f5"
maps.cp_metalworks_f5.gamemode                                <- maps.cp_metalworks_f5.name.slice(0, maps.cp_metalworks_f5.name.find("_"))
maps.cp_metalworks_f5.teles                                   <- {}
maps.cp_metalworks_f5.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(155   ,-875  ,325   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-2475 ,4065  ,-220  ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-2070 ,4070  ,-220  ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-2855 ,645   ,-255  ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-820  ,-1075 ,-380  ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-2450 ,1545  ,-255  ), ang = QAngle(0   ,-65 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(-695  ,-50   ,-255  ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(775   ,-1755 ,-255  ), ang = QAngle(0   ,35  ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(2620  ,-3005 ,-255  ), ang = QAngle(0   ,-105,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.setups                                  <- {}
maps.cp_metalworks_f5.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_metalworks_f5.teles.lob}
maps.cp_metalworks_f5.setups.sec.bots                                 <- {}
maps.cp_metalworks_f5.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_metalworks_f5.teles.choke}
maps.cp_metalworks_f5.setups.mid.bots                                 <- {}
maps.cp_metalworks_f5.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_metalworks_f5.teles.tchoke}
maps.cp_metalworks_f5.setups.tsec.bots                                <- {}
maps.cp_metalworks_f5.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_metalworks_f5.teles.tlob}
maps.cp_metalworks_f5.setups.last.bots                                <- {}
maps.cp_metalworks_f5.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.last.buildings                           <- {}
maps.cp_metalworks_f5.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_metalworks_f5.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_metalworks_f5.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_metalworks_f5.teles.rspawn}
maps.cp_metalworks_f5.setups.roll1.bots                               <- {}
maps.cp_metalworks_f5.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_metalworks_f5.teles.rspawn}
maps.cp_metalworks_f5.setups.roll2.bots                               <- {}
maps.cp_metalworks_f5.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_metalworks_f5.teles.rspawn}
maps.cp_metalworks_f5.setups.roll3.bots                               <- {}
maps.cp_metalworks_f5.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_metalworks_f5.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_metalworks_f5.teles.rspawn}
maps.cp_metalworks_f5.setups.roll4.bots                               <- {}
maps.cp_metalworks_f5.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_metalworks_f5.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_metalworks_f5.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_metalworks_f5.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_granary_pro_rc8
maps.cp_granary_pro_rc8                                     <- {}
maps.cp_granary_pro_rc8.name                                    <- "cp_granary_pro_rc8"
maps.cp_granary_pro_rc8.gamemode                                <- maps.cp_granary_pro_rc8.name.slice(0, maps.cp_granary_pro_rc8.name.find("_"))
maps.cp_granary_pro_rc8.teles                                   <- {}
maps.cp_granary_pro_rc8.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(-1520 ,5     ,235   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-1030 ,-5660 ,-415  ), ang = QAngle(0   ,85  ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-1985 ,-5655 ,-415  ), ang = QAngle(0   ,95  ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-2190 ,-3315 ,-255  ), ang = QAngle(0   ,90  ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-2715 ,515   ,-415  ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-1875 ,-3380 ,-415  ), ang = QAngle(0   ,40  ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(-2665 ,-1090 ,-390  ), ang = QAngle(0   ,70  ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-390  ,950   ,-390  ), ang = QAngle(0   ,115 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-1295 ,2685  ,-415  ), ang = QAngle(0   ,125 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.setups                                  <- {}
maps.cp_granary_pro_rc8.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_granary_pro_rc8.teles.lob}
maps.cp_granary_pro_rc8.setups.sec.bots                                 <- {}
maps.cp_granary_pro_rc8.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_granary_pro_rc8.teles.choke}
maps.cp_granary_pro_rc8.setups.mid.bots                                 <- {}
maps.cp_granary_pro_rc8.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_granary_pro_rc8.teles.tchoke}
maps.cp_granary_pro_rc8.setups.tsec.bots                                <- {}
maps.cp_granary_pro_rc8.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_granary_pro_rc8.teles.tlob}
maps.cp_granary_pro_rc8.setups.last.bots                                <- {}
maps.cp_granary_pro_rc8.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.last.buildings                           <- {}
maps.cp_granary_pro_rc8.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_granary_pro_rc8.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_granary_pro_rc8.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_granary_pro_rc8.teles.rspawn}
maps.cp_granary_pro_rc8.setups.roll1.bots                               <- {}
maps.cp_granary_pro_rc8.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_granary_pro_rc8.teles.rspawn}
maps.cp_granary_pro_rc8.setups.roll2.bots                               <- {}
maps.cp_granary_pro_rc8.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_granary_pro_rc8.teles.rspawn}
maps.cp_granary_pro_rc8.setups.roll3.bots                               <- {}
maps.cp_granary_pro_rc8.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_granary_pro_rc8.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_granary_pro_rc8.teles.rspawn}
maps.cp_granary_pro_rc8.setups.roll4.bots                               <- {}
maps.cp_granary_pro_rc8.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_granary_pro_rc8.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_granary_pro_rc8.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_granary_pro_rc8.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_prolands_rc2ta
maps.cp_prolands_rc2ta                                     <- {}
maps.cp_prolands_rc2ta.name                                    <- "cp_prolands_rc2ta"
maps.cp_prolands_rc2ta.gamemode                                <- maps.cp_prolands_rc2ta.name.slice(0, maps.cp_prolands_rc2ta.name.find("_"))
maps.cp_prolands_rc2ta.teles                                   <- {}
maps.cp_prolands_rc2ta.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(-5    ,-5    ,680   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(385   ,4495  ,195   ), ang = QAngle(0   ,-115,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(1175  ,4445  ,195   ), ang = QAngle(0   ,-65 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(245   ,2365  ,195   ), ang = QAngle(0   ,-85 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(970   ,340   ,290   ), ang = QAngle(0   ,-130,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(1280  ,2390  ,5     ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(1690  ,360   ,120   ), ang = QAngle(0   ,-150,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-595  ,-110  ,300   ), ang = QAngle(0   ,-180,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-760  ,-2830 ,195   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.setups                                  <- {}
maps.cp_prolands_rc2ta.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_prolands_rc2ta.teles.lob}
maps.cp_prolands_rc2ta.setups.sec.bots                                 <- {}
maps.cp_prolands_rc2ta.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_prolands_rc2ta.teles.choke}
maps.cp_prolands_rc2ta.setups.mid.bots                                 <- {}
maps.cp_prolands_rc2ta.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_prolands_rc2ta.teles.tchoke}
maps.cp_prolands_rc2ta.setups.tsec.bots                                <- {}
maps.cp_prolands_rc2ta.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_prolands_rc2ta.teles.tlob}
maps.cp_prolands_rc2ta.setups.last.bots                                <- {}
maps.cp_prolands_rc2ta.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.last.buildings                           <- {}
maps.cp_prolands_rc2ta.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_prolands_rc2ta.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_prolands_rc2ta.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_prolands_rc2ta.teles.rspawn}
maps.cp_prolands_rc2ta.setups.roll1.bots                               <- {}
maps.cp_prolands_rc2ta.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_prolands_rc2ta.teles.rspawn}
maps.cp_prolands_rc2ta.setups.roll2.bots                               <- {}
maps.cp_prolands_rc2ta.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_prolands_rc2ta.teles.rspawn}
maps.cp_prolands_rc2ta.setups.roll3.bots                               <- {}
maps.cp_prolands_rc2ta.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_prolands_rc2ta.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_prolands_rc2ta.teles.rspawn}
maps.cp_prolands_rc2ta.setups.roll4.bots                               <- {}
maps.cp_prolands_rc2ta.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_prolands_rc2ta.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_prolands_rc2ta.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_prolands_rc2ta.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_sultry_b8a
maps.cp_sultry_b8a                                     <- {}
maps.cp_sultry_b8a.name                                    <- "cp_sultry_b8a"
maps.cp_sultry_b8a.gamemode                                <- maps.cp_sultry_b8a.name.slice(0, maps.cp_sultry_b8a.name.find("_"))
maps.cp_sultry_b8a.teles                                   <- {}
maps.cp_sultry_b8a.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(2765  ,-4695 ,610   ), ang = QAngle(0   ,40  ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(2495  ,-4680 ,610   ), ang = QAngle(0   ,140 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(3575  ,-795  ,645   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(1075  ,-155  ,515   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(2140  ,-2655 ,645   ), ang = QAngle(0   ,60  ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(1770  ,-765  ,545   ), ang = QAngle(0   ,140 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-815  ,565   ,545   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-2590 ,2010  ,645   ), ang = QAngle(0   ,55  ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.setups                                  <- {}
maps.cp_sultry_b8a.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_sultry_b8a.teles.lob}
maps.cp_sultry_b8a.setups.sec.bots                                 <- {}
maps.cp_sultry_b8a.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_sultry_b8a.teles.choke}
maps.cp_sultry_b8a.setups.mid.bots                                 <- {}
maps.cp_sultry_b8a.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_sultry_b8a.teles.tchoke}
maps.cp_sultry_b8a.setups.tsec.bots                                <- {}
maps.cp_sultry_b8a.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_sultry_b8a.teles.tlob}
maps.cp_sultry_b8a.setups.last.bots                                <- {}
maps.cp_sultry_b8a.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.last.buildings                           <- {}
maps.cp_sultry_b8a.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_sultry_b8a.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_sultry_b8a.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_sultry_b8a.teles.rspawn}
maps.cp_sultry_b8a.setups.roll1.bots                               <- {}
maps.cp_sultry_b8a.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_sultry_b8a.teles.rspawn}
maps.cp_sultry_b8a.setups.roll2.bots                               <- {}
maps.cp_sultry_b8a.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_sultry_b8a.teles.rspawn}
maps.cp_sultry_b8a.setups.roll3.bots                               <- {}
maps.cp_sultry_b8a.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_sultry_b8a.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_sultry_b8a.teles.rspawn}
maps.cp_sultry_b8a.setups.roll4.bots                               <- {}
maps.cp_sultry_b8a.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_sultry_b8a.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_sultry_b8a.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_sultry_b8a.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_reckoner_rc6
maps.cp_reckoner_rc6                                     <- {}
maps.cp_reckoner_rc6.name                                    <- "cp_reckoner_rc6"
maps.cp_reckoner_rc6.gamemode                                <- maps.cp_reckoner_rc6.name.slice(0, maps.cp_reckoner_rc6.name.find("_"))
maps.cp_reckoner_rc6.teles                                   <- {}
maps.cp_reckoner_rc6.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(2080  ,4455  ,225   ), ang = QAngle(0   ,-145,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(2705  ,4460  ,225   ), ang = QAngle(0   ,-45 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(1050  ,2510  ,325   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(1790  ,-330  ,260   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(1910  ,2270  ,325   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(1570  ,150   ,260   ), ang = QAngle(0   ,-165,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-1580 ,245   ,260   ), ang = QAngle(0   ,-105,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-2520 ,-2100 ,180   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.setups                                  <- {}
maps.cp_reckoner_rc6.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_reckoner_rc6.teles.lob}
maps.cp_reckoner_rc6.setups.sec.bots                                 <- {}
maps.cp_reckoner_rc6.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_reckoner_rc6.teles.choke}
maps.cp_reckoner_rc6.setups.mid.bots                                 <- {}
maps.cp_reckoner_rc6.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_reckoner_rc6.teles.tchoke}
maps.cp_reckoner_rc6.setups.tsec.bots                                <- {}
maps.cp_reckoner_rc6.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_reckoner_rc6.teles.tlob}
maps.cp_reckoner_rc6.setups.last.bots                                <- {}
maps.cp_reckoner_rc6.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.last.buildings                           <- {}
maps.cp_reckoner_rc6.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_reckoner_rc6.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_reckoner_rc6.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_reckoner_rc6.teles.rspawn}
maps.cp_reckoner_rc6.setups.roll1.bots                               <- {}
maps.cp_reckoner_rc6.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_reckoner_rc6.teles.rspawn}
maps.cp_reckoner_rc6.setups.roll2.bots                               <- {}
maps.cp_reckoner_rc6.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_reckoner_rc6.teles.rspawn}
maps.cp_reckoner_rc6.setups.roll3.bots                               <- {}
maps.cp_reckoner_rc6.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_reckoner_rc6.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_reckoner_rc6.teles.rspawn}
maps.cp_reckoner_rc6.setups.roll4.bots                               <- {}
maps.cp_reckoner_rc6.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_reckoner_rc6.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_reckoner_rc6.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_reckoner_rc6.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: cp_entropy_b5
maps.cp_entropy_b5                                     <- {}
maps.cp_entropy_b5.name                                    <- "cp_entropy_b5"
maps.cp_entropy_b5.gamemode                                <- maps.cp_entropy_b5.name.slice(0, maps.cp_entropy_b5.name.find("_"))
maps.cp_entropy_b5.teles                                   <- {}
maps.cp_entropy_b5.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-1115 ,-4345 ,-30   ), ang = QAngle(0   ,50  ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-1435 ,-4345 ,-30   ), ang = QAngle(0   ,135 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1070 ,-1985 ,-190  ), ang = QAngle(0   ,135 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-525  ,-45   ,-335  ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-1865 ,-2940 ,-30   ), ang = QAngle(0   ,60  ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(-1210 ,-245  ,-125  ), ang = QAngle(0   ,45  ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(1505  ,380   ,-190  ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(1810  ,2190  ,35    ), ang = QAngle(0   ,115 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.setups                                  <- {}
maps.cp_entropy_b5.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.cp_entropy_b5.teles.lob}
maps.cp_entropy_b5.setups.sec.bots                                 <- {}
maps.cp_entropy_b5.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.cp_entropy_b5.teles.choke}
maps.cp_entropy_b5.setups.mid.bots                                 <- {}
maps.cp_entropy_b5.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.cp_entropy_b5.teles.tchoke}
maps.cp_entropy_b5.setups.tsec.bots                                <- {}
maps.cp_entropy_b5.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.last                                 <- { stp = botSetups.LAST, tele = maps.cp_entropy_b5.teles.tlob}
maps.cp_entropy_b5.setups.last.bots                                <- {}
maps.cp_entropy_b5.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.last.buildings                           <- {}
maps.cp_entropy_b5.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.cp_entropy_b5.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.cp_entropy_b5.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.cp_entropy_b5.teles.rspawn}
maps.cp_entropy_b5.setups.roll1.bots                               <- {}
maps.cp_entropy_b5.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.cp_entropy_b5.teles.rspawn}
maps.cp_entropy_b5.setups.roll2.bots                               <- {}
maps.cp_entropy_b5.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.cp_entropy_b5.teles.rspawn}
maps.cp_entropy_b5.setups.roll3.bots                               <- {}
maps.cp_entropy_b5.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.cp_entropy_b5.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.cp_entropy_b5.teles.rspawn}
maps.cp_entropy_b5.setups.roll4.bots                               <- {}
maps.cp_entropy_b5.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.cp_entropy_b5.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.cp_entropy_b5.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.cp_entropy_b5.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: koth_product_final
maps.koth_product_final                                     <- {}
maps.koth_product_final.name                                    <- "koth_product_final"
maps.koth_product_final.gamemode                                <- maps.koth_product_final.name.slice(0, maps.koth_product_final.name.find("_"))
maps.koth_product_final.teles                                   <- {}
maps.koth_product_final.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-1470 ,3110  ,65    ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-1300 ,3215  ,65    ), ang = QAngle(0   ,-25 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1460 ,1945  ,5     ), ang = QAngle(0   ,-150,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-520  ,1910  ,130   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-1380 ,1025  ,165   ), ang = QAngle(0   ,-40 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(-2080 ,1990  ,130   ), ang = QAngle(0   ,-105,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(-2665 ,-1230 ,135   ), ang = QAngle(0   ,-45 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(-1355 ,-1080 ,165   ), ang = QAngle(0   ,-90 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.setups                                  <- {}
maps.koth_product_final.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.koth_product_final.teles.lob}
maps.koth_product_final.setups.sec.bots                                 <- {}
maps.koth_product_final.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.koth_product_final.teles.choke}
maps.koth_product_final.setups.mid.bots                                 <- {}
maps.koth_product_final.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.koth_product_final.teles.tchoke}
maps.koth_product_final.setups.tsec.bots                                <- {}
maps.koth_product_final.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.last                                 <- { stp = botSetups.LAST, tele = maps.koth_product_final.teles.tlob}
maps.koth_product_final.setups.last.bots                                <- {}
maps.koth_product_final.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.last.buildings                           <- {}
maps.koth_product_final.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.koth_product_final.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.koth_product_final.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.koth_product_final.teles.rspawn}
maps.koth_product_final.setups.roll1.bots                               <- {}
maps.koth_product_final.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.koth_product_final.teles.rspawn}
maps.koth_product_final.setups.roll2.bots                               <- {}
maps.koth_product_final.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.koth_product_final.teles.rspawn}
maps.koth_product_final.setups.roll3.bots                               <- {}
maps.koth_product_final.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_product_final.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.koth_product_final.teles.rspawn}
maps.koth_product_final.setups.roll4.bots                               <- {}
maps.koth_product_final.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_product_final.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_product_final.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_product_final.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_product_final.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_product_final.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

// MAP DATA: koth_bagel_rc7
maps.koth_bagel_rc7                                     <- {}
maps.koth_bagel_rc7.name                                    <- "koth_bagel_rc7"
maps.koth_bagel_rc7.gamemode                                <- maps.koth_bagel_rc7.name.slice(0, maps.koth_bagel_rc7.name.find("_"))
maps.koth_bagel_rc7.teles                                   <- {}
maps.koth_bagel_rc7.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,720   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-3525 ,-15   ,355   ), ang = QAngle(0   ,-65 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(-3465 ,255   ,355   ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-2475 ,-760  ,325   ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-2060 ,845   ,355   ), ang = QAngle(0   ,-60 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(-1295 ,-10   ,285   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(-1450 ,355   ,385   ), ang = QAngle(0   ,45  ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(1150  ,775   ,150   ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(960   ,-720  ,380   ), ang = QAngle(0   ,35  ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.setups                                  <- {}
maps.koth_bagel_rc7.setups.sec                                  <- { stp = botSetups.OUR_SECOND, tele = maps.koth_bagel_rc7.teles.lob}
maps.koth_bagel_rc7.setups.sec.bots                                 <- {}
maps.koth_bagel_rc7.setups.sec.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.sec.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.sec.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.sec.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.sec.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.sec.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.mid                                  <- { stp = botSetups.MIDDLE, tele = maps.koth_bagel_rc7.teles.choke}
maps.koth_bagel_rc7.setups.mid.bots                                 <- {}
maps.koth_bagel_rc7.setups.mid.bots.rscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.mid.bots.pscout                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.mid.bots.rsoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.mid.bots.psoldier                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.mid.bots.demo                                <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.mid.bots.medic                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.tsec                                 <- { stp = botSetups.SECOND, tele = maps.koth_bagel_rc7.teles.tchoke}
maps.koth_bagel_rc7.setups.tsec.bots                                <- {}
maps.koth_bagel_rc7.setups.tsec.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.tsec.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.tsec.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.tsec.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.tsec.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.tsec.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.last                                 <- { stp = botSetups.LAST, tele = maps.koth_bagel_rc7.teles.tlob}
maps.koth_bagel_rc7.setups.last.bots                                <- {}
maps.koth_bagel_rc7.setups.last.bots.rscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.last.bots.pscout                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.last.bots.rsoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.last.bots.psoldier                           <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.last.bots.demo                               <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.last.bots.medic                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.last.buildings                           <- {}
maps.koth_bagel_rc7.setups.last.buildings.sentry                        <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.SENTRY       , lvl = 3 }
maps.koth_bagel_rc7.setups.last.buildings.dispenser                     <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), owner = "b0t1"        , type = buildings.DISPENSER    , lvl = 3 }
maps.koth_bagel_rc7.setups.roll1                                <- { stp = botSetups.MIDDLE_ROLLOUT_1, tele = maps.koth_bagel_rc7.teles.rspawn}
maps.koth_bagel_rc7.setups.roll1.bots                               <- {}
maps.koth_bagel_rc7.setups.roll1.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll1.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll1.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll1.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll1.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.roll1.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.roll2                                <- { stp = botSetups.MIDDLE_ROLLOUT_2, tele = maps.koth_bagel_rc7.teles.rspawn}
maps.koth_bagel_rc7.setups.roll2.bots                               <- {}
maps.koth_bagel_rc7.setups.roll2.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll2.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll2.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll2.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll2.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.roll2.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.roll3                                <- { stp = botSetups.MIDDLE_ROLLOUT_3, tele = maps.koth_bagel_rc7.teles.rspawn}
maps.koth_bagel_rc7.setups.roll3.bots                               <- {}
maps.koth_bagel_rc7.setups.roll3.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll3.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll3.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll3.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll3.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.roll3.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }
maps.koth_bagel_rc7.setups.roll4                                <- { stp = botSetups.MIDDLE_ROLLOUT_4, tele = maps.koth_bagel_rc7.teles.rspawn}
maps.koth_bagel_rc7.setups.roll4.bots                               <- {}
maps.koth_bagel_rc7.setups.roll4.bots.rscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t1"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll4.bots.pscout                            <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t2"         , merc = "scout"       }
maps.koth_bagel_rc7.setups.roll4.bots.rsoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t3"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll4.bots.psoldier                          <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t4"         , merc = "soldier"     }
maps.koth_bagel_rc7.setups.roll4.bots.demo                              <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t5"         , merc = "demoman"     }
maps.koth_bagel_rc7.setups.roll4.bots.medic                             <- { pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), name = "b0t6"         , merc = "medic"       }

maps.cp_unsupported                                     <- {}
maps.cp_unsupported.name                                    <- "cp_unsupported"
maps.cp_unsupported.gamemode                                <- maps.cp_unsupported.name.slice(0, maps.cp_unsupported.name.find("_"))
maps.cp_unsupported.teles                                   <- {}
maps.cp_unsupported.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000   ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}

local sounds = {}
sounds.buttonPress <- "passtime/ball_intercepted.wav"

// ARRAY REGION: GENERAL

//local teleLocationsText = ["right spawn", "left spawn", "mid forward", "second forward", "red lobby", "red choke", "blu choke", "blu lobby", "custom 1", "custom 2"," custom 3", "custom 4", "options menu"]
//local teleObjectivesText = ["Reach", "Kill", "Cap", "None"]

local menuBoundaries = []
local objectiveBoundaries = []

// CLASS REGION

class _Timer 
{
    static ticksPerSecond = 66
    elapsedTicks = null
    maxTicks = null

    constructor(seconds, startingTick = 0)
    {
        maxTicks = seconds * ticksPerSecond
        elapsedTicks = startingTick
    }
    function start(seconds)
    {

    }
    function stop()
    {

    }
    function update(seconds)
    {

    }
    function destroy()
    {
        
    }
}
class _HUDTimer extends _Timer
{
    entity = null

    constructor(timerEntity)
    {
        entity = timerEntity
    }
}
class _HUDBar
{
    entity = null

    constructor(barEntity)
    {
        entity = barEntity
    }
    function update(percentage)
    {

    }
    function destroy()
    {
        
    }
}
class _RoundRestartTimer extends _Timer
{
    constructor()
    {

    }
}
class _HealingTimer extends _Timer
{
    healPerTick = null
    overhealPerTick = null
    tickHealingHealed = null

    constructor(timerHealPerTick = 0, timerOverHealPerTick = 0, timerTickHealingHealed = 0)
    {
        healPerTick = timerHealPerTick
        overhealPerTick = timerOverHealPerTick
        tickHealingHealed = timerTickHealingHealed
    }
}
class _UberTimer extends _Timer
{
    constructor()
    {
        
    }
}
class _DemoRecorder
{
    Timer = null

    demoIsRecording = null
    demoMarkedToSave = null

    static demoEntrySeperator = ";"
    static demoFieldSeperator = ", "
    static demoFileName = "JPRAC-saved-demos"
    static demoId = "demo: "
    static demoMapId = "map: "
    static demoTeleId = "tele: "
    static demoObjectiveId = "objective: "
    static demoTimerId = "timer: "
    static DEMFileName = "JPRAC_Demo"

    constructor(timer = null)
    {
        Timer = timer
        demoIsRecording = false
        demoMarkedToSave = false
    }
}
class _Destination
{
    pos = null
    ang = null
    vel = null

    constructor(destinationPos, destinationAng, destinationVol)
    {
        pos = destinationPos
        ang = destinationAng
        vel = destinationVol
    }
}
class _Attempt
{
    Timer = null
    result = null

    constructor(timer = null)
    {
        Timer = timer
    }
}
class _Objective
{
    type = null
    objectiveDone = null
    currentAttempt = null
    previousAttempts = null

    constructor(objectiveType, timer = null)
    {
        type = objectiveType
        Timer = timer
        objectiveDone = false
        previousAttempts = []
    }
    function getAttempts(result = null)
    {
        if(result == null) 
            return previousAttempts

        filteredAttempts = []
        foreach(attempt in previousAttempts)
        {
            if(result == attempt.result) 
                filteredAttempts.append(attempt)
        }
        return filteredAttempts
    }
    function getRunningAverageTime(result = null)
    {
        totalTicks = 0
        
        attempts = getAttempts(result)
        attemptCount = attempts.len()

        foreach(attempt in attempts)
        {
            totalTicks += attempt.Timer.elapsedTicks
        }

        return attemptCount / totalTime
    }
}
class _Option
{
    id = null
    state = null
    name = ""

    constructor(optionId, optionName = null, optionState = false)
    {
        id = optionId
        if(optionName)
            name = optionName
        else
            name = id.tostring()
        state = optionState
    }
    function changeState(toState)
    {
        state = toState
    }
}
class _OptionsGroup
{
    Options = null
    optionsGroupType = null
    optionsGroupDefault = null

    constructor(groupOptions, groupType, groupDefault = null)
    {
        Options = groupOptions
        optionsGroupType = groupType
        optionsGroupDefault = groupDefault
    }
    function getOptions(state = null)
    {
        if(state == null)
            return Options

        filteredOptions = []
        foreach(option in Options)
        {
            if(option.state == state)
            {
                filteredOptions.append(option)
            }
        }
        return filteredOptions
    }
    function enableDefault()
    {
        if(optionsGroupType = optionsGroupTypes.RADIO) return

        foreach(option in Options)
        {
            changeState(option.id == optionsGroupDefault)
        }
    }
}
class _PlayerOptions
{
    chosenTele          = null
    chosenTeleLocation  = null
    chosenTeleTimer     = null
    chosenTeleObjective = null
    chosenHealth        = null
    chosenHealthRegen   = null
    chosenHealing       = null
    chosenHealingType   = null
    chosenHealingTimer  = null
    chosenUber          = null
    chosenUberTimer     = null
    chosenAmmo          = null
    chosenAmmoType      = null
    chosenAmmoRegen     = null
    chosenBot           = null
    chosenBotSetup      = null
    chosenCaps          = null
    chosenCapsAmount    = null
    chosenLocks         = null

    OptionsGroupTele = null
    OptionsGroupTeleLocation = null
    OptionsGroupTeleTimer = null
    OptionsGroupTeleObjective = null
    OptionsGroupHealth = null
    OptionsGroupHealthRegen = null
    OptionsGroupHealthRegenAdd = null
    OptionsGroupHealing = null
    OptionsGroupHealingType = null
    OptionsGroupHealingTimer = null
    OptionsGroupUber = null
    OptionsGroupUberTimer = null
    OptionsGroupAmmo = null
    OptionsGroupAmmoType = null
    OptionsGroupAmmoRegen = null
    OptionsGroupAmmoRegenAdd = null
    OptionsGroupBot = null
    OptionsGroupBotSetup = null
    OptionsGroupCap = null
    OptionsGroupCapAdd = null
    OptionsGroupLock = null

    constructor()
    {
        OptionsGroupTele =           _OptionsGroup([_Option(teles.ON,                       "ON"),
                                                    _Option(teles.TIMED,                    "TIMED"),
                                                    _Option(teles.ROUND_RESTART,            "ROUND\nRESTART"),
                                                    _Option(teles.OFF,                      "OFF")],
                                                    optionsGroupTypes.RADIO,
                                                    teles.ON)
        OptionsGroupTeleLocation =   _OptionsGroup([_Option(teleLocations.RIGHT_SPAWN,     "RIGHT\nSPAWN"),
                                                    _Option(teleLocations.LEFT_SPAWN,      "LEFT\nSPAWN"),
                                                    _Option(teleLocations.MID_FORWARD,     "MID\nFORWARD"),
                                                    _Option(teleLocations.SECOND_FORWARD,  "SECOND\nFORWARD"),
                                                    _Option(teleLocations.OUR_LOBBY,       "OUR\nLOBBY"),
                                                    _Option(teleLocations.OUR_CHOKE,       "OUR\nCHOKE"),
                                                    _Option(teleLocations.THEIR_CHOKE,     "THEIR\nCHOKE"),
                                                    _Option(teleLocations.THEIR_LOBBY,     "THEIR\nLOBBY"),
                                                    _Option(teleLocations.CUSTOM_1,        "CUSTOM\n  #1"),
                                                    _Option(teleLocations.CUSTOM_2,        "CUSTOM\n  #2"),
                                                    _Option(teleLocations.CUSTOM_3,        "CUSTOM\n  #3"),
                                                    _Option(teleLocations.CUSTOM_4,        "CUSTOM\n  #4")],
                                                    optionsGroupTypes.RADIO,
                                                    teleLocations.RIGHT_SPAWN)
        OptionsGroupTeleTimer =      _OptionsGroup([_Option(teleTimerControls.PLUS_TEN,     "+10"),
                                                    _Option(teleTimerControls.PLUS_ONE,     "+1"),
                                                    _Option(teleTimerControls.MINUS_ONE,    "-1"),
                                                    _Option(teleTimerControls.MINUS_FIVE,   "-5")],
                                                    optionsGroupTypes.CLICK)
        OptionsGroupTeleObjective =  _OptionsGroup([_Option(teleObjectives.REACH,           "REACH"),
                                                    _Option(teleObjectives.KILL,            "KILL"),
                                                    _Option(teleObjectives.CAP,             "CAP"),
                                                    _Option(teleObjectives.NONE,            "NONE")],
                                                    optionsGroupTypes.RADIO,
                                                    teleObjectives.NONE)
        OptionsGroupHealth =         _OptionsGroup([_Option(health.ON_TELE,                 " ON\nTELE"),
                                                    _Option(health.NEGATE_DAMAGE,           "NEGATE\nDAMAGE"),
                                                    _Option(health.PREVENT_DAMAGE,          "PREVENT\nDAMAGE"),
                                                    _Option(health.OFF,                     "OFF")],
                                                    optionsGroupTypes.RADIO,
                                                    health.ON_TELE)
        OptionsGroupHealthRegen =    _OptionsGroup([_Option(healthRegen.FIVE_HUNDRED,       "500%"),
                                                    _Option(healthRegen.HUNDRED_FIFTY,      "150%"),
                                                    _Option(healthRegen.HUNDRED,            "100%"),
                                                    _Option(healthRegen.FIFTY,              "50%")],
                                                    optionsGroupTypes.RADIO,
                                                    healthRegen.HUNDRED)
        OptionsGroupHealthRegenAdd = _OptionsGroup([_Option(healthRegenAdd.PLUS_FIFTY,      "+50%"),
                                                    _Option(healthRegenAdd.PLUS_TEN,        "+10%"),
                                                    _Option(healthRegenAdd.MINUS_TEN,       "-10%"),
                                                    _Option(healthRegenAdd.MINUS_FIFTY,     "-50%")],
                                                    optionsGroupTypes.CLICK)
        OptionsGroupHealing =        _OptionsGroup([_Option(healing.ON_TELE,                " ON\nTELE"),
                                                    _Option(healing.UNTIL_JUMP,             "UNTIL\nJUMP"),
                                                    _Option(healing.INFINITE,               "INFINITE"),
                                                    _Option(healing.OFF,                    "OFF")],
                                                    optionsGroupTypes.RADIO,
                                                    healing.OFF)
        OptionsGroupHealingType =    _OptionsGroup([_Option(healingType.MEDI_GUN,           "MEDI"),
                                                    _Option(healingType.KRITZKRIEG,         "KRITZ"),
                                                    _Option(healingType.QUICK_FIX,          "QUICK"),
                                                    _Option(healingType.VACCINATOR,         "VACC")],
                                                    optionsGroupTypes.RADIO,
                                                    healingType.MEDI_GUN)
        OptionsGroupHealingTimer =   _OptionsGroup([_Option(healingTimerControls.PLUS_TEN,  "+10"),
                                                    _Option(healingTimerControls.PLUS_ONE,  "+1"),
                                                    _Option(healingTimerControls.MINUS_ONE, "-1"),
                                                    _Option(healingTimerControls.MINUS_FIVE,"-5")],
                                                    optionsGroupTypes.CLICK)
        OptionsGroupUber =           _OptionsGroup([_Option(uber.ON_TELE,                   " ON\nTELE"),
                                                    _Option(uber.UNTIL_JUMP,                "UNTIL\nJUMP"),
                                                    _Option(uber.INFINITE,                  "INFINITE"),
                                                    _Option(uber.OFF,                       "OFF")],
                                                    optionsGroupTypes.RADIO,
                                                    uber.OFF)
        OptionsGroupUberTimer =      _OptionsGroup([_Option(uberTimerControls.PLUS_EIGHT,   "+8s"),
                                                    _Option(uberTimerControls.PLUS_ONE,     "+1s"),
                                                    _Option(uberTimerControls.MINUS_ONE,    "-1s"),
                                                    _Option(uberTimerControls.MINUS_FIVE,   "-5s")],
                                                    optionsGroupTypes.CLICK)
        OptionsGroupAmmo =           _OptionsGroup([_Option(ammo.ON_TELE,                   " ON\nTELE"),
                                                    _Option(ammo.ON_ATTACK,                 "  ON\nATTACK"),
                                                    _Option(ammo.INFINITE,                  "INFINITE"),
                                                    _Option(ammo.OFF,                       "OFF")],
                                                    optionsGroupTypes.RADIO,
                                                    ammo.ON_TELE)
        OptionsGroupAmmoType =       _OptionsGroup([_Option(ammoType.TOTAL,                 "TOTAL"),
                                                    _Option(ammoType.RESERVE,               "RESERVE"),
                                                    _Option(ammoType.CLIP,                  "CLIP"),
                                                    _Option(ammoType.CLIP_ONLY,             "CLIP\nONLY")],
                                                    optionsGroupTypes.RADIO,
                                                    ammoType.TOTAL)
        OptionsGroupAmmoRegen =      _OptionsGroup([_Option(ammoRegen.HUNDRED,              "100%"),
                                                    _Option(ammoRegen.SEVENTY_FIVE,         "75%"),
                                                    _Option(ammoRegen.FIFTY,                "50%"),
                                                    _Option(ammoRegen.TWENTY_FIVE,          "25%")],
                                                    optionsGroupTypes.RADIO,
                                                    ammoRegen.HUNDRED)
        OptionsGroupAmmoRegenAdd =   _OptionsGroup([_Option(ammoRegenAdd.PLUS_FOURTH,       "+25%"),
                                                    _Option(ammoRegenAdd.PLUS_SIXTEENTH,    "+6.25%"),
                                                    _Option(ammoRegenAdd.MINUS_SIXTEENTH,   "-6.25%"),
                                                    _Option(ammoRegenAdd.MINUS_EIGHTH,      "-12.5%")],
                                                    optionsGroupTypes.CLICK)
        OptionsGroupBot =            _OptionsGroup([_Option(bots.NORMAL,                    "NORMAL"),
                                                    _Option(bots.HARD,                      "HARD"),
                                                    _Option(bots.EXPERT,                    "EXPERT"),
                                                    _Option(bots.OFF,                       "OFF")],
                                                    optionsGroupTypes.RADIO,
                                                    bots.OFF)
        OptionsGroupBotSetup =       _OptionsGroup([_Option(botSetups.OUR_SECOND,           "OUR\nSECOND"),
                                                    _Option(botSetups.MIDDLE,               "MIDDLE"),
                                                    _Option(botSetups.SECOND,               "SECOND"),
                                                    _Option(botSetups.LAST,                 "LAST")
                                                    _Option(botSetups.MIDDLE_ROLLOUT_1,     "ROLLOUT\n  #1"),
                                                    _Option(botSetups.MIDDLE_ROLLOUT_2,     "ROLLOUT\n  #2"),
                                                    _Option(botSetups.MIDDLE_ROLLOUT_3,     "ROLLOUT\n  #3"),
                                                    _Option(botSetups.MIDDLE_ROLLOUT_4,     "ROLLOUT\n  #4"),
                                                    _Option(botSetups.CUSTOM_1,             "CUSTOM\n  #1"),
                                                    _Option(botSetups.CUSTOM_2,             "CUSTOM\n  #2"),
                                                    _Option(botSetups.CUSTOM_3,             "CUSTOM\n  #3"),
                                                    _Option(botSetups.CUSTOM_4,             "CUSTOM\n  #4")],
                                                    optionsGroupTypes.RADIO)
        OptionsGroupCap =            _OptionsGroup([_Option(caps.DEFAULT,                   "DEFAULT"),
                                                    _Option(caps.OVERRIDE,                  "OVERRIDE")],
                                                    optionsGroupTypes.RADIO,
                                                    caps.DEFAULT)
        OptionsGroupCapAdd =         _OptionsGroup([_Option(capsAdd.PLUS_ONE,               "+1 CAP"),
                                                    _Option(capsAdd.MINUS_ONE,              "-1 CAP")]
                                                    optionsGroupTypes.CLICK)
        OptionsGroupLock =           _OptionsGroup([_Option(locks.DEFAULT,                  "DEFAULT"),
                                                _Option(locks.ALL,                      "ALL"),
                                                _Option(locks.ATTACK,                   "ATTACK"),
                                                _Option(locks.DEFEND,                   "DEFEND")],
                                                optionsGroupTypes.RADIO,
                                                locks.DEFAULT)
        OptionsGroups = []
        OptionsGroups.append([OptionsGroupTele, OptionsGroupTeleLocation, OptionsGroupTeleTimer, OptionsGroupTeleObjective, 
                              OptionsGroupHealth, OptionsGroupHealthRegen, OptionsGroupHealthRegenAdd, OptionsGroupHealing, 
                              OptionsGroupHealingType, OptionsGroupHealingTimer, OptionsGroupUber, OptionsGroupUberTimer
                              OptionsGroupAmmo, OptionsGroupAmmoType, OptionsGroupAmmoRegen, OptionsGroupAmmoRegenAdd,
                              OptionsGroupBot, OptionsGroupBotSetup, OptionsGroupCap, OptionsGroupCapAdd, OptionsGroupLock])
        
    }
    function enableDefaults()
    {
        foreach(OptionsGroup in OptionsGroups)
        {
            OptionsGroup.enableDefault()
        }
    }
}
:: _Player <- class
{
    entity = null
    team = null

    isHost = null

    Objective = null

    attackPressed = null
    hasJumped = null

    inOptionsMenu = null
    menuRotation = null
    leftMenu = null

    DestinationPreMenu = null

    ObjectiveTimer = null
    HealingTimer = null
    UberTimer = null

    currentDamageMultiplier = null

    constructor(playerEntity, playerIsHost = false)
    {
        entity = playerEntity
        isHost = playerIsHost
    }
    function addPlayerThink()
    {
        AddThinkToEnt(entity, "PlayerThink")
    }
}
class _OptionsMenu
{
    static bSize = 20
    static bHeight = 17    
    static bWallOffsetX = -90
    static bWallOffsetY = 56
    static bWallOffsetZ = 300
    static bOffsetX = 53.75
    static bOffsetY = -42  
    static bWallTextOffsetX = -109
    static bWallTextOffsetY = 54
    static bWallTextOffsetZ = 320
    static bTextOffsetX = 53.75
    static bTextOffsetY = -42
    static bTextLetterOffset = 5
    static bTextLineOffset = 4
    static bTextLineCharLimit = 8  
    static bTextOffRedColor =      "255 210 170"
    static bTextOffWhiteColor =    "255 240 240"
    static bTextHighlightedColor = "255 255 50"

    constructor(playerOptions)
    {

    }
}
class _Map
{
    object = null
    OptionsMenu = null

    regenPacks = []
    packsAreAutoMaterializing = true

    capPoints = []

    botGenerators = []
    builder = null
    spawnedBuildings = []

    HUDTimer = null
    HUDBar = null

    RoundRestartTimer = null

    constructor(mapObject)
    {
        object = mapObject
    }
    function createOptionsMenu(playerOptions)
    {
        OptionsMenu = _OptionsMenu(playerOptions)
    }
    function destroyOptionsMenu()
    {
        return null // not implemented
    }
}
:: _Server <- class
{
    Map = null
    Players = null
    
    stvEnabled = false

    static standardOverhealMax = 1.5
    static quickfixOverhealMax = 1.25
    static standardHealrate = 24.0
    static quickfixHealrateMultiplier = 1.4
    static vaccinatorOverhealrateMultiplier = 0.666667

    static chatCommandIndicator = '!'

    function initializeMap(map)
    {
        return _Map(map)
    }
    function getMap()
    {
        local mapName = GetMapName().tolower()

        local shortMapName = extractShortName(mapName)

        foreach(map in maps)
        {
            if (extractShortName(map.name) == shortMapName)
            {
                if(map.name != mapName) ClientPrintSafe(shortMapName + " version differs from supported version: " + map.name)
                return map
            }
        }
        ClientPrintSafe("Map is not (fully) supported")
        return maps.cp_unsupported
    }
    function extractShortName(fullName)
    {
        local firstUnderscore = fullName.find("_",0)
        local secondUnderscore = fullName.find("_",firstUnderscore+1)
        if(firstUnderscore == null) firstUnderscore = 0
        if(secondUnderscore == null) secondUnderscore = fullName.len()
        return fullName.slice(0, secondUnderscore)
    }
    function initializePlayers(playerEntities)
    {
        local host = GetListenServerHost()
        local initializedPlayers = []

        foreach(playerEntity in playerEntities)
        {
            local initializedPlayer = _Player(playerEntity, playerEntity == host)
            initializedPlayers.append(initializedPlayer)
        }
        return initializedPlayers
    }
    function addPlayerThinks(ForPlayers)
    {
        printl(ForPlayers)
        foreach(Player in ForPlayers)
        {
            Player.addPlayerThink()
        }
    }
    function removePlayer(player)
    {
        Players.remove(player)
    }
    function getPlayerEntities()
    {
        local playerEntities = []
        local maxClientCount = MaxClients().tointeger()

        for(local index = 0; index < maxClientCount; index++)
        {
            local playerEntity = PlayerInstanceFromIndex(index)
            if(playerEntity)
                playerEntities.append(playerEntity)
        }
        return playerEntities
    }
    function getPlayers(team = null)
    {
        if(team == null) 
            return players
        
        local filteredPlayers = []
        foreach(player in players)
        {
            if(player.team == team)
                filteredPlayers.append(player)
        }
        return filteredPlayers
    }
    function getPlayerFromEntity(playerEntity)
    {
        foreach(Player in Players)
        {
            if(Player.entity == playerEntity)
                return Player
        }
        return null
    }
    constructor()
    {
        //Map = initializeMap(getMap())
        Players = []

    }
    function initializeServer()
    {
        Players = initializePlayers(getPlayerEntities())
        addPlayerThinks(Players)
    }
}
local ServerInstance = null

function main()
{
    ServerInstance = _Server()
    ServerInstance.initializeServer()
    printl(ServerInstance.Players)
    //ServerInstance.addPlayerThinks()
//    stvEnabled = (EntIndexToHScript(2) != null)
//    if(stvEnabled) SendToConsole("tv_stoprecord")
//
//    if(map == null) menuRotation = 0
//    else menuRotation = map.teles.options.ang
//
//    prepareMap()
//
//    gamemode = getGamemode()
//
//    setDefaultOptions()
//
//    preCacheSounds()
//
      ClientPrintSafe(null, "JPRAC LOADED")
//
//    if(enableTimerBar) timerBar = Entities.FindByClassname(null, "monster_resource")

    // TODO?: Show on hud with small symbols what options are selected. Like a little clock if timer is on, timer turns red when times up
}
// FUNC REGION: UTILITY

::ClientPrintSafe <- function(player, text)
{
    local escape = "^"

    if (!startswith(text, escape)) 
    {
        ClientPrint(player, 3, text)
        return;
    }
    local splittext = split(text, escape)

    for (local i = splittext.len() - 1; i >= 0; i--)
        if (splittext[i].len() < 1) 
            splittext.remove(i);
    
    local formatted = ""
    foreach (i, t in splittext)
        formatted += format("\x07%s", t)
    
    ClientPrint(player, 3, formatted)
}
::PlayerThink <- function()
{
    if(self == null || self.IsPlayer() == false)
        return
    local player = self
    local Player = ServerInstance.getPlayerFromEntity(player)
    
    //TODO: check if player alive first before doing things like regen ammo
	local buttons = NetProps.GetPropInt(player, "m_nButtons")
    if (buttons & Constants.FButtons.IN_ATTACK)
    {
          //if (!Player.attackPressed && Player.inOptionsMenu)
          //{
          //    pressButton()
          //}
          //if (!Player.inOptionsMenu && Player.chosenAmmo == ammo.ON_ATTACK)
          //{
          //    regenAmmo(1)
          //}
          Player.attackPressed = true
    }
    else 
    {
        Player.attackPressed = false
    }
    printl(Player.attackPressed)
//    if (!Player.inOptionsMenu && Player.chosenAmmo == ammo.INFINITE)
//    {
//        regenAmmo(1)
//    }
//    if (roundRestartTick != 0 && roundRestartTick < roundRestartTickMax) 
//    {
//        setSpeed(0.0)
//        roundRestartTick++
//    }
//    if (roundRestartTick == roundRestartTickMax)
//    {
//        // TODO: give time update once objective is reached.
//        stopSimulateRoundRestart()
//        onSimulateRoundRestartEnd()
//    }
//    if (stopwatchTick != 0 && !objectiveDone)
//    {
//        stopwatchTick++
//    }
//    if (teleTick != 0 && roundRestartTick < roundRestartTickMax)
//    {
//        teleTick++
//    }
//    if (teleTick == teleTickMax && teleTickMax != 0 && teleTickMax != null)
//    {
//        if(chosenTeleObjective == teleObjectives.NONE) onObjectiveEnd(player, chosenTeleObjective, objectiveResults.FAIL)
//        stopTeleTimer()
//    }
//    if (inOptionsMenu)
//    {
//        if(optionsMenuExists) triggerCollision(player.EyePosition(), menuBoundaries)
//        if(chosenHealth != health.OFF) regenHealth(chosenHealthRegen)
//        else regenHealth(1.0)
//        if(chosenAmmo != ammo.OFF) regenAmmo(chosenAmmoRegen)
//    }
//    if (!inOptionsMenu && player != null && objectiveBoundaries.len() > 0 && !objectiveDone)
//    {
//        triggerCollision(player.EyePosition(), objectiveBoundaries)
//    }
//    if((tickHealingTimer != 0 && tickHealingTimer < tickHealingTimerMax) || 
//       (chosenHealing == healing.INFINITE && !inOptionsMenu) || 
//       (tickHealingTimer != 0 && chosenHealing == healing.UNTIL_JUMP && !inOptionsMenu))
//    {
//        if((chosenHealing != healing.UNTIL_JUMP && chosenHealing != healing.INFINITE) || (chosenHealing == healing.UNTIL_JUMP && hasJumped)) tickHealingTimer++
//
//        local playerHealth = player.GetHealth()
//        local playerMaxHealth = player.GetMaxHealth()
//        local playerMaxOverheal = playerMaxHealth * standardOverhealMax
//        if (chosenHealingType == healingType.QUICK_FIX) playerMaxOverheal = playerMaxHealth * quickfixOverhealMax + 1
//        else playerMaxOverheal = (playerMaxOverheal / 5).tointeger()*5
//
//        local toHeal
//        //TODO: integrate heal ramp up?
//        toHeal = (tickHealingHealed + (playerHealth >= playerMaxHealth ? overhealPerTick : healPerTick)).tointeger() - tickHealingHealed.tointeger()
//
//        if(toHeal >= 1 && playerHealth < playerMaxOverheal)
//        {
//            heal(toHeal)
//        }
//        tickHealingHealed += healPerTick
//    }
//    if(tickHealingTimer == tickHealingTimerMax && tickHealingTimerMax != 0)
//    {
//        stopHealingTimer()
//        onHealingTimerEnd()
//    }
//    if((tickUberTimer != 0 && tickUberTimer < tickUberTimerMax) || (chosenUber == uber.INFINITE && !inOptionsMenu))
//    {
//        if((chosenUber != uber.UNTIL_JUMP && chosenUber != uber.INFINITE) || (chosenUber == uber.UNTIL_JUMP && hasJumped)) tickUberTimer++        
//    }
//    if(tickUberTimer == tickUberTimerMax && tickUberTimerMax != 0)
//    {
//        stopUberTimer()
//        onUberTimerEnd()
//    }
//    if (timerBar && teleTickMax != 0 && teleTickMax != null) 
//    {
//        local timerProgress = (teleTickMax.tofloat() - teleTick.tofloat()) / teleTickMax.tofloat()
//        local progressBytePercentage = max(min(round(timerProgress * 255, 0),255),0)
//        NetProps.SetPropInt(timerBar, "m_iBossHealthPercentageByte", progressBytePercentage)
//    }
//    if(!enableTimerBar && timerBar) NetProps.SetPropInt(timerBar, "m_iBossHealthPercentageByte", 0)

	return -1
}
::max <- function(x, y)
{
    if(x > y) return x
    return y
}
::min <- function(x, y)
{
    if(x > y) return y
    return x
}
::round <- function(val, decimalPoints) 
{
    local f = pow(10, decimalPoints) * 1.0;
    local newVal = val * f;
    newVal = floor(newVal + 0.5)
    newVal = (newVal * 1.0) / f;
    return newVal;
}
function getGamemode()
{
    local capAmount = capPoints.len()

    switch(capAmount)
    {
        case 1:
            return gamemodes.koth
        case 3:
            return gamemodes.cp3
        case 5:
            return gamemodes.cp
        default:
            printl("could not get gamemode")
    }
}


function prepareMap()
{
    local timer

    while (timer = Entities.FindByClassname(timer, "team_round_timer"))
    {
        timer.Kill()
    }

    for (local capPoint; capPoint = Entities.FindByClassname(capPoint, "team_control_point");)
	{
		capPoints.append(capPoint);
	}

    for (local regenPack; regenPack = Entities.FindByClassname(regenPack, "item_ammopack*");)
    {
        regenPacks.append(regenPack)
    }
    for (local regenPack; regenPack = Entities.FindByClassname(regenPack, "item_healthkit*");)
    {
        regenPacks.append(regenPack)
    }
    foreach(regenPack in regenPacks)
    {
        regenPack.__KeyValueFromString("OnPlayerTouch","!selfCallScriptFunctiononPackPickup0-1")
    }
    leaveOptionsMenu()
    destroyObjectiveTrigger()
}
function setDefaultOptions()
{
    chosenTele = teles.ON
    chosenTeleLocation = teleLocations.RIGHT_SPAWN
    chosenTeleTimer = 0
    chosenTeleObjective = teleObjectives.NONE

    chosenHealth = health.ON_TELE
    chosenHealthRegen = 1.5
    chosenHealing = healing.OFF
    chosenHealingType = healingType.MEDI_GUN
    chosenHealingTimer = 0

    chosenUber = uber.OFF
    chosenUberTimer = 0
    chosenAmmo = ammo.ON_TELE
    chosenAmmoType = ammoType.TOTAL
    chosenAmmoRegen = 1.0

    chosenBot = bots.OFF
    chosenBotSetup = botSetups.OUR_SECOND
    chosenCaps = caps.DEFAULT
    chosenCapsAmount = 0
    chosenLocks = locks.DEFAULT
}
::getTeleLocation <- function(loc)
{
    foreach(tele in map.teles)
    {
        if(tele.loc == loc) return tele
    }
    printl("tele not bound or unavailable")
    return null
}
::getBotSetup <- function(stp)
{
    foreach(setup in map.setups)
    {
        if(setup.stp == stp) return setup
    }
    printl("setup not bound or unavailable")
    return null
}
function setupBuilder(toBuilder)
{
    builder = toBuilder

    foreach(spawnedBuilding in spawnedBuildings)
    {
        EntFireByHandle(spawnedBuilding, "SetBuilder", "", 0, builder, this)
    }
}
function preCacheSounds()
{
    foreach(sound in sounds)
    {
        PrecacheSound(sound)
    }
}
function respawnPlayer()
{
    player.ForceRespawn()
}
function forceJoinTeam(team)
{
    player.ForceChangeTeam(2, false)
}
::lastDemoIndexFromFile <- function(demoFile)
{
    if(demoFile == "" || demoFile == null) return 0
    local demoFileEntries = split(demoFile,demoEntrySeperator)
    local lastDemoFileEntry = demoFileEntries.len()-1
    if(lastDemoFileEntry < 0) lastDemoFileEntry = 0
    local index = split(demoFileEntries[(demoFileEntries.len()-1)],",")[0].slice(demoId.len()).tointeger()
    return (index)
}
::stopSTV <- function()
{
    if(demoMarkedToSave)
    {
        local demoFile = FileToString(demoFileName)
        local lastDemoIndex = lastDemoIndexFromFile(demoFile)
        local newDemoIndex = lastDemoIndex+1
        local entrySeperator = ""
        if(demoFile != "") entrySeperator = demoEntrySeperator
        local secondsElapsed
        if(teleTickMax != 0 && teleTickMax != null) secondsElapsed = demoTimerId + round(stopwatchTick / ticksPerSecond.tofloat(),2) + "s"
        local newDemoEntry = demoId + newDemoIndex + demoFieldSeperator + demoMapId + mapName + demoFieldSeperator + demoTeleId + teleLocationsText[chosenTeleLocation] + demoFieldSeperator + demoObjectiveId + teleObjectivesText[chosenTeleObjective] + demoFieldSeperator + secondsElapsed
        
        StringToFile(demoFileName, demoFile + entrySeperator + newDemoEntry)
        ClientPrintSafe(null, "[JPRAC] Saved demo as " + DEMFileName + newDemoIndex)
        demoMarkedToSave = false
    }
    SendToConsole("tv_stoprecord")
    demoIsRecording = false
}
::recordSTV <- function()
{
    if(demoIsRecording) stopSTV()
    local demoFile = FileToString(demoFileName)
    if(demoFile == null) StringToFile(demoFileName, "")
    local newDemoIndex = lastDemoIndexFromFile(demoFile) + 1
    SendToConsole("tv_record " + DEMFileName + newDemoIndex)
    demoIsRecording = true
}
::ensureAlive <- function()
{
    local playerState = NetProps.GetPropInt(player, "m_lifeState")
    if (playerState == 0) return
    if (playerState == 3) forceJoinTeam(2)
    player.ForceRespawn()
}
::startSimulateRoundRestart <- function()
{
    player.ForceRegenerateAndRespawn()
    roundRestartTick++
}

::stopSimulateRoundRestart <- function()
{
    roundRestartTick = 0
    setSpeed(1.0)
}
::onSimulateRoundRestartEnd <- function()
{
    //TODO: Implement delayed buff
}
::stopTeleTimer <- function()
{
    teleTick = 0

    removeTeleTimerUI()
}
::stopStopwatch <- function()
{
    stopwatchTick = 0
}
::sendObjectiveMessage <- function(Player, objective, objectiveResult)
{

    local message
    //TODO: Add avg time of completion and PR
    local objectiveRuns = objectivePasses + objectiveFails + objectiveResets
    local objectivePassRate = round(objectivePasses.tofloat() / objectiveRuns.tofloat() * 100,0)
    local objectiveFailRate = round(objectiveFails.tofloat() / objectiveRuns.tofloat() * 100,0)
    local objectiveResetRate = round(objectiveResets.tofloat() / objectiveRuns.tofloat() * 100,0)

    //local objectiveStatMessage = "^FFFFFF[^00FF00" + objectivePassRate + "%^FFFFFF/^FF0000" + objectiveFailRate + "%^FFFFFF/^808080" + objectiveResetRate + "%^FFFFFF] "
    local messageStats = " with %^9ED57E" + objectivePassRate + "^FFFFFF/^E78174" + objectiveFailRate + "^FFFFFF/^808080" + objectiveResetRate

    local messageTag = "^FFFFFF[JPRAC]"
    local messageRunAmount = " #" + objectiveRuns + ":"

    local messageResult = ""
    switch(objectiveResult){
        case objectiveResults.RESET: messageResult = "^808080 RESET^FFFFFF"
            break
        case objectiveResults.PASS:  messageResult = "^9ED57E PASS^FFFFFF"
            break
        case objectiveResults.FAIL:  messageResult = "^E78174 FAIL^FFFFFF"
            break
        default: 
    }

    local messageTime = " "

    if(teleTickMax != 0 && teleTickMax != null) 
    {
        printl(teleTickMax)
        local secondsLeft
        if(secondsLeft < 0 || teleTick == 0) secondsLeft = 0
        else secondsLeft = round(teleTickMax / ticksPerSecond.tofloat() - teleTick / ticksPerSecond.tofloat(),2)

        local secondsElapsed = round(stopwatchTick / ticksPerSecond.tofloat(),2)
        local secondsElapsedDelta = round((stopwatchTick - teleTickMax) / ticksPerSecond.tofloat(),2)
        
        local averageSecondsElapsed
        local messageAverageSecondsElapsed = ""
        if (objectiveResult == objectiveResults.PASS || objectiveResult == objectiveResults.FAIL)
        {
            if(runningAverageSecondsElapsed == null) averageSecondsElapsed = secondsElapsed
            else averageSecondsElapsed = (runningAverageSecondsElapsed * (objectivePasses +  objectiveFails - 1) + secondsElapsed) / (objectivePasses +  objectiveFails)
            runningAverageSecondsElapsed = averageSecondsElapsed
            averageSecondsElapsed = round(averageSecondsElapsed, 2)
            messageAverageSecondsElapsed = " avg. " + averageSecondsElapsed + "s"
        }
        local textDeltaPositive = ""
        if (secondsElapsedDelta > 0) textDeltaPositive = "^E78174+"
 
        if (objectiveResult == objectiveResults.RESET) messageTime = messageTime = " @" + secondsElapsed + "s"
        else messageTime = " @" + secondsElapsed + "s" + " (^9ED57E" + textDeltaPositive + secondsElapsedDelta + "^FFFFFF)" + messageAverageSecondsElapsed
    }
    local message = messageTag + messageRunAmount + messageResult + messageTime + messageStats
    ClientPrintSafe(null, message)
}
::stopHealingTimer <- function()
{
    tickHealingTimer = 0
}
::stopUberTimer <- function()
{
    tickUberTimer = 0
}
::setSpeed <- function(mult)
{
    if (mult == 0.0) NetProps.SetPropFloat(player, "m_flMaxspeed", 0.5)
    else
    {
        local playerClass = player.GetPlayerClass()
        local baseSpeed
        switch(playerClass)
        {
            case mercs.SCOUT: 
                baseSpeed = 400
                break
            case mercs.SNIPER: 
                baseSpeed = 300
                break
            case mercs.SOLDIER: 
                baseSpeed = 240
                break
            case mercs.DEMOMAN: 
                baseSpeed = 280
                break
            case mercs.MEDIC: 
                baseSpeed = 320
                break
            case mercs.HEAVYWEAPONS: 
                baseSpeed = 230
                break
            case mercs.PYRO: 
                baseSpeed = 300
                break
            case mercs.SPY: 
                baseSpeed = 300
                break
            case mercs.ENGINEER: 
                baseSpeed = 300
                break
            default: 
                baseSpeed = 520
                break
        }
        NetProps.SetPropFloat(player, "m_flMaxspeed", baseSpeed * mult)
    }
}
::turnBuffDecayOff <- function()
{
    Convars.SetValue("tf_boost_drain_time", 99999999)
}
::turnBuffDecayOn <- function()
{
    Convars.SetValue("tf_boost_drain_time", 15)
}
::CallFunctionFromString <- function(str, player)
{
    switch(str)
    {
        case "tele1": tele1()
        break
        case "tele2": tele2()
        break
        case "tele3": tele3()
        break
        case "tele4": tele4()
        break
        case "teleLocation1": teleLocation1()
        break
        case "teleLocation2": teleLocation2()
        break
        case "teleLocation3": teleLocation3()
        break
        case "teleLocation4": teleLocation4()
        break
        case "teleLocation5": teleLocation5()
        break
        case "teleLocation6": teleLocation6()
        break
        case "teleLocation7": teleLocation7()
        break
        case "teleLocation8": teleLocation8()
        break
        case "teleLocation9": teleLocation9()
        break
        case "teleLocation10": teleLocation10()
        break
        case "teleLocation11": teleLocation11()
        break
        case "teleLocation12": teleLocation12()
        break
        case "teleTimer1": teleTimer1()
        break
        case "teleTimer2": teleTimer2()
        break
        case "teleTimer3": teleTimer3()
        break
        case "teleTimer4": teleTimer4()
        break
        case "teleObjective1": teleObjective1()
        break
        case "teleObjective2": teleObjective2()
        break
        case "teleObjective3": teleObjective3()
        break
        case "teleObjective4": teleObjective4()
        break
        case "health1": health1()
        break
        case "health2": health2()
        break
        case "health3": health3()
        break
        case "health4": health4()
        break
        case "healthRegen1": healthRegen1()
        break
        case "healthRegen2": healthRegen2()
        break
        case "healthRegen3": healthRegen3()
        break
        case "healthRegen4": healthRegen4()
        break
        case "healthRegenAdd1": healthRegenAdd1()
        break
        case "healthRegenAdd2": healthRegenAdd2()
        break
        case "healthRegenAdd3": healthRegenAdd3()
        break
        case "healthRegenAdd4": healthRegenAdd4()
        break
        case "healing1": healing1()
        break
        case "healing2": healing2()
        break
        case "healing3": healing3()
        break
        case "healing4": healing4()
        break
        case "healingType1": healingType1()
        break
        case "healingType2": healingType2()
        break
        case "healingType3": healingType3()
        break
        case "healingType4": healingType4()
        break
        case "healingLength1": healingLength1()
        break
        case "healingLength2": healingLength2()
        break
        case "healingLength3": healingLength3()
        break
        case "healingLength4": healingLength4()
        break
        case "uber1": uber1()
        break
        case "uber2": uber2()
        break
        case "uber3": uber3()
        break
        case "uber4": uber4()
        break
        case "uberLength1": uberLength1()
        break
        case "uberLength2": uberLength2()
        break
        case "uberLength3": uberLength3()
        break
        case "uberLength4": uberLength4()
        break
        case "ammo1": ammo1()
        break
        case "ammo2": ammo2()
        break
        case "ammo3": ammo3()
        break
        case "ammo4": ammo4()
        break
        case "ammoType1": ammoType1()
        break
        case "ammoType2": ammoType2()
        break
        case "ammoType3": ammoType3()
        break
        case "ammoType4": ammoType4()
        break
        case "ammoRegen1": ammoRegen1()
        break
        case "ammoRegen2": ammoRegen2()
        break
        case "ammoRegen3": ammoRegen3()
        break
        case "ammoRegen4": ammoRegen4()
        break
        case "ammoRegenAdd1": ammoRegenAdd1()
        break
        case "ammoRegenAdd2": ammoRegenAdd2()
        break
        case "ammoRegenAdd3": ammoRegenAdd3()
        break
        case "ammoRegenAdd4": ammoRegenAdd4()
        break
        case "bot1": bot1()
        break
        case "bot2": bot2()
        break
        case "bot3": bot3()
        break
        case "bot4": bot4()
        break
        case "botSetup1": botSetup1()
        break
        case "botSetup2": botSetup2()
        break
        case "botSetup3": botSetup3()
        break
        case "botSetup4": botSetup4()
        break
        case "botSetup5": botSetup5()
        break
        case "botSetup6": botSetup6()
        break
        case "botSetup7": botSetup7()
        break
        case "botSetup8": botSetup8()
        break
        case "botSetup9": botSetup9()
        break
        case "botSetup10": botSetup10()
        break
        case "botSetup11": botSetup11()
        break
        case "botSetup12": botSetup12()
        break
        case "cap1": cap1()
        break
        case "cap2": cap2()
        break
        case "capAdd1": capAdd1()
        break
        case "capAdd2": capAdd2()
        break
        case "lock1": lock1()
        break
        case "lock2": lock2()
        break
        case "lock3": lock3()
        break
        case "lock4": lock4()
        break
        case "use": use()
        break
        case "toggleOptionsMenu": toggleOptionsMenu()
        break
        case "saveTele1": saveTele1()
        break
        case "saveTele2": saveTele2()
        break
        case "saveTele3": saveTele3()
        break
        case "saveTele4": saveTele4()
        break
        case "createObjectiveTrigger": createObjectiveTrigger()
        break
        case "markToSaveDemo": markToSaveDemo()
        break
        case "test": test()
        break
        default: return
    }
}
// FUNC REGION: USER
::test <- function() //testing purposes only, to be removed
{
    foreach(player in players)
    {
        ClientPrintSafe(player, "lol")
    }
}
::use <- function()
{
    if(activator == null || !activator.IsPlayer())
        return
    local player = activator

    if(inOptionsMenu) 
    {
        leaveOptionsMenu()
        leftMenu = true
        use()
        return
    }
    if(!leftMenu && !objectiveDone && chosenTeleObjective != teleObjectives.NONE) 
    {
        onObjectiveEnd(player, chosenTeleObjective, objectiveResults.RESET)
    }
    if(stvEnabled) recordSTV()
    
    ensureAlive()
    resetPacks()
    stopTimers()
    hasJumped = false
    objectiveDone = false

    if(chosenTele == teles.ON || chosenTele == teles.TIMED) tele(getTeleLocation(chosenTeleLocation))
    if(chosenTeleTimer > 0) startTeleTimer()
    if(chosenTele == teles.ROUND_RESTART) startSimulateRoundRestart()
    if(chosenHealth != health.OFF) regenHealth(chosenHealthRegen)
    if(chosenAmmo == ammo.ON_TELE) regenAmmo(chosenAmmoRegen)
    if((chosenHealingTimer > 0 && chosenHealing == healing.ON_TELE) || chosenHealing == healing.INFINITE || chosenHealing == healing.UNTIL_JUMP) startHealingTimer()
    if((chosenUberTimer > 0 && chosenUber == uber.ON_TELE) || chosenUber == uber.INFINITE || chosenUber == uber.UNTIL_JUMP) startUberTimer()
    if(chosenCaps == caps.OVERRIDE) setCaps()
    if(chosenBot != bots.OFF) spawnBots(getBotSetup(chosenBotSetup))

    local cps = [];
	for (local cp; cp = Entities.FindByClassname(cp, "team_control_point");)
	{
		cps.append(cp);
	}

    leftMenu = false
}

::removeBots <- function()
{
    foreach(botGenerator in botGenerators)
    {
        EntFireByHandle(botGenerator, "RemoveBots", "", 0, null, this)
        EntFireByHandle(botGenerator, "Kill", "", 0, null, this)
    }
    foreach(spawnedBuilding in spawnedBuildings)
    {
        EntFireByHandle(spawnedBuilding, "Kill", "", 0, null, this)
        //TODO: Add way of removing orphan buildings
    }
    botGenerators = []
    spawnedBuildings = []
    builder = null
}
::spawnBots <- function(setup)
{
    removeBots()

    if (setup == null) return

    foreach(bot in setup.bots)
    {
        local botGenerator = SpawnEntityFromTable("bot_generator", 
        {
            team = "blue", 
            origin = bot.pos, 
            angles = bot.ang,
            count = 1,
            maxActive = 1,
            initial_command = "taunt",
            retainBuildings = true,
            actionOnDeath = 1,
            useTeamSpawnPoint = chosenTele == teles.ROUND_RESTART,
            spawnOnlyWhenTriggered = true,
            targetname = "botGenerator_" + bot.name,
        })
        botGenerator.__KeyValueFromString("class", "" + bot.merc)

        botGenerators.append(botGenerator)

        EntFireByHandle(botGenerator, "SpawnBot", "", 0, null, this)
    }

    foreach(building in setup.buildings)
    {
        local spawnedBuilding

        switch(building.type)
        {
            case buildings.SENTRY:
                spawnedBuilding = SpawnEntityFromTable("obj_sentrygun",  { Team = teams.BLUE, defaultupgrade = (building.lvl - 1), origin = building.pos, angles = building.ang, targetName = "spawnedBuilding_" + buildings.SENTRY.tostring()})
                break
            case buildings.DISPENSER:
                spawnedBuilding = SpawnEntityFromTable("obj_dispenser",  { Team = teams.BLUE, defaultupgrade = (building.lvl - 1), origin = building.pos, angles = building.ang, targetName = "spawnedBuilding_" + buildings.DISPENSER.tostring()})
                break
            case buildings.TELE_ENTRANCE:
                spawnedBuilding = SpawnEntityFromTable("obj_teleporter", { Team = teams.BLUE, defaultupgrade = (building.lvl - 1), origin = building.pos, angles = building.ang, targetName = "spawnedBuilding_" + buildings.TELE_ENTRANCE.tostring()})
                break
            case buildings.TELE_EXIT:
                spawnedBuilding = SpawnEntityFromTable("obj_teleporter", { Team = teams.BLUE, defaultupgrade = (building.lvl - 1), origin = building.pos, angles = building.ang, targetName = "spawnedBuilding_" + buildings.TELE_EXIT.tostring()})
                break
            default:
                printl("wrong or unspecified building type")
        }
        spawnedBuildings.append(spawnedBuilding)
    }
    //TODO: make sure entrance and exit are connected
}
::tele <- function(destination)
{
    if (destination == null) return
    player.Teleport(true, destination.pos, true, destination.ang, true, destination.vel)
}
function markToSaveDemo()
{
    if(stvEnabled) 
    {
        if(demoMarkedToSave) stopSTV()
        else if (demoIsRecording)
        {
            ClientPrintSafe(null, "[JPRAC] Demo marked to save; Mark again to stop recording now.")
            demoMarkedToSave = true
        }
    }
    else enableSTV()
}
function enableSTV()
{
    SendToConsole(("tv_enable 1; wait 50; changelevel " + mapName))
}
function saveTele1()
{
    map.teles.custom1 <- { loc = teleLocations.CUSTOM_1, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_1)
}
function saveTele2()
{
    map.teles.custom2 <- { loc = teleLocations.CUSTOM_2, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_2)
}
function saveTele3()
{
    map.teles.custom3 <- { loc = teleLocations.CUSTOM_3, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_3)
}
function saveTele4()
{
    map.teles.custom4 <- { loc = teleLocations.CUSTOM_4, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_4)
}
::regenHealth <- function(multiplier)
{
    //TODO: set health multiple of 5
    local maxHealth = player.GetMaxHealth()
    local regenHealth = maxHealth * multiplier
    if(chosenHealingType != healingType.QUICK_FIX) regenHealth = (regenHealth / 5).tointeger()*5
    player.SetHealth(regenHealth)
}
::heal <- function(amount)
{
    player.SetHealth(player.GetHealth()+amount)
}
::regenAmmo <- function(multiplier)
{
    local weapon = player.GetActiveWeapon()
    local maxClip = weapon.GetMaxClip1()
    local maxReserve = maxClip*4

    //printl(NetProps.GetPropIntArray(player, "m_iAmmo", weapon.GetPrimaryAmmoType()))
    weapon.SetClip1(weapon.GetDefaultClip1()*multiplier)
    NetProps.SetPropIntArray(player, "m_iAmmo", weapon.GetDefaultClip1()*4*multiplier, weapon.GetPrimaryAmmoType())
}
::regenReserve <- function(multiplier)
{
    //split functions??
}
::startTeleTimer <- function()
{
    createTeleTimerUI(chosenTeleTimer)
    EntFireByHandle(teleTimerUI, "Resume", "", 0, null, this)

    teleTickMax = chosenTeleTimer * ticksPerSecond 
    teleTick++
    stopwatchTick++
}
::startHealingTimer <- function()
{
    healPerTick = standardHealrate / ticksPerSecond
    if(chosenHealingType == healingType.QUICK_FIX) healPerTick = healPerTick * quickfixHealrateMultiplier

    overhealPerTick = healPerTick
    if (chosenHealingType == healingType.VACCINATOR) overhealPerTick = overhealPerTick * vaccinatorOverhealrateMultiplier

    tickHealingTimerMax = chosenHealingTimer * ticksPerSecond
    if (chosenHealing == healing.INFINITE || (chosenHealing == healing.UNTIL_JUMP && tickHealingTimerMax < 2)) tickHealingTimerMax = 2

    turnBuffDecayOff()
    tickHealingHealed = 0
    tickHealingTimer++
}
::startUberTimer <- function()
{
    tickUberTimerMax = chosenUberTimer * ticksPerSecond
    if (chosenUber == uber.INFINITE || (chosenUber == uber.UNTIL_JUMP && tickUberTimerMax < 2)) tickUberTimerMax = 2
    tickUberTimer++
    onUberTimerStart()
}
::setCaps <- function()
{
    //TODO: Handle koth
    local capMatrix

    switch (chosenCaps)
    {
        case caps.DEFAULT:
            capMatrix = gamemode.controls[0]
            break
        case caps.OVERRIDE:
            capMatrix = gamemode.controls[chosenCapsAmount]
            break
        default:
            printl("chosen caps not found")
    }

    local lockMatrix

    switch (chosenLocks)
    {
        case locks.DEFAULT:
            lockMatrix = gamemode.locks.def[chosenCapsAmount]
            break
        case locks.ALL:
            lockMatrix = gamemode.locks.all[chosenCapsAmount]
            break
        case locks.ATTACK:
            lockMatrix = gamemode.locks.attack[chosenCapsAmount]
            break
        case locks.DEFEND:
            lockMatrix = gamemode.locks.defend[chosenCapsAmount]
            break
        default:
            printl("chosen locks not found")
    }
    foreach(capPoint in capPoints)
    {
        local pointIndex = NetProps.GetPropInt(capPoint, "m_iPointIndex")
        EntFireByHandle(capPoint, "SetOwner", "" + capMatrix[pointIndex], 0, null, player)
    }
    foreach(capPoint in capPoints)
    {
        local pointIndex = NetProps.GetPropInt(capPoint, "m_iPointIndex")
        EntFireByHandle(capPoint, "SetLocked", "" + lockMatrix[pointIndex], 0, null, player)
    }
}
::onHealingTimerEnd <- function()
{
    if(!inOptionsMenu) 
    {
        turnBuffDecayOn()
    }
}
::onUberTimerStart <- function()
{
    switch (chosenHealingType)
    {
        case healingType.MEDI_GUN:
            player.AddCond(5)
            break
        case healingType.KRITZKRIEG:
            player.AddCond(11)
            break
        case healingType.QUICK_FIX:
            player.AddCond(28)
            break
        case healingType.VACCINATOR:
            player.AddCond(58)
            break
        default:
            printl("no matching uber type found")
            break
    }
}
::onUberTimerEnd <- function()
{
    switch (chosenHealingType)
    {
        case healingType.MEDI_GUN:
            player.RemoveCond(5)
            break
        case healingType.KRITZKRIEG:
            player.RemoveCond(11)
            break
        case healingType.QUICK_FIX:
            player.RemoveCond(28)
            break
        case healingType.VACCINATOR:
            player.RemoveCond(58)
            break
        default:
            printl("no matching uber type found")
            break
    }
}
::createTeleTimerUI <- function(seconds)
{
    removeTeleTimerUI()
    if(seconds == 0) return

    teleTimerUI = SpawnEntityFromTable("team_round_timer", {
        targetName = "teleTimerUI"
        timer_length = 0
        max_length = 1000
        timer_length = seconds
        show_in_hud = 1
        auto_countdown = 0
    })
    EntFireByHandle(teleTimerUI, "Enable", "", 0, null, this)
    EntFireByHandle(teleTimerUI, "Pause", "", 0, null, this)
    EntFireByHandle(teleTimerUI, "Restart", "", 0, null, this)
    
}
::onObjectiveEnd <- function(player, objective, objectiveResult)
{
    if(objectiveResult == objectiveResults.PASS) objectivePasses++
    if(objectiveResult == objectiveResults.FAIL) objectiveFails++
    if(objectiveResult == objectiveResults.RESET) objectiveResets++

    sendObjectiveMessage(objective, objectiveResult)
}
::removeTeleTimerUI <- function()
{
    if(teleTimerUI != null) 
    {
        teleTimerUI.Kill()
        teleTimerUI = null
    }
}
::resetPacks <- function()
{
    packsAreAutoMaterializing = false
    foreach(regenPack in regenPacks)
    {
        regenPack.__KeyValueFromInt("AutoMaterialize", 0)
        EntFireByHandle(regenPack, "Enable", "", 0, null, this)
    }
}
::autoMaterializePacks <- function()
{
    // Doing this using output because does not seem to work in same frame as resetting the packs
    // Kinda dirty work around
    foreach(regenPack in regenPacks)
    {
        regenPack.__KeyValueFromInt("AutoMaterialize", 1)
    }
    packsAreAutoMaterializing = true
}
::onPackPickup <- function()
{
    if(!packsAreAutoMaterializing) autoMaterializePacks()
}
::stopTimers <- function()
{
    stopSimulateRoundRestart()
    stopTeleTimer()
    stopStopwatch()
    stopHealingTimer()
    stopUberTimer()
    onUberTimerEnd()
}

// FUNC REGION: GENERIC BUTTON
::buttonMiss <- function()
{
    printl("miss")
}
::leftMenu <- function()
{
    use()
}
::reachedObjective <- function()
{
    if(objectiveDone) 
        return
    if(activator == null || activator.IsPlayer() == false) 
        return

    local player = activator
    
    objectiveDone = true

    EmitSoundEx({
    sound_name = sounds.buttonPress, 
    })

    if(teleTickMax == null || teleTickMax == 0)
    {
        onObjectiveEnd(player, teleObjectives.REACH, objectiveResults.PASS)
        return
    }

    if(teleTick == 0 && stopwatchTick != 0) 
    {
        onObjectiveEnd(player, teleObjectives.REACH, objectiveResults.FAIL)
    }
    else 
    {
        onObjectiveEnd(player, teleObjectives.REACH, objectiveResults.PASS)
    }
    stopStopwatch()
}
::playPressSound <- function()
{
    EmitSoundEx({
    sound_name = sounds.buttonPress, 
    })
}
::playClickSound <- function()
{
    EmitSoundEx({
    sound_name = sounds.buttonPress, 
    })
}
::bDisable <- function(button)
{
    if(!inOptionsMenu) return
    EntFireByHandle(button, "Disable", "", 0, this, this)
    button.__KeyValueFromFloat("solid", 0)
}
::bEnable <- function(button)
{
    if(!inOptionsMenu) return
    EntFireByHandle(button, "Enable", "", 0, this, this)
    button.__KeyValueFromFloat("solid", 2)
}
::bEnableOptionsCategory <- function(optionsCategory)
{
    if(!inOptionsMenu) return
    foreach(option in optionsCategory)
    {
        bEnable(option)
    }
}
::bTextDisable <- function(text)
{
    if(!inOptionsMenu) return
    text.__KeyValueFromString("color", bTextHighlightedColor)
}
::bTextEnable <- function(text)
{
    if(!inOptionsMenu) return
    text.__KeyValueFromString("color", bTextOffRedColor)
}
::bEnableOptionsTextCategory <- function(optionsTextCategory)
{
    if(!inOptionsMenu) return
    foreach(text in optionsTextCategory)
    {
        bTextEnable(text)
    }
}
::bPress <- function()
{
    playPressSound()
}
::bClick <- function()
{
    playClickSound()
}
::triggerCollision <- function(point, triggers)
{
    local colGroups = []

    foreach(trigger in triggers)
    {
        colGroups.append(trigger.GetCollisionGroup())
        trigger.SetCollisionGroup(0)
        trigger.RemoveSolidFlags(4)
    }

    local trace = {}
    trace =
    {
        start = point
        end = point
        ignore = player
    }
    TraceLineEx(trace)

    for (local i = 0; i < triggers.len(); i++) 
    {
        triggers[i].SetCollisionGroup(colGroups[i])
        triggers[i].AddSolidFlags(4)
    }

    if(trace.hit)
    {
        EntFireByHandle(trace.enthit, "FireUser3", "", 0, this, null)
        EntFireByHandle(trace.enthit, "FireUser4", "", 0, this, null)
    }
}
::pressButton <- function()
{
	local triggers = [];
	for (local trigger; trigger = Entities.FindByClassname(trigger, "trigger_multiple");)
	{
		trigger.RemoveSolidFlags(4);
		triggers.append(trigger);
	}
    local trace = {}
    trace =
	{
		start = player.EyePosition(),
		end = player.EyePosition() + (player.EyeAngles().Forward() * 32768.0),
		ignore = player
	}
    TraceLineEx(trace)

    if(trace.enthit.GetName().find("optionsMenu_button") != null)
    {
        EntFireByHandle(trace.enthit, "FireUser1", "", 0, this, null)
        EntFireByHandle(trace.enthit, "FireUser2", "", 0, this, null)
    }
    else
    {
        printl(trace.enthit.GetClassname())
        printl(trace.pos)
    }
    foreach (trigger in triggers)
	{
		trigger.AddSolidFlags(4)
	}
}

// FUNC REGION: TELE SELECT LOGIC
::turnTeleLocationOff <- function()
{
    if(inOptionsMenu)
    {
        bEnableOptionsCategory(optionsGroupTeleLocation)
        bEnableOptionsTextCategory(optionsTextsGroupTeleLocation)
    }
}
::turnTeleLocationOn <- function()
{
    if(inOptionsMenu)
    {
        bEnableOptionsCategory(optionsGroupTeleLocation)
        bEnableOptionsTextCategory(optionsTextsGroupTeleLocation)
        bDisable(optionsGroupTeleLocation[chosenTeleLocation])
        bTextDisable(optionsTextsGroupTeleLocation[chosenTeleLocation])
    }
}
::turnTeleObjectiveOff <- function()
{
    if(inOptionsMenu)
    {
        bEnableOptionsCategory(optionsGroupTeleObjective)
        bEnableOptionsTextCategory(optionsTextsGroupTeleObjective)
    }
}
::turnTeleObjectiveOn <- function()
{
    if(inOptionsMenu)
    {
        bEnableOptionsCategory(optionsGroupTeleObjective)
        bEnableOptionsTextCategory(optionsTextsGroupTeleObjective)
        bDisable(optionsGroupTeleObjective[chosenTeleObjective])
        bTextDisable(optionsTextsGroupTeleObjective[chosenTeleObjective])
    }
}
::addTeleTimer <- function(amount)
{
    if (chosenTele != teles.TIMED && chosenTele != teles.ROUND_RESTART) changeTele(teles.TIMED)
    if (chosenTeleTimer + amount >= 0) chosenTeleTimer += amount
    else chosenTeleTimer = 0

    if(chosenTele == teles.TIMED && chosenTeleTimer == 0) changeTele(teles.ON)

    createTeleTimerUI(chosenTeleTimer)
}
::changeTele <- function(toTele)
{
    if(chosenTele == toTele) return
        
    if(toTele == teles.OFF) 
    {
        turnTeleLocationOff()
        turnTeleObjectiveOff()
        chosenTeleTimer = 0
        createTeleTimerUI(chosenTeleTimer)
    }
    else 
    {
        turnTeleLocationOn()
        turnTeleObjectiveOn()
        if(toTele != teles.TIMED && toTele != teles.ROUND_RESTART && chosenTeleTimer != 0) addTeleTimer(-chosenTeleTimer)
    }
    if(toTele == teles.ROUND_RESTART)
    {
        turnTeleLocationOff()
        //TODO: In case this makes options menu less intuitive, find better way for changing this for RR only.
        changeCap(caps.OVERRIDE)
        chosenCapsAmount = 0
        changeLock(locks.DEFAULT)
    }
    
    chosenTele = toTele

    if(toTele == teles.TIMED && chosenTeleTimer == 0) addTeleTimer(10)

    bEnableOptionsCategory(optionsGroupTele)
    bEnableOptionsTextCategory(optionsTextsGroupTele)
    bDisable(optionsGroupTele[toTele])
    bTextDisable(optionsTextsGroupTele[toTele])
}
::changeTeleLocation <- function(toTeleLocation)
{
    if(chosenTele == teles.OFF || chosenTele == teles.ROUND_RESTART) 
    {
        if(chosenTeleTimer == 0) changeTele(teles.ON)
        else changeTele(teles.TIMED)
    }

    if(chosenTeleLocation != toTeleLocation)
    {
        if(inOptionsMenu)
        {
            bEnableOptionsCategory(optionsGroupTeleLocation)
            bEnableOptionsTextCategory(optionsTextsGroupTeleLocation)
            bDisable(optionsGroupTeleLocation[toTeleLocation])
            bTextDisable(optionsTextsGroupTeleLocation[toTeleLocation])
        }
        chosenTeleLocation = toTeleLocation
    }
}
::changeTeleObjective <- function(toTeleObjective)
{

    if(chosenTele == teles.OFF) changeTele(teles.ON)

    if(toTeleObjective == teleObjectives.NONE) 
    {
        resetObjectiveStats()
    }

    if(toTeleObjective != teleObjectives.REACH && chosenTeleObjective == teleObjectives.REACH) 
    {
        destroyObjectiveTrigger()
        SendToConsole("ent_absbox objectiveBoundary")
    }
    if(toTeleObjective == teleObjectives.REACH && objectiveBoundaries.len() == 0) ClientPrintSafe(null, "Use F9 to place a reach objective on your cursor")

    if(chosenTeleObjective != toTeleObjective)
    {
        bEnableOptionsCategory(optionsGroupTeleObjective)
        bEnableOptionsTextCategory(optionsTextsGroupTeleObjective)
        bDisable(optionsGroupTeleObjective[toTeleObjective])
        bTextDisable(optionsTextsGroupTeleObjective[toTeleObjective])
        chosenTeleObjective = toTeleObjective
    }
}
::resetObjectiveStats <- function()
{
    objectivePasses = 0
    objectiveFails = 0
    objectiveResets = 0
}

// FUNC REGION: HEALTH & HEALING SELECT LOGIC
::changeHealth <- function(toHealth)
{
    if(chosenHealth == toHealth) return

    chosenHealth = toHealth

    if(toHealth == health.NEGATE_DAMAGE) addDamageMultiplier(-1)
    if(toHealth == health.PREVENT_DAMAGE) addDamageMultiplier(0)
    if(toHealth != health.NEGATE_DAMAGE && toHealth != health.PREVENT_DAMAGE) removeDamageMultiplier()

    bEnableOptionsCategory(optionsGroupHealth)
    bEnableOptionsTextCategory(optionsTextsGroupHealth)
    bDisable(optionsGroupHealth[toHealth])
    bTextDisable(optionsTextsGroupHealth[toHealth])
}
::changeHealthRegen <- function(toHealthRegen)
{
    if(chosenHealthRegen == toHealthRegen) return

    chosenHealthRegen = toHealthRegen

    bEnableOptionsCategory(optionsGroupHealthRegen)
    bEnableOptionsTextCategory(optionsTextsGroupHealthRegen)
    //bDisable(optionsGroupHealthRegen[toHealthRegen])
    //bTextDisable(optionsTextsGroupHealthRegen[toHealthRegen])
}
::addHealthRegen <- function(amount)
{
    if((chosenHealthRegen + amount) <= 0) chosenHealthRegen = 0
    else chosenHealthRegen += amount

    bEnableOptionsCategory(optionsGroupHealth)
    bEnableOptionsTextCategory(optionsTextsGroupHealth)
    //bDisable(optionsGroupHealth[toHealth])
    //bTextDisable(optionsTextsGroupHealth[toHealth])
}
::changeHealing <- function(toHealing)
{
    if(chosenHealing == toHealing) return

    chosenHealing = toHealing

    bEnableOptionsCategory(optionsGroupHealing)
    bEnableOptionsTextCategory(optionsTextsGroupHealing)
    bDisable(optionsGroupHealing[toHealing])
    bTextDisable(optionsTextsGroupHealing[toHealing])
}
::changeHealingType <- function(toHealingType)
{
    if(chosenHealingType == toHealingType) return

    chosenHealingType = toHealingType



    bEnableOptionsCategory(optionsGroupHealingType)
    bEnableOptionsTextCategory(optionsTextsGroupHealingType)
    bDisable(optionsGroupHealingType[toHealingType])
    bTextDisable(optionsTextsGroupHealingType[toHealingType])
}
::addHealingTime <- function(amount)
{
    if((chosenHealingTimer + amount) <= 0) chosenHealingTimer = 0
    else chosenHealingTimer += amount

    bEnableOptionsCategory(optionsGroupHealingTimer)
    bEnableOptionsTextCategory(optionsTextsGroupHealingTimer)
    //bDisable(optionsGroupHealingTimer[toHealingTimer])
    //bTextDisable(optionsTextsGroupHealingTimer[toHealingTimer])
}
::addDamageMultiplier <- function(amount)
{
    removeDamageMultiplier()

    currentDamageMultiplier = amount
    //TODO: Make sure on player death, this gets reapplied using OnSpawn event (after 1 frame) and using currentdamagemultiplier if the multiplier != 1

    player.AddCustomAttribute("blast dmg to self increased", 0, -1)
    player.AddCustomAttribute("cancel falling damage", 1, -1)
    player.AddCustomAttribute("dmg taken from blast reduced", amount, -1)
    player.AddCustomAttribute("dmg taken from fire reduced", amount, -1)
    player.AddCustomAttribute("dmg taken from bullets reduced", amount, -1)
    //TODO: Damage prevention does not work with extra attributes like the escape plan. Find way to fix this??
}
::removeDamageMultiplier <- function()
{
    currentDamageMultiplier = 1

    player.RemoveCustomAttribute("blast dmg to self increased")
    player.RemoveCustomAttribute("cancel falling damage")
    player.RemoveCustomAttribute("dmg taken from blast reduced")
    player.RemoveCustomAttribute("dmg taken from fire reduced")
    player.RemoveCustomAttribute("dmg taken from bullets reduced")
}

// FUNC REGION: UBER & AMMO SELECT LOGIC
::changeUber <- function(toUber)
{
    if(chosenUber == toUber) return

    chosenUber = toUber

    bEnableOptionsCategory(optionsGroupUber)
    bEnableOptionsTextCategory(optionsTextsGroupUber)
    bDisable(optionsGroupUber[toUber])
    bTextDisable(optionsTextsGroupUber[toUber])
}
::addUberLength <- function(amount)
{
    if((chosenUberTimer + amount) <= 0) chosenUberTimer = 0
    else chosenUberTimer += amount
    
    bEnableOptionsCategory(optionsGroupUberTimer)
    bEnableOptionsTextCategory(optionsTextsGroupUberTimer)
    //bDisable(optionsGroupUberTimer[toUberTimer])
    //bTextDisable(optionsTextsGroupUberTimer[toUberTimer])
}
::changeAmmo <- function(toAmmo)
{
    if(chosenAmmo == toAmmo) return

    chosenAmmo = toAmmo

    bEnableOptionsCategory(optionsGroupAmmo)
    bEnableOptionsTextCategory(optionsTextsGroupAmmo)
    bDisable(optionsGroupAmmo[toAmmo])
    bTextDisable(optionsTextsGroupAmmo[toAmmo])  
}
::changeAmmoType <- function(toAmmoType)
{
    if(chosenAmmoType == toAmmoType) return

    chosenAmmoType = toAmmoType

    bEnableOptionsCategory(optionsGroupAmmoType)
    bEnableOptionsTextCategory(optionsTextsGroupAmmoType)
    bDisable(optionsGroupAmmoType[toAmmoType])
    bTextDisable(optionsTextsGroupAmmoType[toAmmoType])    
}
::changeAmmoRegen <- function(amount)
{
    if(chosenAmmoRegen == amount) return

    chosenAmmoRegen = amount

    bEnableOptionsCategory(optionsGroupAmmoRegen)
    bEnableOptionsTextCategory(optionsTextsGroupAmmoRegen)
    //bDisable(optionsGroupAmmoRegen[toAmmoRegen])
    //bTextDisable(optionsTextsGroupAmmoRegen[toAmmoRegen])    
}
::addAmmoRegen <- function(amount)
{
    if((chosenAmmoRegen + amount) <= 0) chosenAmmoRegen = 0
    else chosenAmmoRegen += amount

    bEnableOptionsCategory(optionsGroupAmmoRegen)
    bEnableOptionsTextCategory(optionsTextsGroupAmmoRegen)
    //bDisable(optionsGroupHealth[toHealth])
    //bTextDisable(optionsTextsGroupHealth[toHealth])
}

// FUNC REGION: BOTS & CAPS SELECT LOGIC
::changeBot <- function(toBot)
{
    if(chosenBot == toBot) return

    if(toBot == bots.OFF) 
    {
        turnBotSetupOff()
        if (botGenerators.len() > 0) removeBots()
    }
    else 
    {
        changeBotDifficulty(toBot)
        turnBotSetupOn()
    }

    chosenBot = toBot

    bEnableOptionsCategory(optionsGroupBot)
    bEnableOptionsTextCategory(optionsTextsGroupBot)
    bDisable(optionsGroupBot[toBot])
    bTextDisable(optionsTextsGroupBot[toBot])    
}
::changeBotDifficulty <- function(difficulty)
{
    Convars.SetValue("tf_bot_difficulty", difficulty+1)
}
::changeBotSetup <- function(toBotSetup)
{
    if(chosenBotSetup == toBotSetup) return

    if(chosenBot == bots.OFF) changeBot(bots.NORMAL)

    chosenBotSetup = toBotSetup

    bEnableOptionsCategory(optionsGroupBotSetup)
    bEnableOptionsTextCategory(optionsTextsGroupBotSetup)
    bDisable(optionsGroupBotSetup[toBotSetup])
    bTextDisable(optionsTextsGroupBotSetup[toBotSetup])    
}
::changeCap <- function(toCap)
{
    //TODO: make it so caps and locks are not dependent on each other
    if(chosenCaps == toCap) return

    chosenCaps = toCap

    bEnableOptionsCategory(optionsGroupCap)
    bEnableOptionsTextCategory(optionsTextsGroupCap)
    bDisable(optionsGroupCap[toCap])
    bTextDisable(optionsTextsGroupCap[toCap])    
}
::addCap <- function(amount)
{
    //TODO: Handle koth
    if(chosenCaps == caps.DEFAULT) changeCap(caps.OVERRIDE)

    if((chosenCapsAmount + amount) <= 0) chosenCapsAmount = 0
    else if((chosenCapsAmount + amount) >= 4) chosenCapsAmount = 4
    else chosenCapsAmount += amount
    
    bEnableOptionsCategory(optionsGroupCapAdd)
    bEnableOptionsTextCategory(optionsTextsGroupCapAdd)   
}
::changeLock <- function(toLock)
{
    if(chosenCaps == caps.DEFAULT) changeCap(caps.OVERRIDE)

    if(chosenLocks == toLock) return

    chosenLocks = toLock

    bEnableOptionsCategory(optionsGroupLock)
    bEnableOptionsTextCategory(optionsTextsGroupLock)
    bDisable(optionsGroupLock[toLock])
    bTextDisable(optionsTextsGroupLock[toLock])    
}
::turnBotSetupOff <- function()
{
    if(inOptionsMenu)
    {
        bEnableOptionsCategory(optionsGroupBotSetup)
        bEnableOptionsTextCategory(optionsTextsGroupBotSetup)
    }
}
::turnBotSetupOn <- function()
{
    if(inOptionsMenu)
    {
        bEnableOptionsCategory(optionsGroupBotSetup)
        bEnableOptionsTextCategory(optionsTextsGroupBotSetup)
        bDisable(optionsGroupBotSetup[chosenBotSetup])
        bTextDisable(optionsTextsGroupBotSetup[chosenBotSetup])
    }
}

// FUNC REGION: TELE CONNECT OUTPUT 
::tele1 <- function()
{
    changeTele(teles.ON)
}
::tele2 <- function()
{
    changeTele(teles.TIMED)
}
::tele3 <- function()
{
    changeTele(teles.ROUND_RESTART)
}
::tele4 <- function()
{
    changeTele(teles.OFF)
}
::teleLocation1 <- function()
{
    changeTeleLocation(teleLocations.RIGHT_SPAWN)
}
::teleLocation2 <- function()
{
    changeTeleLocation(teleLocations.LEFT_SPAWN)
}
::teleLocation3 <- function()
{
    changeTeleLocation(teleLocations.MID_FORWARD)
}
::teleLocation4 <- function()
{
    changeTeleLocation(teleLocations.SECOND_FORWARD)
}
::teleLocation5 <- function()
{
    changeTeleLocation(teleLocations.OUR_LOBBY)
}
::teleLocation6 <- function()
{
    changeTeleLocation(teleLocations.OUR_CHOKE)
}
::teleLocation7 <- function()
{
    changeTeleLocation(teleLocations.THEIR_CHOKE)
}
::teleLocation8 <- function()
{
    changeTeleLocation(teleLocations.THEIR_LOBBY)
}
::teleLocation9 <- function()
{
    changeTeleLocation(teleLocations.CUSTOM_1)
}
::teleLocation10 <- function()
{
    changeTeleLocation(teleLocations.CUSTOM_2)
}
::teleLocation11 <- function()
{
    changeTeleLocation(teleLocations.CUSTOM_3)
}
::teleLocation12 <- function()
{
    changeTeleLocation(teleLocations.CUSTOM_4)
}
::teleTimer1 <- function()
{
    addTeleTimer(10)
}
::teleTimer2 <- function()
{
    addTeleTimer(1)
}
::teleTimer3 <- function()
{
    addTeleTimer(-1)
}
::teleTimer4 <- function()
{
    addTeleTimer(-5)
}
::teleObjective1 <- function()
{
    changeTeleObjective(teleObjectives.REACH)
}
::teleObjective2 <- function()
{
    changeTeleObjective(teleObjectives.KILL)
}
::teleObjective3 <- function()
{
    changeTeleObjective(teleObjectives.CAP)
}
::teleObjective4 <- function()
{
    changeTeleObjective(teleObjectives.NONE)
}

// FUNC REGION: HEALTH & HEALING CONNECT OUTPUT 
::health1 <- function()
{
    changeHealth(health.ON_TELE)
}
::health2 <- function()
{
    changeHealth(health.NEGATE_DAMAGE)
}
::health3 <- function()
{
    changeHealth(health.PREVENT_DAMAGE)
}
::health4 <- function()
{
    changeHealth(health.OFF)
}
::healthRegen1 <- function()
{
    changeHealthRegen(5.0)
}
::healthRegen2 <- function()
{
    changeHealthRegen(1.5)
}
::healthRegen3 <- function()
{
    changeHealthRegen(1.0)
}
::healthRegen4 <- function()
{
    changeHealthRegen(0.5)
}
::healthRegenAdd1 <- function()
{
    addHealthRegen(0.5)
}
::healthRegenAdd2 <- function()
{
    addHealthRegen(0.1)
}
::healthRegenAdd3 <- function()
{
    addHealthRegen(-0.1)
}
::healthRegenAdd4 <- function()
{
    addHealthRegen(-0.5)
}
::healing1 <- function()
{
    changeHealing(healing.ON_TELE)
}
::healing2 <- function()
{
    changeHealing(healing.UNTIL_JUMP)
}
::healing3 <- function()
{
    changeHealing(healing.INFINITE)
}
::healing4 <- function()
{
    changeHealing(healing.OFF)
}
::healingType1 <- function()
{
    changeHealingType(healingType.MEDI_GUN)
}
::healingType2 <- function()
{
    changeHealingType(healingType.KRITZKRIEG)
}
::healingType3 <- function()
{
    changeHealingType(healingType.QUICK_FIX)
}
::healingType4 <- function()
{
    changeHealingType(healingType.VACCINATOR)
}
::healingLength1 <- function()
{
    addHealingTime(8.0)
}
::healingLength2 <- function()
{
    addHealingTime(1.0)
}
::healingLength3 <- function()
{
    addHealingTime(-1.0)
}
::healingLength4 <- function()
{
    addHealingTime(-5.0)
}

// FUNC REGION: UBER & AMMO CONNECT OUTPUT 
::uber1 <- function()
{
    changeUber(uber.ON_TELE)
}
::uber2 <- function()
{
    changeUber(uber.UNTIL_JUMP)
}
::uber3 <- function()
{
    changeUber(uber.INFINITE)
}
::uber4 <- function()
{
    changeUber(uber.OFF)
}
::uberLength1 <- function()
{
    addUberLength(8.0)
}
::uberLength2 <- function()
{
    addUberLength(1.0)
}
::uberLength3 <- function()
{
    addUberLength(-1.0)
}
::uberLength4 <- function()
{
    addUberLength(-5.0)
}
::ammo1 <- function()
{
    changeAmmo(ammo.ON_TELE)
}
::ammo2 <- function()
{
    changeAmmo(ammo.ON_ATTACK)
}
::ammo3 <- function()
{
    changeAmmo(ammo.INFINITE)
}
::ammo4 <- function()
{
    changeAmmo(ammo.OFF)
}
::ammoType1 <- function()
{
    changeAmmoType(ammoType.TOTAL)
}
::ammoType2 <- function()
{
    changeAmmoType(ammoType.RESERVE)
}
::ammoType3 <- function()
{
    changeAmmoType(ammoType.CLIP)
}
::ammoType4 <- function()
{
    changeAmmoType(ammoType.CLIP_ONLY)
}
::ammoRegen1 <- function()
{
    changeAmmoRegen(1.0)
}
::ammoRegen2 <- function()
{
    changeAmmoRegen(0.75)
}
::ammoRegen3 <- function()
{
    changeAmmoRegen(0.5)
}
::ammoRegen4 <- function()
{
    changeAmmoRegen(0.25)
}
::ammoRegenAdd1 <- function()
{
    addAmmoRegen(0.25)
}
::ammoRegenAdd2 <- function()
{
    addAmmoRegen(0.0625)
}
::ammoRegenAdd3 <- function()
{
    addAmmoRegen(-0.0625)
}
::ammoRegenAdd4 <- function()
{
    addAmmoRegen(-12.5)
}

// FUNC REGION: BOTS & CAPS CONNECT OUTPUT 
::bot1 <- function()
{
    changeBot(bots.NORMAL)
}
::bot2 <- function()
{
    changeBot(bots.HARD)
}
::bot3 <- function()
{
    changeBot(bots.EXPERT)
}
::bot4 <- function()
{
    changeBot(bots.OFF)
}
::botSetup1 <- function()
{
    changeBotSetup(botSetups.OUR_SECOND)
}
::botSetup2 <- function()
{
    changeBotSetup(botSetups.MIDDLE)
}
::botSetup3 <- function()
{
    changeBotSetup(botSetups.SECOND)
}
::botSetup4 <- function()
{
    changeBotSetup(botSetups.LAST)
}
::botSetup5 <- function()
{
    changeBotSetup(botSetups.MIDDLE_ROLLOUT_1)
}
::botSetup6 <- function()
{
    changeBotSetup(botSetups.MIDDLE_ROLLOUT_2)
}
::botSetup7 <- function()
{
    changeBotSetup(botSetups.MIDDLE_ROLLOUT_3)
}
::botSetup8 <- function()
{
    changeBotSetup(botSetups.MIDDLE_ROLLOUT_4)
}
::botSetup9 <- function()
{
    changeBotSetup(botSetups.CUSTOM_1)
}
::botSetup10 <- function()
{
    changeBotSetup(botSetups.CUSTOM_2)
}
::botSetup11 <- function()
{
    changeBotSetup(botSetups.CUSTOM_3)
}
::botSetup12 <- function()
{
    changeBotSetup(botSetups.CUSTOM_4)
}
::cap1 <- function()
{
    changeCap(caps.DEFAULT)
}
::cap2 <- function()
{
    changeCap(caps.OVERRIDE)
}
::capAdd1 <- function()
{
    addCap(1)
}
::capAdd2 <- function()
{
    addCap(-1)
}
::lock1 <- function()
{
    changeLock(locks.DEFAULT)
}
::lock2 <- function()
{
    changeLock(locks.ALL)
}
::lock3 <- function()
{
    changeLock(locks.ATTACK)
}
::lock4 <- function()
{
    changeLock(locks.DEFEND)
}

// FUNC REGION: MENU
::calcCoordOnWall <- function(bNumber, rot, offsetX, offsetY, offsetZ, spaceX, spaceY)
{
    local rows = 4

    local column = bNumber / rows
    local row = bNumber % rows

    if(rot == 1)
    {
        return Vector(offsetZ, spaceX*column + offsetX, spaceY*row + offsetY)
    }
    if(rot == 2)
    {
        return Vector(spaceX*column + offsetX, -offsetZ, spaceY*row + offsetY)
    } 
    if(rot == 3)
    {
        return Vector(-offsetZ, -spaceX*column -offsetX, spaceY*row + offsetY)
    }
    if(rot == 4)
    {
        return Vector(-spaceX*column -offsetX, offsetZ, spaceY*row + offsetY)
    }

}
function toggleOptionsMenu()
{
    ensureAlive()
    showTitles()
    if(inOptionsMenu) 
    {
        tele(map.teles.options)
        menuRotation += QAngle(0,-90,0)
        player.SnapEyeAngles(menuRotation)//alternative way of handling: leaveOptionsMenu()
    }
    else 
    {
        menuRotation = map.teles.options.ang
        enterOptionsMenu()
    }
    
}
function enterOptionsMenu()
{
    posBeforeMenu = player.GetOrigin()
    angBeforeMenu = player.GetAbsAngles()
    velBeforeMenu = player.GetAbsVelocity()
    destBeforeMenu = { pos = posBeforeMenu, ang = angBeforeMenu, vel = velBeforeMenu }


    stopTimers()
    createTeleTimerUI(chosenTeleTimer)

    inOptionsMenu = true
    player.AddCustomAttribute("no_attack", 1, -1)
    turnBuffDecayOff()

    tele(map.teles.options)
    createOptionsMenu()

}
::leaveOptionsMenu <- function()
{
    inOptionsMenu = false
    hideTitles()
    player.RemoveCustomAttribute("no_attack")
    turnBuffDecayOn()

    destroyOptionsMenu()

    if(chosenTele == teles.OFF) tele(destBeforeMenu)
}
function disableChosenOptions()
{
    bDisable(optionsGroupTele[chosenTele])
    bTextDisable(optionsTextsGroupTele[chosenTele])
    if(chosenTele != teles.OFF) 
    {
        bDisable(optionsGroupTeleLocation[chosenTeleLocation])
        bDisable(optionsGroupTeleObjective[chosenTeleObjective])
        bTextDisable(optionsTextsGroupTeleLocation[chosenTeleLocation])
        bTextDisable(optionsTextsGroupTeleObjective[chosenTeleObjective])
    }

    bDisable(optionsGroupHealth[chosenHealth])
    bDisable(optionsGroupHealthRegen[1]) // FIX: not robust, doesnt change with chosen defaults
    bDisable(optionsGroupHealing[chosenHealing])
    bDisable(optionsGroupHealingType[chosenHealingType])
    bTextDisable(optionsTextsGroupHealth[chosenHealth])
    bTextDisable(optionsTextsGroupHealthRegen[1]) // FIX
    bTextDisable(optionsTextsGroupHealing[chosenHealing])
    bTextDisable(optionsTextsGroupHealingType[chosenHealingType])

    bDisable(optionsGroupUber[chosenUber])
    bDisable(optionsGroupAmmo[chosenAmmo])
    bTextDisable(optionsTextsGroupUber[chosenUber])
    bTextDisable(optionsTextsGroupAmmo[chosenAmmo])
    if(chosenAmmo != ammo.OFF)
    {
        bDisable(optionsGroupAmmoType[chosenAmmoType])
        bDisable(optionsGroupAmmoRegen[0]) // FIX
        bTextDisable(optionsTextsGroupAmmoType[chosenAmmoType])
        bTextDisable(optionsTextsGroupAmmoRegen[0]) // FIX: not robust, doesnt change with chosen defaults
    }

    bDisable(optionsGroupBot[chosenBot])
    bTextDisable(optionsTextsGroupBot[chosenBot])
    if(chosenBot != bots.OFF) 
    {
        bDisable(optionsGroupBotSetup[chosenBotSetup])
        bTextDisable(optionsTextsGroupBotSetup[chosenBotSetup])
    }
    bDisable(optionsGroupCap[chosenCaps])
    bDisable(optionsGroupLock[chosenLocks])
    bTextDisable(optionsTextsGroupCap[chosenCaps])
    bTextDisable(optionsTextsGroupLock[chosenLocks])
}
function createButtons(type, amount, startIndex, pos, wall)
{
    local buttons = []
    for (local i = 0; i < amount; i++) {
        local button = SpawnEntityFromTable("trigger_multiple", {
                origin = pos + calcCoordOnWall(i+startIndex,wall,bWallOffsetX,bWallOffsetY,bWallOffsetZ,bOffsetX,bOffsetY), 
                targetname = "optionsMenu_button_wall" + wall.tostring() + "_" + type.tostring() + (i+1).tostring(), 
                OnUser1 = "!selfCallScriptFunction" + type.tostring() + (i+1).tostring() + "0-1", 
                OnUser2 = "!selfCallScriptFunctionbPress0-1", })
        button.__KeyValueFromVector("mins",Vector(-bSize,-bSize,-bHeight))
        button.__KeyValueFromVector("maxs",Vector(bSize,bSize,bHeight))
        button.__KeyValueFromInt("solid", 2)
        buttons.append(button)    
    }
    return buttons
}
function createButtonTexts(type, startIndex, pos, wall, ang, fnt, size, clr, messages)
{
    local buttonTexts = []
    ang += QAngle(0,-90,0) * (wall-1)

    for (local i = 0; i < messages.len(); i++) {

        local letterOffset = 0.0
        local lineOffset = 0.0
        local newLineIndex = messages[i].find("\n")
        if(newLineIndex == null)
        {
            letterOffset = (bTextLineCharLimit - messages[i].len()) / 2.0
        }
        else
        {
            if(messages[i].len() - (newLineIndex+1) >= (newLineIndex+1))
            {
                letterOffset = (bTextLineCharLimit - (messages[i].len() - (newLineIndex+1))) / 2.0
            }
            else
            {
                letterOffset = (bTextLineCharLimit - (newLineIndex)) / 2.0
            }
            lineOffset = 1
        }
        local buttonText = SpawnEntityFromTable("point_worldtext", {
                origin = pos + calcCoordOnWall(i+startIndex,wall,bWallTextOffsetX + letterOffset * bTextLetterOffset,bWallTextOffsetY + lineOffset * bTextLineOffset,bWallTextOffsetZ,bTextOffsetX,bTextOffsetY), 
                targetname = "optionsMenu_button_wall" + wall.tostring() + "_text_" + type.tostring() + (i+1).tostring(), 
                angles = ang
                font = fnt,
                textsize = size,
                message = messages[i],
                color = clr})
        buttonTexts.append(buttonText)    
    }
    return buttonTexts
}
::destroyOptionsMenu <- function()
{
    optionsMenuExists = false
    local ent

    while (ent = Entities.FindByName(null, "optionsMenu_*"))
    {
        ent.Kill()
    }
    foreach(optionsGroup in optionsGroups)
    {
        optionsGroup = []
    }
    foreach(optionsTextsGroup in optionsTextsGroups)
    {
        optionsTextsGroup = []
    }
    optionsGroups = []
    optionsTextsGroups = []
    menuBoundaries = []
}
::showTitles <- function()
{
    SendGlobalGameEvent("show_annotation", {worldPosX = -345, worldPosY = 0,    worldPosZ = 1190, id = 1, lifetime = -1, play_sound = "", text = "A: Teleport          \n\n\n"        })
    SendGlobalGameEvent("show_annotation", {worldPosX = 0,    worldPosY = 345,  worldPosZ = 1190, id = 2, lifetime = -1, play_sound = "", text = "\nB: Health + Healing\n\n"})
    SendGlobalGameEvent("show_annotation", {worldPosX = 345,  worldPosY = 0,    worldPosZ = 1190, id = 3, lifetime = -1, play_sound = "", text = "\n\nC: Uber + Ammo   \n"     })
    SendGlobalGameEvent("show_annotation", {worldPosX = 0,    worldPosY = -345, worldPosZ = 1190, id = 4, lifetime = -1, play_sound = "", text = "\n\n\nD: Bots + Setup       "    })
}
::hideTitles <- function()
{
    SendGlobalGameEvent("hide_annotation", {id = 1})
    SendGlobalGameEvent("hide_annotation", {id = 2})
    SendGlobalGameEvent("hide_annotation", {id = 3})
    SendGlobalGameEvent("hide_annotation", {id = 4})
}
::destroyObjectiveTrigger <- function()
{
    local ent
    while (ent = Entities.FindByName(null, "objectiveBoundary"))
    {
        ent.Kill()
    }
    while (ent = Entities.FindByName(null, "objectiveFlag"))
    {
        ent.Kill()
    }
    objectiveBoundaries = []
}
::createObjectiveTrigger <- function()
{
    destroyObjectiveTrigger()

    local trace = {}
    trace =
	{
		start = player.EyePosition(),
		end = player.EyePosition() + (player.EyeAngles().Forward() * 32768.0),
		ignore = player
	}
    TraceLineEx(trace)

    local objectiveBoundary = SpawnEntityFromTable("trigger_multiple", {
            origin = trace.pos
            targetname = "objectiveBoundary" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunction0-1", 
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionreachedObjective0-1", })
    objectiveBoundary.__KeyValueFromVector("mins",Vector(-64, -64, -64))
    objectiveBoundary.__KeyValueFromVector("maxs",Vector(64, 64, 192))
    objectiveBoundary.__KeyValueFromInt("solid", 2)

    objectiveBoundaries.append(objectiveBoundary)

    local objectiveFlag = SpawnEntityFromTable("prop_dynamic", {origin = trace.pos, angles = Vector(0, RandomInt(0, 360), 0), model = "models/props_medieval/pendant_flag/pendant_flag.mdl", targetname = "objectiveFlag", solid = 0, modelscale = 0.4, disablereceiveshadows = true})
    objectiveFlag.SetPlaybackRate(1)
    
    changeTeleObjective(teleObjectives.REACH)
}
::createOptionsMenu <- function()
{
    destroyOptionsMenu()

    local playerPos = player.GetOrigin()
    local playerAng = player.GetAbsAngles()

    local wallPos1 = playerPos + Vector(-665, -45, 65)
    local wallPos2 = playerPos + Vector(-45,  665, 65)
    local wallPos3 = playerPos + Vector(665,  45,  65)
    local wallPos4 = playerPos + Vector(45,  -665, 65)

    local wall1 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos1, angles = Vector(0, 270, 0), model = "models/vgui/round_end_score_wall_spytech.mdl", targetname = "optionsMenu_wall1", solid = 0, })
    local wall2 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos2, angles = Vector(0, 180, 0), model = "models/vgui/round_end_score_wall_spytech.mdl", targetname = "optionsMenu_wall2", solid = 0, })
    local wall3 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos3, angles = Vector(0, 90,  0), model = "models/vgui/round_end_score_wall_spytech.mdl", targetname = "optionsMenu_wall3", solid = 0, })
    local wall4 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos4, angles = Vector(0, 0,   0), model = "models/vgui/round_end_score_wall_spytech.mdl", targetname = "optionsMenu_wall4", solid = 0, })

    local beam1 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos1 + Vector(444, 0, 205),    angles = Vector(0, 180, 0), model = "models/props_urban/urban_beam003.mdl", targetname = "optionsMenu_beam1", solid = 0, })
    local beam2 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos1 + Vector(444, -176, 205), angles = Vector(0, 90,  0), model = "models/props_urban/urban_beam003.mdl", targetname = "optionsMenu_beam2", solid = 0, })
    local beam3 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos1 + Vector(886, 0, 205),    angles = Vector(0, 0,   0), model = "models/props_urban/urban_beam003.mdl", targetname = "optionsMenu_beam3", solid = 0, })
    local beam4 = SpawnEntityFromTable("prop_dynamic", {origin = wallPos1 + Vector(444, 266, 205),  angles = Vector(0, 270, 0), model = "models/props_urban/urban_beam003.mdl", targetname = "optionsMenu_beam4", solid = 0, })

    local floor1 =       SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 0,    -10), model = "models/props_trainyard/crane_platform001.mdl",  targetname = "optionsMenu_floor1",       solid = 6, })
    local pulleyBeam1 =  SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 0,    510), model = "models/props_urban/urban_beam003.mdl",          targetname = "optionsMenu_pulleyBeam1",  solid = 6, modelscale = 1.7,    })
    local pulleyBox1 =   SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 0,    430), model = "models/props_trainyard/crane_box001.mdl",       targetname = "optionsMenu_pulleyBox1",   solid = 6, })
    local floorCable1 =  SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 0,    230), model = "models/props_trainyard/crane_cable001.mdl",     targetname = "optionsMenu_floorCable1",  solid = 0, })
    local floorPulley1 = SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, -148, 235), model = "models/props_trainyard/pulley_block001.mdl",    targetname = "optionsMenu_floorPulley1", solid = 0, })
    local floorPulley2 = SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 148,  235), model = "models/props_trainyard/pulley_block001.mdl",    targetname = "optionsMenu_floorPulley2", solid = 0, })

    local text_tele =           SpawnEntityFromTable("point_worldtext", {origin = wallPos1 + Vector(320, -110,85), angles = playerAng, targetname = "optionsMenu_text_tele",          textsize = 8, message = "TELE",                    })
    local text_teleLocation1 =  SpawnEntityFromTable("point_worldtext", {origin = wallPos1 + Vector(320, -56, 85), angles = playerAng, targetname = "optionsMenu_text_teleLocation1", textsize = 8, message = "LOCATION",                })
    local text_teleLocation2 =  SpawnEntityFromTable("point_worldtext", {origin = wallPos1 + Vector(320, -2,  85), angles = playerAng, targetname = "optionsMenu_text_teleLocation2", textsize = 8, message = ".......................", })
    local text_teleLocation3 =  SpawnEntityFromTable("point_worldtext", {origin = wallPos1 + Vector(320, 52,  85), angles = playerAng, targetname = "optionsMenu_text_teleLocation3", textsize = 8, message = ".......................", })
    local text_teleObjective =  SpawnEntityFromTable("point_worldtext", {origin = wallPos1 + Vector(320, 104, 85), angles = playerAng, targetname = "optionsMenu_text_teleObjective", textsize = 8, message = "OBJECTIVE",               })
    local text_teleTimer =      SpawnEntityFromTable("point_worldtext", {origin = wallPos1 + Vector(320, 158, 85), angles = playerAng, targetname = "optionsMenu_text_teleTimer",     textsize = 8, message = "TIMER",                   })

    local text_health =             SpawnEntityFromTable("point_worldtext", {origin = wallPos2 + Vector(-110,-320, 85), angles = playerAng + Vector(0,-90,0), targetname =  "optionsMenu_text_health",        textsize = 8, message = "HEALTH",                  })
    local text_healthRegen1 =       SpawnEntityFromTable("point_worldtext", {origin = wallPos2 + Vector(-56, -320, 85), angles = playerAng + Vector(0,-90,0), targetname =  "optionsMenu_text_healthRegen1",  textsize = 8, message = "REGEN",                   })
    local text_healthRegen2 =       SpawnEntityFromTable("point_worldtext", {origin = wallPos2 + Vector(-2,  -320, 85), angles = playerAng + Vector(0,-90,0), targetname =  "optionsMenu_text_healthRegen2",  textsize = 8, message = ".......................", })
    local text_healing =            SpawnEntityFromTable("point_worldtext", {origin = wallPos2 + Vector(52,  -320, 85), angles = playerAng + Vector(0,-90,0), targetname =  "optionsMenu_text_healing",       textsize = 8, message = "HEALING",                 })
    local text_healingType =        SpawnEntityFromTable("point_worldtext", {origin = wallPos2 + Vector(104, -320, 85), angles = playerAng + Vector(0,-90,0), targetname =  "optionsMenu_text_healingType",   textsize = 8, message = "TYPE",                    })
    local text_healingLength =      SpawnEntityFromTable("point_worldtext", {origin = wallPos2 + Vector(158, -320, 85), angles = playerAng + Vector(0,-90,0), targetname =  "optionsMenu_text_healingLength", textsize = 8, message = "LENGTH",                  })

    local text_uber =           SpawnEntityFromTable("point_worldtext", {origin = wallPos3 + Vector(-320, 110,  85), angles = playerAng + Vector(0,-180,0), targetname = "optionsMenu_text_uber",            textsize = 8, message = "UBER",                       })
    local text_uberLength =     SpawnEntityFromTable("point_worldtext", {origin = wallPos3 + Vector(-320, 56,   85), angles = playerAng + Vector(0,-180,0), targetname = "optionsMenu_text_uberLength",      textsize = 8, message = "LENGTH",                     })
    local text_ammo =           SpawnEntityFromTable("point_worldtext", {origin = wallPos3 + Vector(-320, 2,    85), angles = playerAng + Vector(0,-180,0), targetname = "optionsMenu_text_ammo",            textsize = 8, message = "AMMO",                       })
    local text_ammoType =       SpawnEntityFromTable("point_worldtext", {origin = wallPos3 + Vector(-320, -52,  85), angles = playerAng + Vector(0,-180,0), targetname = "optionsMenu_text_ammoType",        textsize = 8, message = "TYPE",                       })
    local text_ammoRegen1 =     SpawnEntityFromTable("point_worldtext", {origin = wallPos3 + Vector(-320, -104, 85), angles = playerAng + Vector(0,-180,0), targetname = "optionsMenu_text_ammoRegen1",      textsize = 8, message = "REGEN",                      })
    local text_ammoRegen2 =     SpawnEntityFromTable("point_worldtext", {origin = wallPos3 + Vector(-320, -158, 85), angles = playerAng + Vector(0,-180,0), targetname = "optionsMenu_text_ammoRegen2",      textsize = 8, message = ".......................",    })

    local text_bot =            SpawnEntityFromTable("point_worldtext", {origin = wallPos4 + Vector(110,320,   85), angles = playerAng + Vector(0,-270,0), targetname =  "optionsMenu_text_bot",             textsize = 8, message = "BOTS",                    })
    local text_botSetup1 =      SpawnEntityFromTable("point_worldtext", {origin = wallPos4 + Vector(56, 320,   85), angles = playerAng + Vector(0,-270,0), targetname =  "optionsMenu_text_botSetup1",       textsize = 8, message = "SETUP",                   })
    local text_botSetup2 =      SpawnEntityFromTable("point_worldtext", {origin = wallPos4 + Vector(2,  320,   85), angles = playerAng + Vector(0,-270,0), targetname =  "optionsMenu_text_botSetup2",       textsize = 8, message = ".......................", })
    local text_botSetup3 =      SpawnEntityFromTable("point_worldtext", {origin = wallPos4 + Vector(-52,  320, 85), angles = playerAng + Vector(0,-270,0), targetname =  "optionsMenu_text_botSetup3",       textsize = 8, message = ".......................", })
    local text_caps =           SpawnEntityFromTable("point_worldtext", {origin = wallPos4 + Vector(-104, 320, 85), angles = playerAng + Vector(0,-270,0), targetname =  "optionsMenu_text_caps",            textsize = 8, message = "CAPS",                    })
    local text_locks =          SpawnEntityFromTable("point_worldtext", {origin = wallPos4 + Vector(-158, 320, 85), angles = playerAng + Vector(0,-270,0), targetname =  "optionsMenu_text_locks",           textsize = 8, message = "LOCKS",                   })

    local backWall1 = SpawnEntityFromTable("trigger_multiple", {
            origin = wallPos1 + Vector(-185,0,0)
            targetname = "optionsMenu_button_wall1_backwall1" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunctionbuttonMiss0-1", 
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionleftMenu0-1", })
    backWall1.__KeyValueFromVector("mins",Vector(-500, -500, -500))
    backWall1.__KeyValueFromVector("maxs",Vector(500, 500, 500))
    backWall1.__KeyValueFromInt("solid", 2)

    local backWall2 = SpawnEntityFromTable("trigger_multiple", {
            origin = wallPos2 + Vector(0,185,0)
            targetname = "optionsMenu_button_wall2_backwall2" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunctionbuttonMiss0-1",
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionleftMenu0-1", })
    backWall2.__KeyValueFromVector("mins",Vector(-500, -500, -500))
    backWall2.__KeyValueFromVector("maxs",Vector(500, 500, 500))
    backWall2.__KeyValueFromInt("solid", 2)

    local backWall3 = SpawnEntityFromTable("trigger_multiple", {
            origin = wallPos3 + Vector(185,0,0)
            targetname = "optionsMenu_button_wall3_backwall3" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunctionbuttonMiss0-1",
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionleftMenu0-1", })
    backWall3.__KeyValueFromVector("mins",Vector(-500, -500, -500))
    backWall3.__KeyValueFromVector("maxs",Vector(500, 500, 500))
    backWall3.__KeyValueFromInt("solid", 2)

    local backWall4 = SpawnEntityFromTable("trigger_multiple", {
            origin = wallPos4 + Vector(0,-185,0)
            targetname = "optionsMenu_button_wall4_backwall4" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunctionbuttonMiss0-1",
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionleftMenu0-1", })
    backWall4.__KeyValueFromVector("mins",Vector(-500, -500, -500))
    backWall4.__KeyValueFromVector("maxs",Vector(500, 500, 500))
    backWall4.__KeyValueFromInt("solid", 2)

    local menuFloor = SpawnEntityFromTable("trigger_multiple", {
            origin = playerPos + Vector(0,0,-150)
            targetname = "optionsMenu_button_floor" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunctionbuttonMiss0-1",
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionleftMenu0-1", })
    menuFloor.__KeyValueFromVector("mins",Vector(-500, -500, -100))
    menuFloor.__KeyValueFromVector("maxs",Vector(500, 500, 100))
    menuFloor.__KeyValueFromInt("solid", 2)

    local menuCeiling = SpawnEntityFromTable("trigger_multiple", {
            origin = playerPos + Vector(0,0,350)
            targetname = "optionsMenu_button_ceiling" 
            OnUser1 = "!selfCallScriptFunction0-1", 
            OnUser2 = "!selfCallScriptFunctionbuttonMiss0-1",
            OnUser3 = "!selfCallScriptFunction0-1",
            OnUser4 = "!selfCallScriptFunctionleftMenu0-1", })
    menuCeiling.__KeyValueFromVector("mins",Vector(-500, -500, -100))
    menuCeiling.__KeyValueFromVector("maxs",Vector(500, 500, 100))
    menuCeiling.__KeyValueFromInt("solid", 2)

    menuBoundaries.append(backWall1)
    menuBoundaries.append(backWall2)
    menuBoundaries.append(backWall3)
    menuBoundaries.append(backWall4)
    menuBoundaries.append(menuFloor)
    menuBoundaries.append(menuCeiling)


    optionsTextsGroupTele =             createButtonTexts("tele",           0,  wallPos1, 1, playerAng, 10, 8, bTextOffRedColor,     teleMessages)
    optionsTextsGroupTeleLocation =     createButtonTexts("teleLocation",   4,  wallPos1, 1, playerAng, 10, 8, bTextOffRedColor,     teleLocationMessages)
    optionsTextsGroupTeleObjective =    createButtonTexts("teleObjective",  16, wallPos1, 1, playerAng, 10, 8, bTextOffRedColor,     teleObjectiveMessages)
    optionsTextsGroupTeleTimer =        createButtonTexts("teleTimer",      20, wallPos1, 1, playerAng, 10, 8, bTextOffWhiteColor,   teleTimerMessages)

    optionsTextsGroupHealth =           createButtonTexts("health",         0,  wallPos2, 2, playerAng, 10, 8, bTextOffRedColor,     healthMessages)
    optionsTextsGroupHealthRegen =      createButtonTexts("healthRegen",    4,  wallPos2, 2, playerAng, 10, 8, bTextOffRedColor,     healthRegenMessages)
    optionsTextsGroupHealthRegenAdd =   createButtonTexts("healthRegenAdd", 8,  wallPos2, 2, playerAng, 10, 8, bTextOffWhiteColor,   healthRegenAddMessages)
    optionsTextsGroupHealing =          createButtonTexts("healing",        12, wallPos2, 2, playerAng, 10, 8, bTextOffRedColor,     healingMessages)
    optionsTextsGroupHealingType =      createButtonTexts("healingType",    16, wallPos2, 2, playerAng, 10, 8, bTextOffRedColor,     healingTypeMessages)
    optionsTextsGroupHealingTimer =     createButtonTexts("healingTimer",   20, wallPos2, 2, playerAng, 10, 8, bTextOffWhiteColor,   healingTimerMessages)

    optionsTextsGroupUber =             createButtonTexts("uber",           0,  wallPos3, 3, playerAng, 10, 8, bTextOffRedColor,     uberMessages)
    optionsTextsGroupUberTimer =        createButtonTexts("uberTimer",      4,  wallPos3, 3, playerAng, 10, 8, bTextOffWhiteColor,   uberTimerMessages)
    optionsTextsGroupAmmo =             createButtonTexts("ammo",           8,  wallPos3, 3, playerAng, 10, 8, bTextOffRedColor,     ammoMessages)
    optionsTextsGroupAmmoType =         createButtonTexts("ammoType",       12, wallPos3, 3, playerAng, 10, 8, bTextOffRedColor,     ammoTypeMessages)
    optionsTextsGroupAmmoRegen =        createButtonTexts("ammoRegen",      16, wallPos3, 3, playerAng, 10, 8, bTextOffRedColor,     ammoRegenMessages)
    optionsTextsGroupAmmoRegenAdd =     createButtonTexts("ammoRegenAdd",   20, wallPos3, 3, playerAng, 10, 8, bTextOffWhiteColor,   ammoRegenAddMessages)

    optionsTextsGroupBot =              createButtonTexts("bot",            0,  wallPos4, 4, playerAng, 10, 8, bTextOffRedColor,     botMessages)
    optionsTextsGroupBotSetup =         createButtonTexts("botSetup",       4,  wallPos4, 4, playerAng, 10, 8, bTextOffRedColor,     botSetupMessages)
    optionsTextsGroupCap =              createButtonTexts("cap",           16,  wallPos4, 4, playerAng, 10, 8, bTextOffRedColor,     capMessages)
    optionsTextsGroupCapAdd =           createButtonTexts("cap",           18,  wallPos4, 4, playerAng, 10, 8, bTextOffWhiteColor,   capAddMessages)
    optionsTextsGroupLock =             createButtonTexts("lock",          20,  wallPos4, 4, playerAng, 10, 8, bTextOffRedColor,     lockMessages)

    optionsGroupTele =                  createButtons("tele",           4,  0,  wallPos1, 1)
    optionsGroupTeleLocation =          createButtons("teleLocation",   12, 4,  wallPos1, 1)
    optionsGroupTeleObjective =         createButtons("teleObjective",  4,  16, wallPos1, 1)
    optionsGroupTeleTimer =             createButtons("teleTimer",      4,  20, wallPos1, 1)

    optionsGroupHealth =                createButtons("health",         4,  0,  wallPos2, 2)
    optionsGroupHealthRegen =           createButtons("healthRegen",    4,  4,  wallPos2, 2)
    optionsGroupHealthRegenAdd =        createButtons("healthRegenAdd", 4,  8,  wallPos2, 2)
    optionsGroupHealing =               createButtons("healing",        4,  12, wallPos2, 2)
    optionsGroupHealingType =           createButtons("healingType",    4,  16, wallPos2, 2)
    optionsGroupHealingTimer =          createButtons("healingLength",  4,  20, wallPos2, 2)

    optionsGroupUber =                  createButtons("uber",           4,  0,  wallPos3, 3)
    optionsGroupUberTimer =             createButtons("uberLength",     4,  4,  wallPos3, 3)
    optionsGroupAmmo =                  createButtons("ammo",           4,  8,  wallPos3, 3)
    optionsGroupAmmoType =              createButtons("ammoType",       4,  12, wallPos3, 3)
    optionsGroupAmmoRegen =             createButtons("ammoRegen",      4,  16, wallPos3, 3)
    optionsGroupAmmoRegenAdd =          createButtons("ammoRegenAdd",   4,  20, wallPos3, 3)

    optionsGroupBot =                   createButtons("bot",            4,  0,  wallPos4, 4)
    optionsGroupBotSetup =              createButtons("botSetup",       12, 4,  wallPos4, 4)
    optionsGroupCap =                   createButtons("cap",            2,  16, wallPos4, 4)
    optionsGroupCapAdd =                createButtons("capAdd",         2,  18, wallPos4, 4)
    optionsGroupLock =                  createButtons("lock",          4,  20, wallPos4, 4)
    
    optionsTextsGroups.append(optionsTextsGroupTele)
    optionsTextsGroups.append(optionsTextsGroupTeleLocation)
    optionsTextsGroups.append(optionsTextsGroupTeleTimer)
    optionsTextsGroups.append(optionsTextsGroupTeleObjective)

    optionsTextsGroups.append(optionsTextsGroupHealth)
    optionsTextsGroups.append(optionsTextsGroupHealthRegen)
    optionsTextsGroups.append(optionsTextsGroupHealthRegenAdd)
    optionsTextsGroups.append(optionsTextsGroupHealing)
    optionsTextsGroups.append(optionsTextsGroupHealingType)
    optionsTextsGroups.append(optionsTextsGroupHealingTimer)

    optionsTextsGroups.append(optionsTextsGroupUber)
    optionsTextsGroups.append(optionsTextsGroupUberTimer)
    optionsTextsGroups.append(optionsTextsGroupAmmo)
    optionsTextsGroups.append(optionsTextsGroupAmmoType)
    optionsTextsGroups.append(optionsTextsGroupAmmoRegen)
    optionsTextsGroups.append(optionsTextsGroupAmmoRegenAdd)

    optionsTextsGroups.append(optionsTextsGroupBot)
    optionsTextsGroups.append(optionsTextsGroupBotSetup)
    optionsTextsGroups.append(optionsTextsGroupCap)
    optionsTextsGroups.append(optionsTextsGroupCapAdd)
    optionsTextsGroups.append(optionsTextsGroupLock)

    
    optionsGroups.append(optionsGroupTele)
    optionsGroups.append(optionsGroupTeleLocation)
    optionsGroups.append(optionsGroupTeleTimer)
    optionsGroups.append(optionsGroupTeleObjective)

    optionsGroups.append(optionsGroupHealth)
    optionsGroups.append(optionsGroupHealthRegen)
    optionsGroups.append(optionsGroupHealthRegenAdd)
    optionsGroups.append(optionsGroupHealing)
    optionsGroups.append(optionsGroupHealingType)
    optionsGroups.append(optionsGroupHealingTimer)

    optionsGroups.append(optionsGroupUber)
    optionsGroups.append(optionsGroupUberTimer)
    optionsGroups.append(optionsGroupAmmo)
    optionsGroups.append(optionsGroupAmmoType)
    optionsGroups.append(optionsGroupAmmoRegen)
    optionsGroups.append(optionsGroupAmmoRegenAdd)

    optionsGroups.append(optionsGroupBot)
    optionsGroups.append(optionsGroupBotSetup)
    optionsGroups.append(optionsGroupCap)
    optionsGroups.append(optionsGroupCapAdd)
    optionsGroups.append(optionsGroupLock)

    disableChosenOptions()

    optionsMenuExists = true

    //TODO: DISABLE SHADOWS AND SHADOW RECEIVING
    //TODO: TRAINING ANNOTATION ON THE TRIGGER FOR DESCRIPTION PER WALL
    //TODO: Set saved options
}

// EVENT REGION: GENERAL

function OnGameEvent_player_say(params)
{
    local msg = params.text
    if (msg[0] != chatCommandIndicator) return

    local cmd = msg.slice(1)

    local player = GetPlayerFromUserID(params.userid)

    CallFunctionFromString(cmd, player)
}
function OnGameEvent_player_hurt(params)
{
    if(params.attacker == params.userid) hasJumped = true

    if(chosenHealth == health.NEGATE_DAMAGE && params.damageamount < 0) {
        player.SetHealth(params.health + params.damageamount)
    }
}
function OnGameEvent_player_spawn(params)
{
    local spawnedPlayer = GetPlayerFromUserID(params.userid)

    if(params.team == teams.BLUE && spawnedPlayer.GetPlayerClass() == mercs.ENGINEER && builder == null)
    {
        setupBuilder(spawnedPlayer)
    }

    //TODO: Somehow remove no attack upon respawn?
    //TODO: Add conditions to player like invincibility upon respawn
    //TODO: Rename bots?
}
function OnGameEvent_teams_changed(params)
{
    players = GetPlayers()
}
//TODO: fix issue where this function is added multiple times for each time script is re execed.
__CollectGameEventCallbacks(this)