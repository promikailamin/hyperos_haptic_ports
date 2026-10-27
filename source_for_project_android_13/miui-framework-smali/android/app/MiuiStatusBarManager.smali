.class public Landroid/app/MiuiStatusBarManager;
.super Ljava/lang/Object;
.source "MiuiStatusBarManager.java"


# static fields
.field public static final whitelist ACTION_ENTER_DRIVE_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

.field public static final whitelist ACTION_ENTER_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_enter_recorder"

.field public static final whitelist ACTION_EXIT_FULLSCREEN:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

.field public static final whitelist ACTION_EXPAND_NOTIFICATIONS_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_NOTIFICATIONS_TAB"

.field public static final whitelist ACTION_EXPAND_TOGGLES_TAB:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

.field public static final whitelist ACTION_LEAVE_DRIVE_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

.field public static final whitelist ACTION_LEAVE_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_leave_recorder"

.field public static final whitelist ACTION_PICK_TOGGLE_INTENT:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_PICK_TOGGLE_INTENT"

.field public static final whitelist ACTION_REFRESH_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

.field public static final whitelist ACTION_REMOVE_KEYGUARD_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_remove_keyguard_notification"

.field public static final whitelist ACTION_REQUEST_RESTART:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

.field public static final whitelist ACTION_SHOW_APP_NOTIFICATION_PANEL:Ljava/lang/String; = "show_app_notification_panel"

.field public static final blacklist ACTION_STATUS_BAR_COLOR:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_bar_color"

.field public static final whitelist ACTION_STATUS_QUIET_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_quiet_mode"

.field public static final whitelist ACTION_STATUS_RECORDER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_recorder"

.field public static final blacklist ACTION_STATUS_SAFEPAY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_safepay"

.field public static final blacklist ACTION_STATUS_SOS:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_status_sos"

.field public static final whitelist ACTION_TRIGGER_CAMERA_KEY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

.field public static final whitelist ACTION_TRIGGER_TOGGLE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

.field public static final whitelist ACTION_TRIGGER_TOGGLE_LOCK:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

.field public static final whitelist ACTION_TRIGGER_TOGGLE_SCREEN_BUTTONS:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

.field public static final whitelist DISABLE_FLAG_DARK_MODE:I = 0x40

.field public static final blacklist DISABLE_FLAG_FLOAT_NOTIFICATION:I = 0x400

.field public static final blacklist DISABLE_FLAG_FOD_ICON:I = 0x800

.field public static final whitelist DISABLE_FLAG_FULLSCREEN:I = -0x80000000

.field public static final whitelist DISABLE_FLAG_HIDE:I = 0x80

.field public static final whitelist DISABLE_FLAG_HIDE_IN_FULLSCREEN:I = 0x100

.field public static final whitelist DISABLE_FLAG_KEYGUARD_MODE:I = 0x10

.field public static final whitelist DISABLE_FLAG_LOW_PROFILE:I = 0x2

.field public static final blacklist DISABLE_FLAG_NAVIGATION_DARK_MODE:I = 0x200

.field public static final whitelist DISABLE_FLAG_SIMPLE_MODE:I = 0x20

.field public static final whitelist DISABLE_FLAG_TRANSPARENT:I = 0x1

.field public static final whitelist EXTRA_APP_PACKAGENAME:Ljava/lang/String; = "app_packageName"

.field public static final whitelist EXTRA_FORBID_NOTIFICATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

.field public static final whitelist EXTRA_NOTIFICATION_CLICK:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_notification_click"

.field public static final whitelist EXTRA_NOTIFICATION_KEY:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_notification_key"

.field public static final whitelist EXTRA_RECORDER_DURATION:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_duration"

.field public static final whitelist EXTRA_RECORDER_ENTER_SILENT_MODE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_enter_silent_mode"

.field public static final whitelist EXTRA_RECORDER_SILENT_MODE_CHANGED_BY_USER:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_silent_mode_changed_by_user"

.field public static final whitelist EXTRA_RECORDER_TIMER_ON_OFF:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_timer_on_off"

.field public static final whitelist EXTRA_RECORDER_TITLE:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_recorder_title"

