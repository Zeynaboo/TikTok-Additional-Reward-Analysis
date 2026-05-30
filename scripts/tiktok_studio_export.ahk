#Requires AutoHotkey v2.0

CoordMode "Mouse", "Screen"
CoordMode "Pixel", "Screen"

global ConfigFile := A_ScriptDir "\tiktok_studio_points.ini"
global TargetDir := "C:\Users\zeina\Documents\Tiktok Studio App Webscrap\Web Tiktok Screenshot"
global StopRequested := false
global WaitAfterVideoClick := 4500
global WaitAfterOverviewClick := 5000
global WaitAfterViewersClick := 5000
global WaitAfterExtensionOpen := 5000
global WaitAfterFullPageClick := 5000
global WaitAfterDoneClick := 5000
global WaitAfterSaveDialogOpen := 5000
global WaitAfterFolderChange := 2500
global WaitAfterFilenameFill := 1200
global WaitAfterSaveComplete := 5000
global WaitAfterSidebarScroll := 1800
global SidebarWheelDelta := 85
global SidebarWheelRepeats := 1

; This script is intentionally kept as a project artifact.
; It documents the semi-automated collection workflow used during the project.
