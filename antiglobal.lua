spawn(function()
local totalG = 5000
  local gPerSecond = totalG / 10
  local gCount = 0
  local names = {}
  local characters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
  local truePercentage = 40
  local falsePercentage = 40
  local stringPercentage = 20

  function generateName()
      local name = ""
      local length = math.random(15, 50)
      for i = 1, length do
          name = name .. characters[math.random(#characters)]
      end
      return name
  end

  function generateValue()
      local r = math.random(100)
      if r <= truePercentage then
          return true
      elseif r <= truePercentage + falsePercentage then
          return false
      else
          local stringLength = math.random(12, 50)
          local s = ""
          for i = 1, stringLength do
              s = s .. characters[math.random(#characters)]
          end
          return s
      end
  end

  function makeG()
      if gCount < totalG then
          local name = generateName()
          while _G[name] do
              name = generateName()
          end
          _G[name] = generateValue()
          gCount = gCount + 1
      end
  end

  game:GetService("RunService").Heartbeat:Connect(function()
      for i = 1, gPerSecond do
          makeG()
      end
  end)

  task.wait(11)

  local totalG = 5000
  local gPerSecond = totalG / 10
  local gCount = 0
  local names = {}
  local characters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
  local truePercentage = 40
  local falsePercentage = 40
  local stringPercentage = 20

  function generateName()
      local name = ""
      local length = math.random(15, 50)
      for i = 1, length do
          name = name .. characters[math.random(#characters)]
      end
      return name
  end

  function generateValue()
      local r = math.random(100)
      if r <= truePercentage then
          return true
      elseif r <= truePercentage + falsePercentage then
          return false
      else
          local stringLength = math.random(12, 50)
          local s = ""
          for i = 1, stringLength do
              s = s .. characters[math.random(#characters)]
          end
          return s
      end
  end

  function makeG()
      if gCount < totalG then
          local name = generateName()
          while getgenv()[name] do
              name = generateName()
          end
          getgenv()[name] = generateValue()
          gCount = gCount + 1
      end
  end

  game:GetService("RunService").Heartbeat:Connect(function()
      for i = 1, gPerSecond do
          makeG()
      end
  end)
end)
