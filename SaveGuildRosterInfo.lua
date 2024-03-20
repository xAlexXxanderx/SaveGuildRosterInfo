function SaveGuildRosterInfo()
    SaveGuildRosterInfoDB = {}
    ts = time()
    SaveGuildRosterInfoDB.ts = ts
    SaveGuildRosterInfoDB.GuildRoster = {}
    NumGuildMembers = GetNumGuildMembers(true);
    for i = 1, NumGuildMembers do
        name, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName = GetGuildRosterInfo(i);
        print(name, rank, class, note, officernote);
        SaveGuildRosterInfoDB.GuildRoster[i] = {name, rank, class, note, officernote};
    end
end

SLASH_SAVEGUILDROSTERINFO1 = "/SaveGuildRosterInfo"
SlashCmdList["SAVEGUILDROSTERINFO"] = function(msg)
    SaveGuildRosterInfo()
end 