.field public static final whitelist EXTRA_TOGGLE_ID:Ljava/lang/String; = "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

.field public static final whitelist NAVIGATION_HINT_BACK_ALT:I = 0x8

.field public static final whitelist NAVIGATION_HINT_BACK_NOP:I = 0x1

.field public static final whitelist NAVIGATION_HINT_HOME_NOP:I = 0x2

.field public static final whitelist NAVIGATION_HINT_RECENT_NOP:I = 0x4

.field public static final whitelist NOTIFICATION_PANEL_ACTIVITY_NAME:Ljava/lang/String; = "NotiPanelActivity"

.field public static final whitelist PARAM_BASE_TIME:Ljava/lang/String; = "base_time"

.field public static final blacklist SAFEPAY_SCAN_PROGRESS:Ljava/lang/String; = "safepay_scan_progress"

.field public static final blacklist SAFEPAY_SCAN_PROGRESS_CURRENT:Ljava/lang/String; = "safepay_scan_progress_current"

.field public static final blacklist SAFEPAY_SCAN_PROGRESS_MAX:Ljava/lang/String; = "safepay_scan_progress_max"

.field public static final blacklist STATUS_BAR_COLOR_RESTORE:I = -0x1

.field public static final whitelist STATUS_BAR_QUIET_ICON_ACTIVE:I = 0x1

.field public static final whitelist STATUS_BAR_QUIET_ICON_INACTIVE:I = 0x0

.field public static final whitelist STATUS_BAR_RECORDER_DEAD:I = 0x3

.field public static final whitelist STATUS_BAR_RECORDER_HIDE:I = 0x0

.field public static final whitelist STATUS_BAR_RECORDER_SHOW:I = 0x1

.field public static final whitelist STATUS_BAR_RECORDER_SILENCE:I = 0x2

.field public static final blacklist STATUS_BAR_SAFEPAY_HIDE:I = 0x0

.field public static final blacklist STATUS_BAR_SAFEPAY_RISK:I = 0x3

.field public static final blacklist STATUS_BAR_SAFEPAY_SAFE:I = 0x2

.field public static final blacklist STATUS_BAR_SAFEPAY_SCANNING:I = 0x1

.field public static final blacklist STATUS_BAR_SAFEPAY_UNKNOWN:I = 0x4

.field public static final blacklist STATUS_BAR_SAFEPAY_UPDATE_PROGRESS:I = 0x5

.field private static final blacklist STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field public static final blacklist STATUS_BAR_SOS_HIDE:I = 0x0

.field public static final blacklist STATUS_BAR_SOS_SHOW:I = 0x1

.field private static final blacklist STATUS_BAR_TRANSLUCENT:I = 0x40000000

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiStatusBarManager"

.field public static final whitelist TOGGLE_ACCESS_CONTROL:I = 0x10

.field public static final whitelist TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final whitelist TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final whitelist TOGGLE_BATTERY_SAVER:I = 0x1e

.field public static final whitelist TOGGLE_BLUETOOTH:I = 0x2

.field public static final whitelist TOGGLE_BRIGHTNESS:I = 0x4

.field public static final whitelist TOGGLE_CAST:I = 0x1c

.field public static final whitelist TOGGLE_COUNT:I = 0x20

.field public static final whitelist TOGGLE_DATA:I = 0x1

.field public static final whitelist TOGGLE_DIVIDER:I = 0x0

.field public static final whitelist TOGGLE_DRIVE_MODE:I = 0x15

.field public static final whitelist TOGGLE_EDIT:I = 0x1d

.field public static final whitelist TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final whitelist TOGGLE_GPS:I = 0x7

.field public static final whitelist TOGGLE_LOCK:I = 0xa

.field public static final whitelist TOGGLE_MIDROP:I = 0x1b

.field public static final whitelist TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final whitelist TOGGLE_NFC:I = 0x1f

.field public static final whitelist TOGGLE_PAPER_MODE:I = 0x1a

.field public static final whitelist TOGGLE_POWER_MODE:I = 0x17

.field public static final whitelist TOGGLE_PRIVACY_MODE:I = 0xe

