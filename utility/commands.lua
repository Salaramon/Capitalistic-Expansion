function split_string(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

function runCommand(messsage)
  commandInfo = split_string(message, " ")

  if event.message == "event.mission" then
      spawnMission()
  end

  if commandInfo[1] == "variable.credit" then
      forceCredit = tonumber(on_update_forceCredit(commandInfo[2]))
  end

  if event.message == "test" then

  end
end
