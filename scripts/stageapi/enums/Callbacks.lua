-- better for autocomplete too!
local Callbacks = {
    POST_CHECK_VALID_ROOM = "POST_CHECK_VALID_ROOM", -- (layout, roomList, seed, shape, rtype, requireRoomType)
    PRE_SELECT_GRIDENTITY_LIST = "PRE_SELECT_GRIDENTITY_LIST", -- (GridDataList, spawnIndex)
    PRE_SELECT_ENTITY_LIST = "PRE_SELECT_ENTITY_LIST", -- (entityList, spawnIndex, roomMetadata)
    PRE_SPAWN_ENTITY_LIST = "PRE_SPAWN_ENTITY_LIST", -- (entityList, spawnIndex, doGrids, doPersistentOnly, doAutoPersistent, avoidSpawning, persistenceData)
    PRE_SPAWN_ENTITY = "PRE_SPAWN_ENTITY", -- (entityInfo, entityList, index, doGrids, doPersistentOnly, doAutoPersistent, avoidSpawning, persistenceData, shouldSpawnEntity)
    POST_SPAWN_ENTITY = "POST_SPAWN_ENTITY", -- (ent, entityInfo, entityList, index, doGrids, doPersistentOnly, doAutoPersistent, avoidSpawning, persistenceData, shouldSpawnEntity)
    PRE_SPAWN_GRID = "PRE_SPAWN_GRID", -- (gridData, gridInformation, entities, gridSpawnRNG)
    PRE_ROOMS_LIST_USE = "PRE_ROOMS_LIST_USE", --(room)
    PRE_ROOM_LAYOUT_CHOOSE = "PRE_ROOM_LAYOUT_CHOOSE", -- (currentRoom, roomsList)
    POST_ROOM_INIT = "POST_ROOM_INIT", -- (currentRoom, fromSaveData, saveData)
    POST_BOSS_ROOM_INIT = "POST_BOSS_ROOM_INIT", -- (currentRoom, boss, bossID)
    POST_ROOM_LOAD = "POST_ROOM_LOAD", -- (currentRoom, isFirstLoad, isExtraRoom)
    POST_SPAWN_CUSTOM_GRID = "POST_SPAWN_CUSTOM_GRID", -- (CustomGridEntity, force, respawning)
    POST_CUSTOM_GRID_UPDATE = "POST_CUSTOM_GRID_UPDATE", -- (CustomGridEntity)
    POST_CUSTOM_GRID_PROJECTILE_UPDATE = "POST_CUSTOM_GRID_PROJECTILE_UPDATE", -- (CustomGridEntity, projectile)
    POST_CUSTOM_GRID_PROJECTILE_HELPER_UPDATE = "POST_CUSTOM_GRID_PROJECTILE_HELPER_UPDATE", -- (CustomGridEntity, projectileHelper, projectileHelperParent)
    POST_CUSTOM_GRID_DESTROY = "POST_CUSTOM_GRID_DESTROY", -- (CustomGridEntity, projectile)
    POST_CUSTOM_GRID_UNLOAD = "POST_CUSTOM_GRID_UNLOAD", -- (CustomGridEntity)
    POST_REMOVE_CUSTOM_GRID = "POST_REMOVE_CUSTOM_GRID", -- (CustomGridEntity, keepBaseGrid)
    POST_CUSTOM_GRID_POOP_GIB_SPAWN = "POST_CUSTOM_GRID_POOP_GIB_SPAWN", -- (CustomGridEntity, effect)
    POST_CUSTOM_GRID_DIRTY_MIND_SPAWN = "POST_CUSTOM_GRID_DIRTY_MIND_SPAWN", -- (CustomGridEntity, familiar)
    PRE_TRANSITION_RENDER = "PRE_TRANSITION_RENDER", -- ()
    POST_SPAWN_CUSTOM_DOOR = "POST_SPAWN_CUSTOM_DOOR", -- (door, data, sprite, CustomDoor, persistData, index, force, respawning, grid, CustomGrid)
    POST_CUSTOM_DOOR_UPDATE = "POST_CUSTOM_DOOR_UPDATE", -- (door, data, sprite, CustomDoor, persistData)
    PRE_BOSS_SELECT = "PRE_BOSS_SELECT", -- (bosses, rng, roomDesc, ignoreNoOptions)
    POST_OVERRIDDEN_GRID_BREAK = "POST_OVERRIDDEN_GRID_BREAK", -- (grindex, grid, justBrokenGridSpawns)
    POST_GRID_UPDATE = "POST_GRID_UPDATE", -- ()
    PRE_UPDATE_GRID_GFX = "PRE_UPDATE_GRID_GFX", -- ()
    POST_UPDATE_GRID_GFX = "POST_UPDATE_GRID_GFX", -- (gridGfx)
    PRE_CHANGE_ROOM_GFX = "PRE_CHANGE_ROOM_GFX", -- (currentRoom, usingGfx, onRoomLoad)
    POST_CHANGE_ROOM_GFX = "POST_CHANGE_ROOM_GFX", -- (currentRoom, usingGfx, onRoomLoad)
    PRE_CHANGE_ROCK_GFX = "PRE_CHANGE_ROCK_GFX", -- [CustomStage] (grid: GridEntity, index: integer, usingFilename: string): string?
    PRE_CHANGE_DECORATION_GFX = "PRE_CHANGE_DECORATION_GFX", -- [CustomStage] (grid: GridEntity, index: integer, usingDecorations: GridGfx.Decorations): GridGfx.Decorations?
    PRE_CHANGE_PIT_GFX = "PRE_CHANGE_PIT_GFX", -- [CustomStage] (grid: GridEntity, index: integer, usingPitFile: GridGfx.PitFile?, usingBridgeFilename: string?, usingAlt: GridGfx.PitFile?): GridGfx.PitFile?, string?, GridGfx.PitFile?
    PRE_CHANGE_MISC_GRID_GFX = "PRE_CHANGE_MISC_GRID_GFX", -- [CustomStage] (grid: GridEntity, index: integer, usingFilename: string): string?
    PRE_STAGEAPI_NEW_ROOM = "PRE_STAGEAPI_NEW_ROOM", -- ()
    PRE_STAGEAPI_NEW_ROOM_GENERATION = "PRE_STAGEAPI_NEW_ROOM_GENERATION", -- (currentRoom, justGenerated, currentListIndex)
    POST_STAGEAPI_NEW_ROOM_GENERATION = "POST_STAGEAPI_NEW_ROOM_GENERATION", -- (currentRoom, justGenerated, currentListIndex, boss)
    POST_STAGEAPI_NEW_ROOM = "POST_STAGEAPI_NEW_ROOM", -- (justGenerated)
    PRE_SELECT_NEXT_STAGE = "PRE_SELECT_NEXT_STAGE", -- (currentstage)
    PRE_PARSE_METADATA = "PRE_PARSE_METADATA", -- (roomMetadata, outEntities, outGrids, roomLoadRNG)
    POST_PARSE_METADATA = "POST_PARSE_METADATA", -- (roomMetadata, outEntities, outGrids)
    POST_SELECT_BOSS_MUSIC = "POST_SELECT_BOSS_MUSIC", -- (currentstage, musicID, isCleared, musicRNG)
    POST_SELECT_CHALLENGE_MUSIC = "POST_SELECT_CHALLENGE_MUSIC", -- (currentstage, musicID, isCleared, musicRNG)
    POST_SELECT_STAGE_MUSIC = "POST_SELECT_STAGE_MUSIC", -- (currentstage, musicID, roomType, musicRNG)
    POST_SELECT_ROOM_MUSIC = "POST_SELECT_ROOM_MUSIC", -- (currentRoom, musicID, baseRoomType, roomId, musicRNG)
    POST_ROOM_CLEAR = "POST_ROOM_CLEAR", -- ()
    PRE_STAGEAPI_SELECT_BOSS_ITEM = "PRE_STAGEAPI_SELECT_BOSS_ITEM", -- (pickup, currentRoom)
    PRE_STAGEAPI_LOAD_SAVE = "PRE_STAGEAPI_LOAD_SAVE", -- ()
    POST_STAGEAPI_LOAD_SAVE = "POST_STAGEAPI_LOAD_SAVE", -- ()
    PRE_PLAY_MINIBOSS_STREAK = "PRE_PLAY_MINIBOSS_STREAK", -- (currentRoom, boss, text)
    POST_STREAK_RENDER = "POST_STREAK_RENDER", -- (streakPos, streakPlaying)
    POST_HUD_RENDER = "POST_HUD_RENDER", -- (isPauseMenuOpen, pauseMenuDarkPct)
    GREED_WAVE_CHANGED = "GREED_WAVE_CHANGED", -- ()
    CHALLENGE_WAVE_CHANGED = "CHALLENGE_WAVE_CHANGED", -- ()
    POST_ROOM_SWAP = "POST_ROOM_SWAP", -- (listIndexA, listIndexB, levelRoomA, levelRoomB)
    PRE_LEVELMAP_SPAWN_DOOR = "PRE_LEVELMAP_SPAWN_DOOR", -- (slot: DoorSlot, doorData, levelRoom: LevelRoom, targetLevelRoom: LevelRoom, roomData, levelMap: LevelMap)
    EARLY_NEW_ROOM = "EARLY_NEW_ROOM", -- ()
}

StageAPI.Enum.Callbacks = Callbacks

return Callbacks