.field public static final whitelist TOGGLE_QUIET_MODE:I = 0x19

.field public static final whitelist TOGGLE_REBOOT:I = 0xc

.field public static final whitelist TOGGLE_RINGER:I = 0x5

.field public static final whitelist TOGGLE_ROTATE:I = 0x3

.field public static final whitelist TOGGLE_SCREENSHOT:I = 0x12

.field public static final whitelist TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final whitelist TOGGLE_SHUTDOWN:I = 0xd

.field public static final whitelist TOGGLE_SYNC:I = 0x8

.field public static final whitelist TOGGLE_TORCH:I = 0xb

.field public static final whitelist TOGGLE_VIBRATE:I = 0x6

.field public static final whitelist TOGGLE_WIFI:I = 0xf

.field public static final whitelist TOGGLE_WIFI_AP:I = 0x18

.field private static final blacklist sSetStatusMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v1, "android.app.StatusBarManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setStatus"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move-object v0, v1

    .line 252
    goto :goto_2b

    .line 250
    :catch_21
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiStatusBarManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    sput-object v0, Landroid/app/MiuiStatusBarManager;->sSetStatusMethod:Ljava/lang/reflect/Method;

    .line 254
    .end local v0    # "method":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist applyState(Landroid/content/Context;Landroid/app/MiuiStatusBarState;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/app/MiuiStatusBarState;

    .line 599
    sget-object v0, Landroid/app/MiuiStatusBarManager;->sSetStatusMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 600
    return v1

    .line 603
    :cond_6
    :try_start_6
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 604
    .local v2, "statusBarManager":Ljava/lang/Object;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action_set_status_bar_state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, p0}, Landroid/app/MiuiStatusBarState;->getTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x2

    invoke-virtual {p1, p0}, Landroid/app/MiuiStatusBarState;->toBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_3b

    .line 608
    nop

    .line 609
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    return v4

    .line 605
    :catch_3b
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyState exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiStatusBarManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return v1
.end method

