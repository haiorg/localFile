-- 不要移除此注释，这是此光环的一部分：标题
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    btn:SetScript("OnClick",function(self,RL) 
            if RL=='LeftButton' then --左键点击
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV1_BTN_LIST','SHOW')
            elseif  RL=='RightButton'  then  --右键点击
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV1_BTN_LIST','HIDE')
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE')
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE')
            end
    end)
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_BTN_TIPTEXT','SHOW')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV1_BTN_LIST','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
            
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
            WeakAuras.ScanEvents('MY_MAGE_HELP_BTN_TIPTEXT','HIDE')
    end)
end
_G[e.id.."Button"]:Show()








-- 不要移除此注释，这是此光环的一部分：传送门
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    btn:SetScript("OnClick",function(self,RL) 
            if RL=='LeftButton' then --左键点击
            elseif  RL=='RightButton'  then  --右键点击
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            end
    end)
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','SHOW')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
            
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
    end)
end
_G[e.id.."Button"]:Show()
local e = aura_env
if not _G[e.id.."Button"] then
    local region = WeakAuras.GetRegion(e.id)
    e.btn = CreateFrame("Button", e.id.."Button", region, "SecureActionButtonTemplate")
    e.btn:SetAttribute("type", "macro")
    e.btn:SetAllPoints(region)
end
local btn = _G[e.id.."Button"]

aura_env.TPShow = true

-- 不要移除此注释，这是此光环的一部分：传送
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    btn:SetScript("OnClick",function(self,RL) 
            if RL=='LeftButton' then --左键点击
            elseif  RL=='RightButton'  then  --右键点击
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            end
    end)
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','SHOW')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
            
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
    end)
end
_G[e.id.."Button"]:Show()
local e = aura_env
if not _G[e.id.."Button"] then
    local region = WeakAuras.GetRegion(e.id)
    e.btn = CreateFrame("Button", e.id.."Button", region, "SecureActionButtonTemplate")
    e.btn:SetAttribute("type", "macro")
    e.btn:SetAllPoints(region)
end
local btn = _G[e.id.."Button"]

aura_env.TPShow = true

-- 不要移除此注释，这是此光环的一部分：buff
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    btn:SetScript("OnClick",function(self,RL) 
            if RL=='LeftButton' then --左键点击
            elseif  RL=='RightButton'  then  --右键点击  
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE') 
            end
    end)
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','SHOW')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
            
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
    end)
end
_G[e.id.."Button"]:Show()
local e = aura_env
if not _G[e.id.."Button"] then
    local region = WeakAuras.GetRegion(e.id)
    e.btn = CreateFrame("Button", e.id.."Button", region, "SecureActionButtonTemplate")
    e.btn:SetAttribute("type", "macro")
    e.btn:SetAllPoints(region)
end
local btn = _G[e.id.."Button"]

aura_env.TPShow = true

















-- 不要移除此注释，这是此光环的一部分：食物
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    btn:SetScript("OnClick",function(self,RL) 
            if RL=='LeftButton' then --左键点击
            elseif  RL=='RightButton'  then  --右键点击 
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            end
    end)
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','SHOW')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE') 
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
            
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
    end)
end
_G[e.id.."Button"]:Show()
local e = aura_env
if not _G[e.id.."Button"] then
    local region = WeakAuras.GetRegion(e.id)
    e.btn = CreateFrame("Button", e.id.."Button", region, "SecureActionButtonTemplate")
    e.btn:SetAttribute("type", "macro")
    e.btn:SetAllPoints(region)
end
local btn = _G[e.id.."Button"]


aura_env.TPShow = true

-- 不要移除此注释，这是此光环的一部分：工程学
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:RegisterForClicks("LeftButtonDown","RightButtonDown")
    btn:SetScript("OnClick",function(self,RL) 
            if RL=='LeftButton' then --左键点击
            elseif  RL=='RightButton'  then  --右键点击  
                WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE') 
            end
    end)
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','SHOW')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
            
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
    end)
end
_G[e.id.."Button"]:Show()
local e = aura_env
if not _G[e.id.."Button"] then
    local region = WeakAuras.GetRegion(e.id)
    e.btn = CreateFrame("Button", e.id.."Button", region, "SecureActionButtonTemplate")
    e.btn:SetAttribute("type", "macro")
    e.btn:SetAllPoints(region)
end
local btn = _G[e.id.."Button"]

aura_env.TPShow = true


-- 不要移除此注释，这是此光环的一部分：宝石
local e=aura_env
local btn = _G[e.id.."Button"]    
local region = WeakAuras.GetRegion(e.id) 
if not btn then     
    btn = CreateFrame("Button", e.id.."Button", UIParent, "SecureActionButtonTemplate") 
    btn:SetAllPoints(region)  
    region:SetAlpha(e.config.Leave)
    btn:SetAttribute("type", "macro")
    btn:SetScript("OnEnter",function(self)  --鼠标进入  
            region:SetAlpha(e.config.Enter)
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_FOOD','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_BUFF','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP_DOOR','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_TP','HIDE')
            WeakAuras.ScanEvents('MY_MAGE_HELP_LV2_BTN_ENGINEERING','HIDE')
    end)
    btn:SetScript("OnMouseUp", function(self)--鼠标抬起
            region:SetAlpha(e.config.Enter)
    end)
    btn:SetScript("OnMouseDown", function(self) --鼠标按下
            region:SetAlpha(e.config.Down)
            GameTooltip:Show()
    end)
    btn:SetScript("OnLeave",function(self) --鼠标离开
            region:SetAlpha(e.config.Leave)
            GameTooltip:Hide()
    end)
end
_G[e.id.."Button"]:Show()



local e = aura_env
if not _G[e.id.."Button"] then
    local region = WeakAuras.GetRegion(e.id)
    e.btn = CreateFrame("Button", e.id.."Button", region, "SecureActionButtonTemplate")
    e.btn:SetAttribute("type", "macro")
    e.btn:SetAllPoints(region)
end
local btn = _G[e.id.."Button"]
btn:SetAttribute("macrotext","/cast 制造法力宝石")

aura_env.TPShow = true















