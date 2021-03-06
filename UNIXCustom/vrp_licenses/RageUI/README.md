# No one is allowed to sell resources with rageui. I will take the necessary sanctions if that is the case. Thank you for respecting my work.

# Discord : https://discord.gg/Jjb2c8Q

# Thank you to all the sponsors of this project! Without you this one would not be what it is today. 
- https://github.com/NotKalyptus
- https://github.com/Parow
- https://github.com/clementinise
- https://github.com/DesertFade
- https://github.com/rubbertoe98
- https://github.com/Skodrix
- https://github.com/Brlichtou
- https://github.com/KxxDaa
___
![OpenIssue](https://img.shields.io/github/issues/iTexZoz/RageUI.svg?style=flat)
![LastReleases](https://img.shields.io/github/release/iTexZoz/RageUI.svg?label=Last%20releases&style=flat)
<br>
## ⚠️Warning, downloading and publishing this resource on Github without using the github Fork option is not allowed and may result in a suspension of the repository. I invite you to respect my work and that of my collaborators. :snail:
## Hello to all of you. 

### First of all, I wanted to present the RageUI project. 

## What is RageUI? 

RageUI is a project specially created to replace the NativeUILua-Reloaded library. 
This library allows to create menus similar to the one of GTA:O, however this library is still young and has many problems. 

The implementation of this open source project was done faster than expected in order to be able to count on the community to improve it and solve the concerns currently present on it. [See the tab]. 

This project would never have been possible without the trust [Frazzle] placed in me, so I wanted to thank him for trusting me to carry out this project. 

### Thank you very much to all the contributors who allowed me to move forward on this project. :snail:

- [Development] [Frazzle](https://github.com/FrazzIe) 
- [Development] [Dylan Malandain (iTexZoz)](https://github.com/iTexZoz
- [Development] [SpikeScarlatti](https://github.com/SpikeScarlatti) 
- [Development] [Parow](https://github.com/Parow)
- [Development] [TDLC](https://github.com/TDLCTV)
- [Additional banner] [root-cause](https://github.com/root-cause/MenuBannerPack)
- [Media Previews] [eR0ot](https://github.com/eR0oT)

# Read this message before using it. ⚠️

- It is useless to ask the question if this library is VRP or ESX compatible, if you ask yourself this question I invite you to turn on your brain to try to understand at least a little what the utility of this library is.

- First of all, it is important to take into account that no support will be provided if you don't know you to use this library with the documentation provided. [See the tab]. 

- You can find the frequently asked questions from this dedicated page to answer these questions[See the tab]. 

- it is possible that other people are open an exit answering the question you are asking yourself or talking about a problem you can surely encounter, before opening exit it is important to look for if a duplicate does not exist. 

- there is no need to ask questions about the fivem forum workstation, I will not answer any questions or problems on the forum, in order to centralize the messages and questions asked by users of this library. 

<br>

# Empty menu example

```lua
RMenu.Add('showcase', 'main', RageUI.CreateMenu("RageUI", "~b~RAGEUI SHOWCASE"))
RMenu.Add('showcase', 'submenu', RageUI.CreateSubMenu(RMenu:Get('showcase', 'main'), "RageUI", "~b~RAGEUI SHOWCASE", nil, nil, "root_cause", "shopui_title_dynasty8"))

-- RageUI.CreateWhile(wait, menu, key, closure)
RageUI.CreateWhile(1.0, RMenu:Get('showcase', 'main'), 51, function()

 -- RageUI.IsVisible(menu, header, glare, instructional, items, panels)
    RageUI.IsVisible(RMenu:Get('showcase', 'main'), true, true, true, function()
        --- Items
     
    end, function()
        ---Panels
    end)

 -- RageUI.IsVisible(menu, header, glare, instructional, items, panels)
    RageUI.IsVisible(RMenu:Get('showcase', 'submenu'), false, false, false, function()
        --- Items

    end, function()
        ---Panels
      
    end)

end)

```

# Troubleshooting :bug:

<p align="center">
    <a href="https://github.com/iTexZoz/RageUI/wiki/Troubleshooting">
<img width="80%" src="https://i.gyazo.com/7e0c639920061a37fcd6b4604b71e662.png">
  </a>
</p>

- CPU calculation problem present when a number of items is large. (3k item 3.0ms) this is an error only present on the menus, it is important to understand that the calculation performed only if the menu is visible. (unlike NativeUILua-Reloaded)
