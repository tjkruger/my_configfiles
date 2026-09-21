-- Shared rule definitions can go here later.
-- TODO: add any shared window or workspace rules if needed.

-- Rule: only windows carrying the "confined" tag get the lock
hl.window_rule({ name = "confine-tagged", match = { tag = "confined" }, confine_pointer = true })

-- One key toggles the tag on whatever window is focused
hl.bind(mainMod .. "+ G", hl.dsp.window.tag({ tag = "confined" }))


return true