.method public static whitelist clearState(Landroid/content/Context;Landroid/app/MiuiStatusBarState;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/app/MiuiStatusBarState;

    .line 613
    invoke-virtual {p1, p0}, Landroid/app/MiuiStatusBarState;->toBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_status_bar_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "tag":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->clearState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist clearState(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .line 618
    sget-object v0, Landroid/app/MiuiStatusBarManager;->sSetStatusMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 619
    return v1

    .line 622
    :cond_6
    :try_start_6
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 623
    .local v2, "statusBarManager":Ljava/lang/Object;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "key_status_bar_tag"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v4, "key_status_bar_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "action_clear_status_bar_state"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_35

    .line 630
    nop

    .line 631
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    .end local v3    # "bundle":Landroid/os/Bundle;
    return v6

    .line 627
    :catch_35
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearState exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiStatusBarManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return v1
.end method

.method public static whitelist enableScreenshotNotification(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 369
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->enableScreenshotNotificationForUser(Landroid/content/Context;ZI)V

    .line 370
    return-void
.end method

.method public static blacklist enableScreenshotNotificationForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 374
    nop

    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    const-string v1, "screenshot_notification_enabled"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 379
    return-void
.end method

.method public static whitelist getDisabledFlags(I)I
    .registers 3
    .param p0, "windowExtraFlags"    # I

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "flags":I
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_7

    .line 97
    or-int/lit16 v0, v0, 0x80

    .line 99
    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_d

    .line 100
    or-int/lit8 v0, v0, 0x40

    .line 102
    :cond_d
    nop

    .line 105
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_14

    .line 106
    or-int/lit8 v0, v0, 0x20

    .line 108
    :cond_14
    nop

    .line 111
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_1b

    .line 112
    or-int/lit16 v0, v0, 0x200

    .line 114
    :cond_1b
    return v0
.end method

.method public static whitelist getSystemUIVisibilityFlags(I)I
    .registers 3
    .param p0, "windowExtraFlags"    # I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "flags":I
    nop

    .line 123
    nop

    .line 126
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_9

    .line 127
    or-int/lit8 v0, v0, 0x1

    .line 129
    :cond_9
    nop

    .line 132
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    .line 133
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 135
    :cond_11
    return v0
.end method

.method public static whitelist isCollapseAfterClicked(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 408
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClickedForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCollapseAfterClickedForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 413
    nop

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    const-string v1, "status_bar_collapse_after_clicked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExpandableUnderFullscreen(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 460
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreenForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExpandableUnderFullscreenForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 465
    nop

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    const-string v1, "status_bar_expandable_under_fullscreen"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExpandableUnderKeyguard(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 434
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguardForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isExpandableUnderKeyguardForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 439
    nop

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    const-string v1, "status_bar_expandable_under_keyguard"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isScreenshotNotificationEnabled(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 382
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isScreenshotNotificationEnabledForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isScreenshotNotificationEnabledForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 387
    nop

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    const-string v1, "screenshot_notification_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isShowCarrier(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 564
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isShowCarrierForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isShowCarrierForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 569
    nop

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 572
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getShowCustomCarrierDefault()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 569
    :goto_e
    const-string v2, "status_bar_show_custom_carrier"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isShowFlowInfo(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 538
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isShowFlowInfoForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isShowFlowInfoForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 543
    nop

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 543
    const-string v1, "status_bar_show_network_assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isShowNetworkSpeed(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 486
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeedForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isShowNetworkSpeedForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 491
    nop

    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    const-string v1, "status_bar_show_network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist isShowNotificationIcon(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 512
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIconForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isShowNotificationIconForUser(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .line 517
    nop

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    const-string v1, "status_bar_show_notification_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static whitelist setCollapseAfterClicked(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 395
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setCollapseAfterClickedForUser(Landroid/content/Context;ZI)V

    .line 396
    return-void
.end method

.method public static blacklist setCollapseAfterClickedForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 400
    nop

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    const-string v1, "status_bar_collapse_after_clicked"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 405
    return-void
.end method

.method public static whitelist setExpandableUnderFullscreen(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 447
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderFullscreenForUser(Landroid/content/Context;ZI)V

    .line 448
    return-void
.end method

.method public static blacklist setExpandableUnderFullscreenForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 452
    nop

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    const-string v1, "status_bar_expandable_under_fullscreen"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 457
    return-void
.end method

.method public static whitelist setExpandableUnderKeyguard(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 421
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguardForUser(Landroid/content/Context;ZI)V

    .line 422
    return-void
.end method

.method public static blacklist setExpandableUnderKeyguardForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 426
    nop

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    const-string v1, "status_bar_expandable_under_keyguard"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 431
    return-void
.end method

.method public static whitelist setShowCarrier(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 551
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setShowCarrierForUser(Landroid/content/Context;ZI)V

    .line 552
    return-void
.end method

.method public static blacklist setShowCarrierForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 556
    nop

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 556
    const-string v1, "status_bar_show_custom_carrier"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 561
    return-void
.end method

.method public static whitelist setShowFlowInfo(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 525
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setShowFlowInfoForUser(Landroid/content/Context;ZI)V

    .line 526
    return-void
.end method

.method public static blacklist setShowFlowInfoForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 530
    nop

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    const-string v1, "status_bar_show_network_assistant"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 535
    return-void
.end method

.method public static whitelist setShowNetworkSpeed(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 473
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setShowNetworkSpeedForUser(Landroid/content/Context;ZI)V

    .line 474
    return-void
.end method

.method public static blacklist setShowNetworkSpeedForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 478
    nop

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 478
    const-string v1, "status_bar_show_network_speed"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 483
    return-void
.end method

.method public static whitelist setShowNotificationIcon(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .line 499
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/app/MiuiStatusBarManager;->setShowNotificationIconForUser(Landroid/content/Context;ZI)V

    .line 500
    return-void
.end method

.method public static blacklist setShowNotificationIconForUser(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "userHandle"    # I

    .line 504
    nop

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 504
    const-string v1, "status_bar_show_notification_icon"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 509
    return-void
.end method
