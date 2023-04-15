globalkeys = Gears.table.join(
    Awful.key({                   }, "Print",     function() os.execute("maimpick")                              end,
              {description = "run screenshot script",   group="awesome"}),
    Awful.key({ Modkey,           }, "F1",        Hotkeys_popup.show_help                                           ,
              {description = "show help",               group="awesome"}),
    Awful.key({ Modkey,           }, "l",         function () Awful.screen.focus_relative( 1)                    end,
              {description = "focus next screen",       group = "screen"}),
    Awful.key({ Modkey,           }, "h",         function () Awful.screen.focus_relative(-1)                    end,
              {description = "focus previous screen",   group = "screen"}),
    Awful.key({ Modkey,           }, "w",         function () Awful.spawn(Browser)                               end,
              {description = "open browser",            group = "launcher"}),
    Awful.key({ Modkey, "Shift"   }, "w",         function () Awful.spawn(Browser2)                              end,
              {description = "open browser2",              group = "launcher"}),
    Awful.key({ Modkey,           }, "e",         function () Awful.spawn(Editor_cmd)                            end,
              {description = "open editor",             group = "launcher"}),
    Awful.key({ Modkey, "Shift"   }, "e",         function () Awful.spawn("thunderbird")                         end,
              {description = "open thunderbird",        group = "launcher"}),
    Awful.key({ Modkey,           }, "m",         function () Awful.spawn(Music)                                 end,
              {description = "open spotify",            group = "launcher"}),
    Awful.key({ Modkey,           }, "d",         function () Awful.spawn("discord --enable-gpu-rasterization")  end,
              {description = "open discord",            group = "launcher"}),
    Awful.key({ Modkey,           }, "c",         function () Awful.spawn("caprine")                             end,
              {description = "open caprine",            group = "launcher"}),
    Awful.key({ Modkey, "Shift"   }, "c",         function () Awful.spawn("telegram-desktop")                    end,
              {description = "open telegram-desktop",   group = "launcher"}),
    Awful.key({ Modkey,           }, "g",         function () Awful.spawn("godot")                               end,
              {description = "open godot",              group = "launcher"}),
    Awful.key({ Modkey, "Shift"   }, "g",         function () Awful.spawn("steam-native")                        end,
              {description = "open steam",              group = "launcher"}),
    Awful.key({ Modkey,           }, "Return",    function () Awful.spawn(Terminal)                              end,
              {description = "open a terminal",         group = "launcher"}),
    Awful.key({ Modkey,           }, "BackSpace", awesome.restart                                                   ,
              {description = "reload awesome",          group = "awesome"}),
    Awful.key({ Modkey, "Shift"   }, "Escape",    awesome.quit                                                      ,
              {description = "quit awesome",            group = "awesome"}),
    Awful.key({ Modkey,           }, "v",         function () Awful.spawn("virt-manager")                        end,
              {description = "open virt-manager",       group = "launcher"}),
    Awful.key({ Modkey, "Shift"   }, "k",         function () Awful.tag.incmwfact( 0.05)                         end,
              {description = "resize split +",          group = "layout"}),
    Awful.key({ Modkey, "Shift"   }, "j",         function () Awful.tag.incmwfact(-0.05)                         end,
              {description = "resize split -",          group = "layout"}),
    Awful.key({ Modkey,           }, "space",     function () Awful.layout.inc( 1)                               end,
              {description = "select next",             group = "layout"}),
    Awful.key({ Modkey, "Shift"   }, "space",     function () Awful.layout.inc(-1)                               end,
              {description = "select previous",         group = "layout"}),
    Awful.key({ Modkey,           }, "r",         function () Awful.screen.focused().mypromptbox:run()           end,
              {description = "run prompt",              group = "launcher"}),

    -- Media
    Awful.key({}, "XF86AudioPlay",        function() os.execute("playerctl play-pause")                          end),
    Awful.key({}, "XF86AudioStop",        function() os.execute("playerctl stop")                                end),
    Awful.key({}, "XF86AudioNext",        function() os.execute("playerctl next")                                end),
    Awful.key({}, "XF86AudioPrev",        function() os.execute("playerctl previous")                            end),
    Awful.key({}, "XF86AudioRaiseVolume", function() os.execute("pamixer -i 3")                                  end),
    Awful.key({}, "XF86AudioLowerVolume", function() os.execute("pamixer -d 3")                                  end),
    Awful.key({}, "XF86AudioMute",        function() os.execute("pamixer -t")                                    end),
    Awful.key({}, "XF86AudioMicMute",     function() os.execute("pactl set-source-mute @DEFAULT_SOURCE@ toggle") end),

    Awful.key({ Modkey,           }, "Tab",
        function ()
            Awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end,
        {description = "go back", group = "client"})
)
