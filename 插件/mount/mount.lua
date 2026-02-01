function myMount(flyableMount,notflyableMount)
  if not IsFlyableArea() or (GetZoneText() == "达拉然" and GetSubZoneText()~="克拉苏斯平台") then CastSpellByName(flyableMount) else CastSpellByName(notflyableMount) end
  
end