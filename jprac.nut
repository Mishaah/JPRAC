// ENUM REGION: TELE
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
    SURVIVE,
    KILL,
    REACH,
    CAP,
}

// ENUM REGION: HEALTH & HEALING
enum health {
    ON_TELE,
    NEGATE_DAMAGE,
    PREVENT_DAMAGE,
    OFF,
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

// ENUM REGION: UBER & AMMO
enum uber {
    ON_TELE,
    UNTIL_JUMP,
    INFINITE,
    OFF,
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

// ENUM REGION: BOTS & CAPS
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
enum locks {
    DEFAULT,
    ALL,
    ATTACK,
    DEFEND,
}

// ENUM REGION: GENERAL
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

enum timerMessages {
    NONE,
    RAN_OUT,
    OBJECTIVE_REACHED,
    OBJECTIVE_AFTER_RAN_OUT,
    EARLY_RESET,
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
maps.cp_gullywash_f9.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-20 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_gullywash_f9.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_snakewater_final1.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_snakewater_final1.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_sunshine.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sunshine.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_metalworks_f5.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_metalworks_f5.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_granary_pro_rc8.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_granary_pro_rc8.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_prolands_rc2ta.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_prolands_rc2ta.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_sultry_b8a.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_sultry_b8a.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_reckoner_rc6.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_reckoner_rc6.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.cp_entropy_b5.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.cp_entropy_b5.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.koth_product_final.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_product_final.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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
maps.koth_bagel_rc7.teles.options                               <- { loc = teleLocations.OPTIONS_MENU,   pos = Vector(0     ,0     ,1000  ), ang = QAngle(0   ,180 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.rspawn                                <- { loc = teleLocations.RIGHT_SPAWN,    pos = Vector(-4205 ,650   ,310   ), ang = QAngle(0   ,-35 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.lspawn                                <- { loc = teleLocations.LEFT_SPAWN,     pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.fw1                                   <- { loc = teleLocations.MID_FORWARD,    pos = Vector(-1740 ,1645  ,170   ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.fw2                                   <- { loc = teleLocations.SECOND_FORWARD, pos = Vector(-490  ,600   ,60    ), ang = QAngle(0   ,-30 ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.lob                                   <- { loc = teleLocations.OUR_LOBBY,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.choke                                 <- { loc = teleLocations.OUR_CHOKE,      pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.tchoke                                <- { loc = teleLocations.THEIR_CHOKE,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
maps.koth_bagel_rc7.teles.tlob                                  <- { loc = teleLocations.THEIR_LOBBY,    pos = Vector(0     ,0     ,0     ), ang = QAngle(0   ,0   ,0   ), vel = Vector(0,0,0)}
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


local sounds = {}
sounds.buttonPress <- "passtime/ball_intercepted.wav"

// VAR REGION: GENERAL
local player
local attackPressed = false
local hasJumped = false
local selectedMap
local selectedGamemode
local inOptionsMenu = false
local optionsMenuExists = false
local menuRotation
local leftMenu = false

local objectiveDone = false
local objectiveSuccesses = 0
local objectiveFails = 0
local objectiveResets = 0

local posBeforeMenu = Vector(0,0,0)
local angBeforeMenu = QAngle(0,0,0)
local velBeforeMenu = Vector(0,0,0)
//local destBeforeMenu = {}
local destBeforeMenu = { pos = posBeforeMenu, ang = angBeforeMenu, vel = velBeforeMenu }

local regenPacks = []
local packsAreAutoMaterializing = true
local capPoints = []
local botGenerators = []
local builder = null
local spawnedBuildings = []
::playerCount <- MaxClients().tointeger() 

local ticksPerSecond = 66

local tickTimerRoundRestart = 0
local tickTimerRoundRestartMax = ticksPerSecond * 5

local tickTeleTimer = 0
local tickTeleTimerMax

local tickStopwatch = 0

local tickHealingTimer = 0
local tickHealingTimerMax
local healPerTick
local overhealPerTick
local tickHealingHealed = 0

local tickUberTimer = 0
local tickUberTimerMax

local standardOverhealMax = 1.5
local quickfixOverhealMax = 1.25
local standardHealrate = 24.0
local quickfixHealrateMultiplier = 1.4
local vaccinatorOverhealrateMultiplier = 0.666667

local teleTimerUI

// VAR REGION: BUTTON PARAMETERS
local bSize = 20
local bHeight = 17

local bWallOffsetX = -90
local bWallOffsetY = 56
local bWallOffsetZ = 300
local bOffsetX = 53.75
local bOffsetY = -42

local bWallTextOffsetX = -109
local bWallTextOffsetY = 54
local bWallTextOffsetZ = 320
local bTextOffsetX = 53.75
local bTextOffsetY = -42
local bTextLetterOffset = 5
local bTextLineOffset = 4
local bTextLineCharLimit = 8

local textOffRedColor =      "255 210 170"
local textOffWhiteColor =    "255 240 240"
local textHighlightedColor = "255 255 50"

// VAR REGION: TELE BUTTON MESSAGES
local teleMessages = [
    "ON",
    "TIMED",
    "ROUND\nRESTART",
    "OFF",
]
local teleLocationMessages = [
    "RIGHT\nSPAWN",
    "LEFT\nSPAWN",
    "MID\nFORWARD",
    "SECOND\nFORWARD",
    "OUR\nLOBBY",
    "OUR\nCHOKE",
    "THEIR\nCHOKE",
    "THEIR\nLOBBY",
    "CUSTOM\n  #1",
    "CUSTOM\n  #2",
    "CUSTOM\n  #3",
    "CUSTOM\n  #4",
]
local teleObjectiveMessages = [
    "LIVE",
    "KILL",
    "REACH",
    "CAP",
]
local teleTimerMessages = [
    "+10s",
    "+1s",
    "-1s",
    "-5s",
]

// VAR REGION: HEALTH & HEALING BUTTON MESSAGES
local healthMessages = [
    " ON\nTELE",
    "NEGATE\nDAMAGE",
    "PREVENT\nDAMAGE",
    "OFF",
]
local healthRegenMessages = [
    "500%",
    "150%",
    "100%",
    "50%",
]
local healthRegenAddMessages = [
    "+50%",
    "+10%",
    "-10%",
    "-50%",
]
local healingMessages = [
    " ON\nTELE",
    "UNTIL\nJUMP",
    "INFINITE",
    "OFF",
]
local healingTypeMessages = [
    "MEDI",
    "KRITZ",
    "QUICK",
    "VACC",
]
local healingTimerMessages = [
    "+10s",
    "+1s",
    "-1s",
    "-5s",
]

// VAR REGION: UBER & AMMO BUTTON MESSAGES
local uberMessages = [
    " ON\nTELE",
    "UNTIL\nJUMP",
    "INFINITE",
    "OFF",
]
local uberTimerMessages = [
    "+8s",
    "+1s",
    "-1s",
    "-5s",
]
local ammoMessages = [
    " ON\nTELE",
    "  ON\nATTACK",
    "INFINITE",
    "OFF",
]
local ammoTypeMessages = [
    "TOTAL",
    "RESERVE",
    "CLIP",
    "CLIP\nONLY",
]
local ammoRegenMessages = [
    "100%",
    "75%",
    "50%",
    "25%",
]
local ammoRegenAddMessages = [
    "+25%",
    "+6.25%",
    "-6.25%",
    "-12.5%",
]

// VAR REGION: BOTS & CAPS BUTTON MESSAGES
local botMessages = [
    "NORMAL",
    "HARD",
    "EXPERT",
    "OFF",
]
local botSetupMessages = [
    "OUR\nSECOND",
    "MIDDLE",
    "SECOND",
    "LAST",
    "ROLLOUT\n  #1",
    "ROLLOUT\n  #2",
    "ROLLOUT\n  #3",
    "ROLLOUT\n  #4",
    "CUSTOM\n  #1",
    "CUSTOM\n  #2",
    "CUSTOM\n  #3",
    "CUSTOM\n  #4",
]
local capMessages = [
    "DEFAULT",
    "OVERRIDE",
]
local capAddMessages = [
    "+1 CAP",
    "-1 CAP",
]
local lockMessages = [
    "DEFAULT",
    "ALL",
    "ATTACK",
    "DEFEND",
]

// VAR REGION: OPTIONS
local chosenTele
local chosenTeleLocation
local chosenTeleTimer
local chosenTeleObjective

local chosenHealth
local chosenHealthRegen
local chosenHealing
local chosenHealingType
local chosenHealingTimer

local currentDamageMultiplier

local chosenUber
local chosenUberTimer
local chosenAmmo
local chosenAmmoType
local chosenAmmoRegen

local chosenBot
local chosenBotSetup
local chosenCaps
local chosenCapsAmount
local chosenLocks

local optionsGroups = []

local optionsGroupTele =            []
local optionsGroupTeleLocation =    []
local optionsGroupTeleTimer =       []
local optionsGroupTeleObjective =   []

local optionsGroupHealth =          []
local optionsGroupHealthRegen =     []
local optionsGroupHealthRegenAdd =  []
local optionsGroupHealing =         []
local optionsGroupHealingType =     []
local optionsGroupHealingTimer =    []

local optionsGroupUber =            []
local optionsGroupUberTimer =       []
local optionsGroupAmmo =            []
local optionsGroupAmmoType =        []
local optionsGroupAmmoRegen =       []
local optionsGroupAmmoRegenAdd =    []

local optionsGroupBot =             []
local optionsGroupBotSetup =        []
local optionsGroupCap =             []
local optionsGroupCapAdd =          []
local optionsGroupLock =            []

local optionsTextsGroups = []

local optionsTextsGroupTele =           []
local optionsTextsGroupTeleLocation =   []
local optionsTextsGroupTeleTimer =      []
local optionsTextsGroupTeleObjective =  []

local optionsTextsGroupHealth =         []
local optionsTextsGroupHealthRegen =    []
local optionsTextsGroupHealthRegenAdd = []
local optionsTextsGroupHealing =        []
local optionsTextsGroupHealingType =    []
local optionsTextsGroupHealingTimer =   []

local optionsTextsGroupUber =           []
local optionsTextsGroupUberTimer =      []
local optionsTextsGroupAmmo =           []
local optionsTextsGroupAmmoType =       []
local optionsTextsGroupAmmoRegen =      []
local optionsTextsGroupAmmoRegenAdd =   []

local optionsTextsGroupBot =            []
local optionsTextsGroupBotSetup =       []
local optionsTextsGroupCap =            []
local optionsTextsGroupCapAdd =         []
local optionsTextsGroupLock =           []

local menuBoundaries = []
local objectiveBoundaries = []

function main()
{
    player = GetListenServerHost()
    AddThinkToEnt(player, "PlayerThink");

    selectedMap = getMap()

    if(selectedMap == null) menuRotation = 0
    else menuRotation = selectedMap.teles.options.ang

    prepareMap()

    selectedGamemode = getGamemode()

    setDefaultOptions()

    preCacheSounds()

    ClientPrintSafe(null, "JPRAC LOADED")
    
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
    //TODO: check if player alive first before doing things like regen ammo
	local buttons = NetProps.GetPropInt(self, "m_nButtons")
	if (buttons & Constants.FButtons.IN_ATTACK)
	{
        if (!attackPressed && inOptionsMenu)
        {
            pressButton()
        }
        if (!inOptionsMenu && chosenAmmo == ammo.ON_ATTACK)
        {
            regenAmmo(1)
        }
        attackPressed = true
	}
    else 
    {
        attackPressed = false
    }
    if (!inOptionsMenu && chosenAmmo == ammo.INFINITE)
    {
        regenAmmo(1)
    }
    if (tickTimerRoundRestart != 0 && tickTimerRoundRestart < tickTimerRoundRestartMax) 
    {
        setSpeed(0.0)
        tickTimerRoundRestart++
    }
    if (tickTimerRoundRestart == tickTimerRoundRestartMax)
    {
        // TODO: give time update once objective is reached.
        stopSimulateRoundRestart()
        onSimulateRoundRestartEnd()
    }
    if (tickStopwatch != 0 && !objectiveDone)
    {
        tickStopwatch++
    }
    if (tickTeleTimer != 0 && tickTimerRoundRestart < tickTimerRoundRestartMax)
    {
        tickTeleTimer++
    }
    if (tickTeleTimer == tickTeleTimerMax && tickTeleTimerMax != 0)
    {
        if(chosenTeleObjective == teleObjectives.SURVIVE) sendTimerMessage(timerMessages.RAN_OUT)
        stopTeleTimer()
        onTeleTimerEnd()
    }
    if (inOptionsMenu)
    {
        if(optionsMenuExists) triggerCollision(player.EyePosition(), menuBoundaries)
        if(chosenHealth != health.OFF) regenHealth(chosenHealthRegen)
        else regenHealth(1.0)
        if(chosenAmmo != ammo.OFF) regenAmmo(chosenAmmoRegen)
    }
    if (!inOptionsMenu && player != null && objectiveBoundaries.len() > 0 && !objectiveDone)
    {
        triggerCollision(player.EyePosition(), objectiveBoundaries)
    }
    if((tickHealingTimer != 0 && tickHealingTimer < tickHealingTimerMax) || 
       (chosenHealing == healing.INFINITE && !inOptionsMenu) || 
       (tickHealingTimer != 0 && chosenHealing == healing.UNTIL_JUMP && !inOptionsMenu))
    {
        if((chosenHealing != healing.UNTIL_JUMP && chosenHealing != healing.INFINITE) || (chosenHealing == healing.UNTIL_JUMP && hasJumped)) tickHealingTimer++

        local playerHealth = player.GetHealth()
        local playerMaxHealth = player.GetMaxHealth()
        local playerMaxOverheal = playerMaxHealth * standardOverhealMax
        if (chosenHealingType == healingType.QUICK_FIX) playerMaxOverheal = playerMaxHealth * quickfixOverhealMax + 1
        else playerMaxOverheal = (playerMaxOverheal / 5).tointeger()*5

        local toHeal
        //TODO: integrate heal ramp up?
        toHeal = (tickHealingHealed + (playerHealth >= playerMaxHealth ? overhealPerTick : healPerTick)).tointeger() - tickHealingHealed.tointeger()

        if(toHeal >= 1 && playerHealth < playerMaxOverheal)
        {
            heal(toHeal)
        }
        tickHealingHealed += healPerTick
    }
    if(tickHealingTimer == tickHealingTimerMax && tickHealingTimerMax != 0)
    {
        stopHealingTimer()
        onHealingTimerEnd()
    }
    if((tickUberTimer != 0 && tickUberTimer < tickUberTimerMax) || (chosenUber == uber.INFINITE && !inOptionsMenu))
    {
        if((chosenUber != uber.UNTIL_JUMP && chosenUber != uber.INFINITE) || (chosenUber == uber.UNTIL_JUMP && hasJumped)) tickUberTimer++        
    }
    if(tickUberTimer == tickUberTimerMax && tickUberTimerMax != 0)
    {
        printl(tickUberTimerMax)
        stopUberTimer()
        onUberTimerEnd()
    }
	return -1
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
function extractShortName(fullName)
{
    local firstUnderscore = fullName.find("_",0)
    local secondUnderscore = fullName.find("_",firstUnderscore+1)
    if(firstUnderscore == null) firstUnderscore = 0
    if(secondUnderscore == null) secondUnderscore = fullName.len()
    return fullName.slice(0, secondUnderscore)
}
function getMap()
{
    local mapName = GetMapName().tolower()

    local shortMapName = extractShortName(mapName)

    foreach(map in maps)
    {
        if (extractShortName(map.name) == shortMapName)
        {
            if(map.name != mapName) printl(shortMapName + " version differs from supported version: " + map.name)
            return map
        }
    }
    printl("map is not supported")
    //TODO: Handle unsupported map by adding to the table a new entry, so custom teles can still be used. Perhaps make unavailable option light up in different color
    return null
}
function prepareMap()
{
    local timer

    while (timer = Entities.FindByClassname(timer, "team_round_timer"))
    {
        printl("killed timer")
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
    chosenTeleObjective = teleObjectives.SURVIVE

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
    foreach(tele in selectedMap.teles)
    {
        if(tele.loc == loc) return tele
    }
    printl("tele not bound or unavailable") //TODO: handle not found
    return null
}
::getBotSetup <- function(stp)
{
    foreach(setup in selectedMap.setups)
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
    printl("builder set")
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
    tickTimerRoundRestart++
}

::stopSimulateRoundRestart <- function()
{
    tickTimerRoundRestart = 0
    setSpeed(1.0)
}
::onSimulateRoundRestartEnd <- function()
{
    //TODO: Implement delayed buff
}
::stopTeleTimer <- function()
{
    tickTeleTimer = 0

    removeTeleTimerUI()
}
::stopStopwatch <- function()
{
    tickStopwatch = 0
}

::sendTimerMessage <- function(timerMessage = null)
{
    local secondsLeft = round(tickTeleTimerMax / ticksPerSecond.tofloat() - tickTeleTimer / ticksPerSecond.tofloat(),2)
    if(secondsLeft < 0 || tickTeleTimer == 0) secondsLeft = 0

    local secondsElapsed = round(tickStopwatch / ticksPerSecond.tofloat(),2)

    local secondsElapsedAfterTimer = round((tickStopwatch - tickTeleTimerMax) / ticksPerSecond.tofloat(),2)

    local message
    //TODO: Add avg time of completion and PR

    local objectiveRuns = objectiveSuccesses + objectiveFails + objectiveResets
    local objectiveSuccesRate = round(objectiveSuccesses.tofloat() / objectiveRuns.tofloat() * 100,0)
    local objectiveFailRate = round(objectiveFails.tofloat() / objectiveRuns.tofloat() * 100,0)
    local objectiveResetRate = round(objectiveResets.tofloat() / objectiveRuns.tofloat() * 100,0)

    local objectiveStatMessage = "^FFFFFF[^00FF00" + objectiveSuccesRate + "%^FFFFFF/^FF0000" + objectiveFailRate + "%^FFFFFF/^808080" + objectiveResetRate + "%^FFFFFF] "

    switch(timerMessage)
    {
        case timerMessages.RAN_OUT: 
            message = objectiveStatMessage + "^FFFFFFTimer ran out after " + secondsElapsed + "s"
            break
        case timerMessages.OBJECTIVE_REACHED: 
            message = objectiveStatMessage + "^FFFFFFReached objective after " + secondsElapsed + "s (^00FF00-" + secondsLeft + "s^FFFFFF)"
            break
        case timerMessages.OBJECTIVE_AFTER_RAN_OUT:
            message = objectiveStatMessage + "^FFFFFFReached objective after " + secondsElapsed + "s (^FF0000+" + secondsElapsedAfterTimer + "s^FFFFFF)"
            break
        case timerMessages.EARLY_RESET:
            message = objectiveStatMessage + "^FFFFFFDid not reach objective (^808080reset^FFFFFF)"
            break
        default: 
            message = objectiveStatMessage + "Elapsed " + secondsElapsed + "s and " + secondsLeft + "s left on timer"
            break
    }
    //TODO: Add to message with Succes / Fail / Reset (S/F/R) 
    //local message = "^FFFFFFTimer stopped at: ^FF0000" + secondsLeft + "^FFFFFF seconds left (" + timeElapsed + " elapsed)"
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

// FUNC REGION: USER
::use <- function()
{
    if(inOptionsMenu) 
    {
        leaveOptionsMenu()
        leftMenu = true
        use()
        return
    }
    if(!leftMenu && !objectiveDone && chosenTeleObjective != teleObjectives.SURVIVE) 
    {
        objectiveResets++
        sendTimerMessage(timerMessages.EARLY_RESET)
    }
    
    ensureAlive()
    resetPacks()
    stopTimers()
    hasJumped = false
    objectiveDone = false
    
    

    //TODO: Make it from on tele to on use? so even when theres no tele selected, some functions like regen will work regardless.

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
function saveTele1()
{
    selectedMap.teles.custom1 <- { loc = teleLocations.CUSTOM_1, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_1)
}
function saveTele2()
{
    selectedMap.teles.custom2 <- { loc = teleLocations.CUSTOM_2, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_2)
}
function saveTele3()
{
    selectedMap.teles.custom3 <- { loc = teleLocations.CUSTOM_3, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
    changeTeleLocation(teleLocations.CUSTOM_3)
}
function saveTele4()
{
    selectedMap.teles.custom4 <- { loc = teleLocations.CUSTOM_4, pos = player.GetOrigin(), ang = player.EyeAngles(), vel = player.GetAbsVelocity() }
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

    tickTeleTimerMax = chosenTeleTimer * ticksPerSecond 
    tickTeleTimer++
    tickStopwatch++
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
            capMatrix = selectedGamemode.controls[0]
            break
        case caps.OVERRIDE:
            capMatrix = selectedGamemode.controls[chosenCapsAmount]
            break
        default:
            printl("chosen caps not found")
    }

    local lockMatrix

    switch (chosenLocks)
    {
        case locks.DEFAULT:
            lockMatrix = selectedGamemode.locks.def[chosenCapsAmount]
            break
        case locks.ALL:
            lockMatrix = selectedGamemode.locks.all[chosenCapsAmount]
            break
        case locks.ATTACK:
            lockMatrix = selectedGamemode.locks.attack[chosenCapsAmount]
            break
        case locks.DEFEND:
            lockMatrix = selectedGamemode.locks.defend[chosenCapsAmount]
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
::onTeleTimerEnd <- function()
{
    EmitSoundEx({
    sound_name = sounds.buttonPress, 
    })
    //ClientPrintSafe(null, "^FF0000Timer reached 0!^")
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
    printl("uber start")
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
    if(!objectiveDone)
    {
        objectiveDone = true
        
        if(tickTeleTimer == 0 && tickStopwatch != 0) 
        {
            objectiveFails++
            sendTimerMessage(timerMessages.OBJECTIVE_AFTER_RAN_OUT)
        }
        else 
        {
            objectiveSuccesses++
            sendTimerMessage(timerMessages.OBJECTIVE_REACHED)
        }
        stopStopwatch()

        EmitSoundEx({
        sound_name = sounds.buttonPress, 
        })
    }
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
    text.__KeyValueFromString("color", textHighlightedColor)
}
::bTextEnable <- function(text)
{
    if(!inOptionsMenu) return
    text.__KeyValueFromString("color", textOffRedColor)
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
        //TODO FIX BUG: 1388 bDisable the index 8 does not exist
        bEnableOptionsCategory(optionsGroupTeleLocation)
        bEnableOptionsTextCategory(optionsTextsGroupTeleLocation)
        bDisable(optionsGroupTeleLocation[toTeleLocation])
        bTextDisable(optionsTextsGroupTeleLocation[toTeleLocation])
        chosenTeleLocation = toTeleLocation
    }
}
::changeTeleObjective <- function(toTeleObjective)
{

    if(chosenTele == teles.OFF) changeTele(teles.ON)

    if(toTeleObjective == teleObjectives.SURVIVE) 
    {
        resetObjectiveStats()
    }

    if(toTeleObjective != teleObjectives.REACH && chosenTeleObjective == teleObjectives.REACH) 
    {
        destroyObjectiveTrigger()
        SendToConsole("ent_absbox objectiveBoundary")
    }
    if(chosenTeleObjective == teleObjectives.REACH)
    {
        SendToConsole("developer 1") // TODO: find different way to show box of objective
    }
    if(chosenTeleObjective != teleObjectives.REACH)
    {
        SendToConsole("developer 0")       
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
    printl("reset")
    objectiveSuccesses = 0
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
    Convars.SetValue("tf_bot_difficulty", difficulty+1) // bit messy but there are 4 difficulties, this way we ignore the easiest option, and include expert option
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
    changeTeleObjective(teleObjectives.SURVIVE)
}
::teleObjective2 <- function()
{
    changeTeleObjective(teleObjectives.KILL)
}
::teleObjective3 <- function()
{
    changeTeleObjective(teleObjectives.REACH)
}
::teleObjective4 <- function()
{
    changeTeleObjective(teleObjectives.CAP)
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
        tele(selectedMap.teles.options)
        menuRotation += QAngle(0,-90,0)
        player.SnapEyeAngles(menuRotation)//alternative way of handling: leaveOptionsMenu()
    }
    else 
    {
        menuRotation = selectedMap.teles.options.ang
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

    tele(selectedMap.teles.options)
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
        printl(button)
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
    objectiveBoundaries = []

}
::createObjectiveTrigger <- function()
{
    //TODO: Make best time, avg time, completion %. stuff like this for objective reach
    //TODO: Maybe even keep a demo of best time?
    destroyObjectiveTrigger()

    local trace = {}
    trace =
	{
		start = player.EyePosition(),
		end = player.EyePosition() + (player.EyeAngles().Forward() * 32768.0),
		ignore = player
	}
    TraceLineEx(trace)

    printl(trace.pos)

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

    changeTeleObjective(teleObjectives.REACH)

    SendToConsole("ent_absbox objectiveBoundary")
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

    local floor1 =       SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 0,    -10), model = "models/props_trainyard/crane_platform001.mdl", targetname = "optionsMenu_floor1",       solid = 6, })
    local floorCable1 =  SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 0,    230), model = "models/props_trainyard/crane_cable001.mdl",    targetname = "optionsMenu_floorCable1",  solid = 0, })
    local floorPulley1 = SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, -148, 235), model = "models/props_trainyard/pulley_block001.mdl",   targetname = "optionsMenu_floorPulley1", solid = 0, })
    local floorPulley2 = SpawnEntityFromTable("prop_dynamic", {origin = playerPos + Vector(0, 148,  235), model = "models/props_trainyard/pulley_block001.mdl",   targetname = "optionsMenu_floorPulley2", solid = 0, })

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


    optionsTextsGroupTele =             createButtonTexts("tele",           0,  wallPos1, 1, playerAng, 10, 8, textOffRedColor,     teleMessages)
    optionsTextsGroupTeleLocation =     createButtonTexts("teleLocation",   4,  wallPos1, 1, playerAng, 10, 8, textOffRedColor,     teleLocationMessages)
    optionsTextsGroupTeleObjective =    createButtonTexts("teleObjective",  16, wallPos1, 1, playerAng, 10, 8, textOffRedColor,     teleObjectiveMessages)
    optionsTextsGroupTeleTimer =        createButtonTexts("teleTimer",      20, wallPos1, 1, playerAng, 10, 8, textOffWhiteColor,   teleTimerMessages)

    optionsTextsGroupHealth =           createButtonTexts("health",         0,  wallPos2, 2, playerAng, 10, 8, textOffRedColor,     healthMessages)
    optionsTextsGroupHealthRegen =      createButtonTexts("healthRegen",    4,  wallPos2, 2, playerAng, 10, 8, textOffRedColor,     healthRegenMessages)
    optionsTextsGroupHealthRegenAdd =   createButtonTexts("healthRegenAdd", 8,  wallPos2, 2, playerAng, 10, 8, textOffWhiteColor,   healthRegenAddMessages)
    optionsTextsGroupHealing =          createButtonTexts("healing",        12, wallPos2, 2, playerAng, 10, 8, textOffRedColor,     healingMessages)
    optionsTextsGroupHealingType =      createButtonTexts("healingType",    16, wallPos2, 2, playerAng, 10, 8, textOffRedColor,     healingTypeMessages)
    optionsTextsGroupHealingTimer =     createButtonTexts("healingTimer",   20, wallPos2, 2, playerAng, 10, 8, textOffWhiteColor,   healingTimerMessages)

    optionsTextsGroupUber =             createButtonTexts("uber",           0,  wallPos3, 3, playerAng, 10, 8, textOffRedColor,     uberMessages)
    optionsTextsGroupUberTimer =        createButtonTexts("uberTimer",      4,  wallPos3, 3, playerAng, 10, 8, textOffWhiteColor,   uberTimerMessages)
    optionsTextsGroupAmmo =             createButtonTexts("ammo",           8,  wallPos3, 3, playerAng, 10, 8, textOffRedColor,     ammoMessages)
    optionsTextsGroupAmmoType =         createButtonTexts("ammoType",       12, wallPos3, 3, playerAng, 10, 8, textOffRedColor,     ammoTypeMessages)
    optionsTextsGroupAmmoRegen =        createButtonTexts("ammoRegen",      16, wallPos3, 3, playerAng, 10, 8, textOffRedColor,     ammoRegenMessages)
    optionsTextsGroupAmmoRegenAdd =     createButtonTexts("ammoRegenAdd",   20, wallPos3, 3, playerAng, 10, 8, textOffWhiteColor,   ammoRegenAddMessages)

    optionsTextsGroupBot =              createButtonTexts("bot",            0,  wallPos4, 4, playerAng, 10, 8, textOffRedColor,     botMessages)
    optionsTextsGroupBotSetup =         createButtonTexts("botSetup",       4,  wallPos4, 4, playerAng, 10, 8, textOffRedColor,     botSetupMessages)
    optionsTextsGroupCap =              createButtonTexts("cap",           16,  wallPos4, 4, playerAng, 10, 8, textOffRedColor,     capMessages)
    optionsTextsGroupCapAdd =           createButtonTexts("cap",           18,  wallPos4, 4, playerAng, 10, 8, textOffWhiteColor,   capAddMessages)
    optionsTextsGroupLock =             createButtonTexts("lock",          20,  wallPos4, 4, playerAng, 10, 8, textOffRedColor,     lockMessages)

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

function OnGameEvent_player_hurt(params)
{
    //printl("player hurt")
    //printl(params.health)
    //printl(params.damageamount)

    ////below more reliably replaces: if (player.InCond(Constants.ETFCond.TF_COND_BLASTJUMPING)) hasJumped = true
    if(params.attacker == params.userid) hasJumped = true
    //TODO: show this stuff somewhere in hud
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
//TODO: fix issue where this function is added multiple times for each time script is re execed.
__CollectGameEventCallbacks(this)