-- @description Toggle Exclusive FX Chain by Index
-- @author lbpinheiro
-- @version 0.1
-- @changelog It's Alive!
-- @about
--   For the selected track (or the first one if none is selected), enables the effect in the FX Chain at index position (zero-based) and disables all others. Github repo at https://github.com/lbpinheiro/reascripts

local fxIndex = 5
local track = reaper.GetSelectedTrack(0,0)

if track == nil then
  track = reaper.GetTrack(0,0)
end

local fxCount = reaper.TrackFX_GetCount(track)

for i = 0, fxCount do
    if i == fxIndex then
        reaper.TrackFX_SetEnabled(track, i, true)
    else
        reaper.TrackFX_SetEnabled(track, i, false)
    end
end