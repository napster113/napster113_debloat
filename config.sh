##########################################################################################
#
# Magisk
# by topjohnwu
# 
# This is a template zip for developers
#
##########################################################################################
##########################################################################################
# 
# Instructions:
# 
# 1. Place your files into system folder
# 2. Fill in all sections in this file
# 3. For advanced features, add commands into the script files under common:
#    post-fs.sh, post-fs-data.sh, service.sh
# 4. Change the "module.prop" under common with the info of your module
# 
##########################################################################################
##########################################################################################
# 
# Limitations:
# 1. Can not place any new items under /system root!! e.g. /system/newfile, /system/newdir
#    Magisk will delete these items at boot.
# 
##########################################################################################

##########################################################################################
# Defines
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

# Is this a cache mod?
CACHEMOD=false

# This will be the folder name under /magisk or /cache/magisk
# This should also be the same as the id in your module.prop to prevent confusion
MODID=napster113_debloat

# Set to true if you need automount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need post-fs script (Only available in cache mods)
POSTFS=false

# Set to true if you need post-fs-data script (Only available in non-cache mods)
POSTFSDATA=false

# Set to true if you need late_start service script (Only available in non-cache mods)
LATESTARTSERVICE=false

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*****************************************"
  ui_print "     Magisk Module napster113 Debloat    "
  ui_print "*****************************************"
}

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# By default Magisk will merge your files with the original system
# Directories listed here however, will be directly mounted to the correspond directory in the system

# This is an example
REPLACE="

"

# Construct your own list
REPLACE="
/system/app/WebManual
/system/app/Drive
/system/app/Dropbox_zero
/system/app/Hangouts
/system/app/Maps
/system/app/Music2
/system/app/PlayGames
/system/app/YouTube	
/system/app/WhatsAppDownloader
/system/app/FlipboardBriefing
/system/app/SBrowser_4_LATEST
/system/app/OneDrive_Samsung
/system/app/MyGalaxyStub
/system/app/Books
/system/app/ChromeCustomizations
/system/app/Facebook_stub
/system/app/FBInstagram_stub
/system/app/FBMessenger_stub
/system/app/FBAppManager
/system/app/Gmail2
/system/app/MSSkype_stu	
/system/app/Newsstand
/system/app/Sidesync
/system/app/OneDrive
/system/app/OneNote	
/system/app/PlusOne
/system/app/Photos
/system/app/SmartRemote_zero
/system/app/Videos
/system/app/MobilePrintSvc_Samsung	
/system/app/ColorBlind_M
/system/app/ChocoEUKor	
/system/app/AdvSoundDetector2015
/system/app/AssistantMenu_M
/system/app/BeamService	
/system/priv-app/DeezerTROffer
/system/priv-app/SETKCustomizationV2_1
/system/priv-app/Excel_SamsungStub
/system/priv-app/PowerPoint_SamsungStub
/system/priv-app/Word_SamsungStub
/system/priv-app/HancomOfficeViewer
/system/priv-app/WhatsAppDownloader
/system/priv-app/SamsungPayStub
/system/priv-app/GalaxyCare
/system/priv-app/GearManager
/system/priv-app/KLMSAgent
/system/priv-app/VoiceWakeUp
/system/priv-app/VoiceNote_4.0
/system/app/Bridge
/system/app/BBCAgent
/system/app/ELMAgent
/system/app/MyKNOXSetupWizard
/system/app/SamsungDLPService
/system/app/SysScope
/system/app/SecurityLogAgent
/system/app/ContainerAgent
/system/app/ContainerEventsRelayManager
/system/app/kioskdefault
/system/app/KLMSAgent
/system/app/Knox
/system/app/KNOX
/system/app/KnoxAppsUpdateAgent
/system/app/KnoxAttestationAgent
/system/app/KnoxFolderContainer
/system/app/KnoxSetupWizardClient
/system/app/KnoxSwitcher
/system/app/RCPComponents
/system/app/SwitchKnoxI
/system/app/UniversalMDMClient
/system/priv-app/FotaAgent
/system/priv-app/SPDClient
/system/priv-app/UrgentFWUpdate
/system/priv-app/UrgentFWUpdateNfc
/system/container
/system/preloadedkiosk
/system/preloadedsso
/system/preloadedmdm
/system/etc/secure_storage/com.sec.knox
/system/etc/secure_storage/com.samsung.android.securitylogagent
/system/app/AntHalService
/system/app/ANTPlusPlugins
/system/app/ANTPlusTest
/system/app/ANTRadioService
/system/app/GearFit
/system/app/GearFitInstaller
/system/app/GearManagerStub
/system/priv-app/GearManager
/system/priv-app/RNB
/system/priv-app/RNBShell
/system/priv-app/VRSetupWizardStub
/system/app/SapaAudioConnectionService
/system/app/SapaMonitor
/system/priv-app/Hearingdro_V5
/system/app/BasicDreams
/system/app/PhotoTable
/system/priv-app/SecLiveWallpapersPicker
/system/app/SamsungTTS
/system/app/WeatherProvider
/system/tts
/system/voicebargeindata
/system/wakeupdata
/system/priv-app/SVoiceLang_EnglishPack_GB_1.0
/system/priv-app/SVoiceLang_EnglishPack_US_1.0
/system/priv-app/SVoiceLang_FrenchPack_1.0
/system/priv-app/SVoiceLang_GermanPack_DE_1.0
/system/priv-app/SVoiceLang_ItalianPack_IT_1.0
/system/priv-app/SVoiceLang_RussianPack_RU_1.0
/system/priv-app/SVoiceLang_SpanishPack_ES_1.0
/system/priv-app/SVoice
/system/priv-app/SVoiceLang
/system/priv-app/SVoice_1.0
/system/priv-app/VoiceWakeUp
/system/priv-app/SVoiceIME
/system/priv-app/SVoicePLM
/system/priv-app/SVoicePLM_1.0
/system/priv-app/SVoiceService
/system/app/CarmodeStub
/system/app/Carmode_Del
/system/app/AllShareCastPlayer
/system/app/AllshareFileShare
/system/app/AllshareFileShareClient
/system/app/AllshareFileShareServer
/system/app/AllshareMediaShare
/system/app/WfdBroker
/system/lib/libasf_fileshare.so
/system/lib/libasf_fileshareserver.so
/system/lib/libasf_mediashare.so
/system/priv-app/SecEmail_M
/system/lib/libkerberos.so
/system/lib64/libkerberos.so
/system/app/GoogleTTS
/system/priv-app/Velvet
/system/usr/srec
/system/app/CoolEUKor
/system/app/GalaxyAppsWidget_Phone
/system/app/HealthService
/system/app/mygalaxy_app-release-SDK_23_150116
/system/priv-app/SecMyFiles
/SYSTEM/priv-app/SmartManager_v3
/system/priv-app/SmartManagerSDK
/system/priv-app/SmartManagerProvider
/system/priv-app/FirewallM
"

##########################################################################################
# Permissons
##########################################################################################

# NOTE: This part has to be adjusted to fit your own needs

set_permissions() {
  # Default permissions, don't remove them
  set_perm_recursive  $MODPATH  0  0  0755  0644

  # Only some special files require specific permission settings
  # The default permissions should be good enough for most cases

  # Some templates if you have no idea what to do:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644
}
