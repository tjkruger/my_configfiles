-- PC-specific extras.
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd("sh -c 'pkill openrgb; openrgb --server; sleep 1; openrgb -p newred'"))