.class public final Landroid/hardware/input/KeyGestureEvent;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyGestureEvent$Builder;,
        Landroid/hardware/input/KeyGestureEvent$KeyGestureType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GESTURE_COMPLETE:I = 0x2

.field public static final blacklist ACTION_GESTURE_START:I = 0x1

.field public static final blacklist DEPRECATED_KEY_GESTURE_TYPE_ACCESSIBILITY_ALL_APPS:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEPRECATED_KEY_GESTURE_TYPE_TV_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x3a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_CANCELLED:I = 0x1

.field public static final blacklist FLAG_LONG_PRESS:I = 0x2

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT:I = 0x3c

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x37

.field public static final blacklist KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK:I = 0x49

.field public static final blacklist KEY_GESTURE_TYPE_ALL_APPS:I = 0x15

.field public static final blacklist KEY_GESTURE_TYPE_APP_SWITCH:I = 0x4

.field public static final blacklist KEY_GESTURE_TYPE_BACK:I = 0x3

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_DOWN:I = 0xe

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_UP:I = 0xd

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT:I = 0x1d

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT:I = 0x1e

.field public static final blacklist KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS:I = 0x3d

.field public static final blacklist KEY_GESTURE_TYPE_DESKTOP_MODE:I = 0x34

.field public static final blacklist KEY_GESTURE_TYPE_GLOBAL_ACTIONS:I = 0x39

.field public static final blacklist KEY_GESTURE_TYPE_HOME:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN:I = 0x10

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE:I = 0x11

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP:I = 0xf

.field public static final blacklist KEY_GESTURE_TYPE_LANGUAGE_SWITCH:I = 0x17

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_APPLICATION:I = 0x33

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_ASSISTANT:I = 0x5

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER:I = 0x27

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR:I = 0x2b

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR:I = 0x2a

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS:I = 0x29

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL:I = 0x28

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES:I = 0x30

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS:I = 0x32

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY:I = 0x2f

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS:I = 0x2d

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING:I = 0x2e

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC:I = 0x2c

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER:I = 0x31

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SEARCH:I = 0x16

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS:I = 0x7

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT:I = 0x6

.field public static final blacklist KEY_GESTURE_TYPE_LOCK_SCREEN:I = 0x20

.field public static final blacklist KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW:I = 0x4a

.field public static final blacklist KEY_GESTURE_TYPE_MEDIA_KEY:I = 0x26

.field public static final blacklist KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW:I = 0x46

.field public static final blacklist KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY:I = 0x3e

.field public static final blacklist KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION:I = 0x35

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_NOTES:I = 0x21

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER:I = 0xc

.field public static final blacklist KEY_GESTURE_TYPE_QUIT_FOCUSED_DESKTOP_TASK:I = 0x51

.field public static final blacklist KEY_GESTURE_TYPE_QUIT_FOCUSED_TASK:I = 0x50

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS:I = 0x2

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER:I = 0x36

.field public static final blacklist KEY_GESTURE_TYPE_REJECT_HOME_ON_EXTERNAL_DISPLAY:I = 0x54

.field public static final blacklist KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD:I = 0x38

.field public static final blacklist KEY_GESTURE_TYPE_SCREENSHOT_CHORD:I = 0xb

.field public static final blacklist KEY_GESTURE_TYPE_SLEEP:I = 0x24

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW:I = 0x44

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW:I = 0x45

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT:I = 0x1b

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT:I = 0x1c

.field public static final blacklist KEY_GESTURE_TYPE_SWITCH_TO_NEXT_DESK:I = 0x4e

.field public static final blacklist KEY_GESTURE_TYPE_SWITCH_TO_PREVIOUS_DESK:I = 0x4d

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_MUTE:I = 0x1a

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_NAVIGATION:I = 0x23

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_RESERVED:I = -0x1

.field public static final blacklist KEY_GESTURE_TYPE_TAKE_PARTIAL_SCREENSHOT:I = 0x53

.field public static final blacklist KEY_GESTURE_TYPE_TAKE_SCREENSHOT:I = 0xa

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS:I = 0x41

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK:I = 0x19

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB:I = 0x4b

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_FULLSCREEN:I = 0x52

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION:I = 0x48

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW:I = 0x47

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS:I = 0x43

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL:I = 0x8

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_POWER:I = 0x22

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_QUICK_SETTINGS_PANEL:I = 0x4f

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_SCREEN_READER:I = 0x3f

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS:I = 0x42

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS:I = 0x40

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TASKBAR:I = 0x9

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS:I = 0x4c

.field public static final blacklist KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT:I = 0x1f

.field public static final blacklist KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT:I = 0x3b

.field public static final blacklist KEY_GESTURE_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_DOWN:I = 0x13

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_MUTE:I = 0x14

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_UP:I = 0x12

.field public static final blacklist KEY_GESTURE_TYPE_WAKEUP:I = 0x25

.field private static final blacklist LOG_EVENT_UNSPECIFIED:I


# instance fields
.field private blacklist mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .registers 2

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    .line 266
    return-void
.end method

.method private static blacklist actionToString(I)Ljava/lang/String;
    .registers 2

    .line 857
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "START"

    goto :goto_8

    :cond_6
    const-string p0, "COMPLETE"

    :goto_8
    return-object p0
.end method

.method private static blacklist flagsToString(I)Ljava/lang/String;
    .registers 3

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 863
    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_e
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_22

    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1d

    .line 867
    const-string p0, " | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_1d
    const-string p0, "LONG_PRESS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I
    .registers 2

    .line 621
    if-nez p0, :cond_4

    .line 622
    const/4 p0, 0x0

    return p0

    .line 624
    :cond_4
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v0, :cond_13

    .line 625
    check-cast p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 626
    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p0

    .line 625
    invoke-static {p0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromSelectorCategory(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 627
    :cond_13
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_22

    .line 628
    check-cast p0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromRole(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 629
    :cond_22
    instance-of p0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz p0, :cond_29

    .line 630
    const/16 p0, 0x2f

    return p0

    .line 632
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppLaunchData type is invalid!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getLogEventFromRole(Ljava/lang/String;)I
    .registers 2

    .line 672
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 673
    const/16 p0, 0x23

    return p0

    .line 674
    :cond_b
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 675
    const/16 p0, 0x2a

    return p0

    .line 677
    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getLogEventFromSelectorCategory(Ljava/lang/String;)I
    .registers 3

    .line 637
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_b2

    :cond_8
    goto/16 :goto_88

    :sswitch_a
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x8

    goto/16 :goto_89

    :sswitch_16
    const-string v0, "android.intent.category.APP_FITNESS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0xb

    goto/16 :goto_89

    :sswitch_22
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x3

    goto :goto_89

    :sswitch_2c
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x4

    goto :goto_89

    :sswitch_36
    const-string v0, "android.intent.category.APP_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x5

    goto :goto_89

    :sswitch_40
    const-string v0, "android.intent.category.APP_FILES"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x9

    goto :goto_89

    :sswitch_4b
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_89

    :sswitch_55
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    goto :goto_89

    :sswitch_5f
    const-string v0, "android.intent.category.APP_MESSAGING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x7

    goto :goto_89

    :sswitch_69
    const-string v0, "android.intent.category.APP_WEATHER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0xa

    goto :goto_89

    :sswitch_74
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    move p0, v1

    goto :goto_89

    :sswitch_7e
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x6

    goto :goto_89

    :goto_88
    const/4 p0, -0x1

    :goto_89
    packed-switch p0, :pswitch_data_e4

    .line 663
    return v1

    .line 661
    :pswitch_8d
    const/16 p0, 0x2e

    return p0

    .line 659
    :pswitch_90
    const/16 p0, 0x2d

    return p0

    .line 657
    :pswitch_93
    const/16 p0, 0x2c

    return p0

    .line 655
    :pswitch_96
    const/16 p0, 0x2b

    return p0

    .line 653
    :pswitch_99
    const/16 p0, 0x2a

    return p0

    .line 651
    :pswitch_9c
    const/16 p0, 0x29

    return p0

    .line 649
    :pswitch_9f
    const/16 p0, 0x28

    return p0

    .line 647
    :pswitch_a2
    const/16 p0, 0x27

    return p0

    .line 645
    :pswitch_a5
    const/16 p0, 0x26

    return p0

    .line 643
    :pswitch_a8
    const/16 p0, 0x25

    return p0

    .line 641
    :pswitch_ab
    const/16 p0, 0x24

    return p0

    .line 639
    :pswitch_ae
    const/16 p0, 0x23

    return p0

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x7ae0672e -> :sswitch_7e
        -0x70f45113 -> :sswitch_74
        -0x31074447 -> :sswitch_69
        -0x20da2677 -> :sswitch_5f
        0x19b1550e -> :sswitch_55
        0x1e6800a1 -> :sswitch_4b
        0x1e746f7c -> :sswitch_40
        0x1edca32a -> :sswitch_36
        0x267d18fd -> :sswitch_2c
        0x30e2eff9 -> :sswitch_22
        0x538b29ad -> :sswitch_16
        0x7a58fb17 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
    .end packed-switch
.end method

.method public static blacklist isVisibleBackgrounduserAllowedGesture(I)Z
    .registers 1

    .line 251
    sparse-switch p0, :sswitch_data_8

    .line 261
    const/4 p0, 0x1

    return p0

    .line 259
    :sswitch_5
    const/4 p0, 0x0

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x14 -> :sswitch_5
        0x24 -> :sswitch_5
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist keyGestureTypeToLogEvent(I)I
    .registers 1

    .line 502
    packed-switch p0, :pswitch_data_9a

    .line 612
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 610
    :pswitch_5
    const/16 p0, 0x3b

    return p0

    .line 608
    :pswitch_8
    const/16 p0, 0x3a

    return p0

    .line 560
    :pswitch_b
    const/16 p0, 0x33

    return p0

    .line 606
    :pswitch_e
    const/16 p0, 0x31

    return p0

    .line 604
    :pswitch_11
    const/16 p0, 0x30

    return p0

    .line 602
    :pswitch_14
    const/16 p0, 0x2f

    return p0

    .line 600
    :pswitch_17
    const/16 p0, 0x2e

    return p0

    .line 598
    :pswitch_1a
    const/16 p0, 0x2d

    return p0

    .line 596
    :pswitch_1d
    const/16 p0, 0x2c

    return p0

    .line 594
    :pswitch_20
    const/16 p0, 0x2b

    return p0

    .line 592
    :pswitch_23
    const/16 p0, 0x2a

    return p0

    .line 590
    :pswitch_26
    const/16 p0, 0x29

    return p0

    .line 588
    :pswitch_29
    const/16 p0, 0x28

    return p0

    .line 586
    :pswitch_2c
    const/16 p0, 0x27

    return p0

    .line 584
    :pswitch_2f
    const/16 p0, 0x26

    return p0

    .line 582
    :pswitch_32
    const/16 p0, 0x25

    return p0

    .line 580
    :pswitch_35
    const/16 p0, 0x24

    return p0

    .line 578
    :pswitch_38
    const/16 p0, 0x23

    return p0

    .line 576
    :pswitch_3b
    const/16 p0, 0x22

    return p0

    .line 574
    :pswitch_3e
    const/16 p0, 0x21

    return p0

    .line 572
    :pswitch_41
    const/16 p0, 0x20

    return p0

    .line 570
    :pswitch_44
    const/16 p0, 0x1f

    return p0

    .line 568
    :pswitch_47
    const/16 p0, 0x1e

    return p0

    .line 566
    :pswitch_4a
    const/16 p0, 0x1d

    return p0

    .line 564
    :pswitch_4d
    const/16 p0, 0x1c

    return p0

    .line 562
    :pswitch_50
    const/16 p0, 0x1b

    return p0

    .line 558
    :pswitch_53
    const/16 p0, 0x32

    return p0

    .line 555
    :pswitch_56
    const/16 p0, 0x1a

    return p0

    .line 552
    :pswitch_59
    const/16 p0, 0x19

    return p0

    .line 550
    :pswitch_5c
    const/16 p0, 0x18

    return p0

    .line 548
    :pswitch_5f
    const/16 p0, 0x16

    return p0

    .line 546
    :pswitch_62
    const/16 p0, 0x15

    return p0

    .line 544
    :pswitch_65
    const/16 p0, 0x14

    return p0

    .line 542
    :pswitch_68
    const/16 p0, 0x13

    return p0

    .line 540
    :pswitch_6b
    const/16 p0, 0x12

    return p0

    .line 538
    :pswitch_6e
    const/16 p0, 0x11

    return p0

    .line 536
    :pswitch_71
    const/16 p0, 0x10

    return p0

    .line 534
    :pswitch_74
    const/16 p0, 0xf

    return p0

    .line 532
    :pswitch_77
    const/16 p0, 0xe

    return p0

    .line 530
    :pswitch_7a
    const/16 p0, 0xd

    return p0

    .line 528
    :pswitch_7d
    const/16 p0, 0xc

    return p0

    .line 526
    :pswitch_80
    const/16 p0, 0xb

    return p0

    .line 524
    :pswitch_83
    const/16 p0, 0xa

    return p0

    .line 521
    :pswitch_86
    const/16 p0, 0x9

    return p0

    .line 519
    :pswitch_89
    const/16 p0, 0x8

    return p0

    .line 517
    :pswitch_8c
    const/4 p0, 0x7

    return p0

    .line 515
    :pswitch_8e
    const/4 p0, 0x6

    return p0

    .line 513
    :pswitch_90
    const/4 p0, 0x5

    return p0

    .line 511
    :pswitch_92
    const/4 p0, 0x4

    return p0

    .line 509
    :pswitch_94
    const/4 p0, 0x3

    return p0

    .line 507
    :pswitch_96
    const/4 p0, 0x2

    return p0

    .line 504
    :pswitch_98
    const/4 p0, 0x1

    return p0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_98
        :pswitch_96
        :pswitch_94
        :pswitch_92
        :pswitch_90
        :pswitch_8e
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_3
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_56
        :pswitch_53
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_96
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist keyGestureTypeToString(I)Ljava/lang/String;
    .registers 1

    .line 682
    packed-switch p0, :pswitch_data_104

    .line 852
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 850
    :pswitch_8
    const-string p0, "KEY_GESTURE_TYPE_REJECT_HOME_ON_EXTERNAL_DISPLAY"

    return-object p0

    .line 848
    :pswitch_b
    const-string p0, "KEY_GESTURE_TYPE_TAKE_PARTIAL_SCREENSHOT"

    return-object p0

    .line 846
    :pswitch_e
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_FULLSCREEN"

    return-object p0

    .line 844
    :pswitch_11
    const-string p0, "KEY_GESTURE_TYPE_QUIT_FOCUSED_DESKTOP_TASK"

    return-object p0

    .line 842
    :pswitch_14
    const-string p0, "KEY_GESTURE_TYPE_QUIT_FOCUSED_TASK"

    return-object p0

    .line 840
    :pswitch_17
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_QUICK_SETTINGS_PANEL"

    return-object p0

    .line 838
    :pswitch_1a
    const-string p0, "KEY_GESTURE_TYPE_SWITCH_TO_NEXT_DESK"

    return-object p0

    .line 836
    :pswitch_1d
    const-string p0, "KEY_GESTURE_TYPE_SWITCH_TO_PREVIOUS_DESK"

    return-object p0

    .line 834
    :pswitch_20
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS"

    return-object p0

    .line 832
    :pswitch_23
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB"

    return-object p0

    .line 830
    :pswitch_26
    const-string p0, "KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW"

    return-object p0

    .line 828
    :pswitch_29
    const-string p0, "KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK"

    return-object p0

    .line 826
    :pswitch_2c
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION"

    return-object p0

    .line 824
    :pswitch_2f
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW"

    return-object p0

    .line 822
    :pswitch_32
    const-string p0, "KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW"

    return-object p0

    .line 820
    :pswitch_35
    const-string p0, "KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW"

    return-object p0

    .line 818
    :pswitch_38
    const-string p0, "KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW"

    return-object p0

    .line 816
    :pswitch_3b
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS"

    return-object p0

    .line 814
    :pswitch_3e
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS"

    return-object p0

    .line 812
    :pswitch_41
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS"

    return-object p0

    .line 810
    :pswitch_44
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS"

    return-object p0

    .line 808
    :pswitch_47
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_SCREEN_READER"

    return-object p0

    .line 746
    :pswitch_4a
    const-string p0, "KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY"

    return-object p0

    .line 806
    :pswitch_4d
    const-string p0, "KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS"

    return-object p0

    .line 804
    :pswitch_50
    const-string p0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT"

    return-object p0

    .line 802
    :pswitch_53
    const-string p0, "KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT"

    return-object p0

    .line 800
    :pswitch_56
    const-string p0, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS"

    return-object p0

    .line 798
    :pswitch_59
    const-string p0, "KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD"

    return-object p0

    .line 796
    :pswitch_5c
    const-string p0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD"

    return-object p0

    .line 794
    :pswitch_5f
    const-string p0, "KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER"

    return-object p0

    .line 792
    :pswitch_62
    const-string p0, "KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION"

    return-object p0

    .line 790
    :pswitch_65
    const-string p0, "KEY_GESTURE_TYPE_DESKTOP_MODE"

    return-object p0

    .line 788
    :pswitch_68
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_APPLICATION"

    return-object p0

    .line 786
    :pswitch_6b
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS"

    return-object p0

    .line 784
    :pswitch_6e
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER"

    return-object p0

    .line 782
    :pswitch_71
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES"

    return-object p0

    .line 780
    :pswitch_74
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY"

    return-object p0

    .line 778
    :pswitch_77
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING"

    return-object p0

    .line 776
    :pswitch_7a
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS"

    return-object p0

    .line 774
    :pswitch_7d
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC"

    return-object p0

    .line 772
    :pswitch_80
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR"

    return-object p0

    .line 770
    :pswitch_83
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR"

    return-object p0

    .line 768
    :pswitch_86
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS"

    return-object p0

    .line 766
    :pswitch_89
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL"

    return-object p0

    .line 764
    :pswitch_8c
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER"

    return-object p0

    .line 762
    :pswitch_8f
    const-string p0, "KEY_GESTURE_TYPE_MEDIA_KEY"

    return-object p0

    .line 760
    :pswitch_92
    const-string p0, "KEY_GESTURE_TYPE_WAKEUP"

    return-object p0

    .line 758
    :pswitch_95
    const-string p0, "KEY_GESTURE_TYPE_SLEEP"

    return-object p0

    .line 756
    :pswitch_98
    const-string p0, "KEY_GESTURE_TYPE_SYSTEM_NAVIGATION"

    return-object p0

    .line 754
    :pswitch_9b
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_POWER"

    return-object p0

    .line 752
    :pswitch_9e
    const-string p0, "KEY_GESTURE_TYPE_OPEN_NOTES"

    return-object p0

    .line 750
    :pswitch_a1
    const-string p0, "KEY_GESTURE_TYPE_LOCK_SCREEN"

    return-object p0

    .line 748
    :pswitch_a4
    const-string p0, "KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT"

    return-object p0

    .line 744
    :pswitch_a7
    const-string p0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT"

    return-object p0

    .line 742
    :pswitch_aa
    const-string p0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT"

    return-object p0

    .line 740
    :pswitch_ad
    const-string p0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT"

    return-object p0

    .line 738
    :pswitch_b0
    const-string p0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT"

    return-object p0

    .line 736
    :pswitch_b3
    const-string p0, "KEY_GESTURE_TYPE_SYSTEM_MUTE"

    return-object p0

    .line 734
    :pswitch_b6
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK"

    return-object p0

    .line 732
    :pswitch_b9
    const-string p0, "KEY_GESTURE_TYPE_LANGUAGE_SWITCH"

    return-object p0

    .line 730
    :pswitch_bc
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_SEARCH"

    return-object p0

    .line 728
    :pswitch_bf
    const-string p0, "KEY_GESTURE_TYPE_ALL_APPS"

    return-object p0

    .line 726
    :pswitch_c2
    const-string p0, "KEY_GESTURE_TYPE_VOLUME_MUTE"

    return-object p0

    .line 724
    :pswitch_c5
    const-string p0, "KEY_GESTURE_TYPE_VOLUME_DOWN"

    return-object p0

    .line 722
    :pswitch_c8
    const-string p0, "KEY_GESTURE_TYPE_VOLUME_UP"

    return-object p0

    .line 720
    :pswitch_cb
    const-string p0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE"

    return-object p0

    .line 718
    :pswitch_ce
    const-string p0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN"

    return-object p0

    .line 716
    :pswitch_d1
    const-string p0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP"

    return-object p0

    .line 714
    :pswitch_d4
    const-string p0, "KEY_GESTURE_TYPE_BRIGHTNESS_DOWN"

    return-object p0

    .line 712
    :pswitch_d7
    const-string p0, "KEY_GESTURE_TYPE_BRIGHTNESS_UP"

    return-object p0

    .line 710
    :pswitch_da
    const-string p0, "KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER"

    return-object p0

    .line 708
    :pswitch_dd
    const-string p0, "KEY_GESTURE_TYPE_SCREENSHOT_CHORD"

    return-object p0

    .line 706
    :pswitch_e0
    const-string p0, "KEY_GESTURE_TYPE_TAKE_SCREENSHOT"

    return-object p0

    .line 704
    :pswitch_e3
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_TASKBAR"

    return-object p0

    .line 702
    :pswitch_e6
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL"

    return-object p0

    .line 700
    :pswitch_e9
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS"

    return-object p0

    .line 698
    :pswitch_ec
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT"

    return-object p0

    .line 696
    :pswitch_ef
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_ASSISTANT"

    return-object p0

    .line 694
    :pswitch_f2
    const-string p0, "KEY_GESTURE_TYPE_APP_SWITCH"

    return-object p0

    .line 692
    :pswitch_f5
    const-string p0, "KEY_GESTURE_TYPE_BACK"

    return-object p0

    .line 690
    :pswitch_f8
    const-string p0, "KEY_GESTURE_TYPE_RECENT_APPS"

    return-object p0

    .line 688
    :pswitch_fb
    const-string p0, "KEY_GESTURE_TYPE_HOME"

    return-object p0

    .line 686
    :pswitch_fe
    const-string p0, "KEY_GESTURE_TYPE_UNSPECIFIED"

    return-object p0

    .line 684
    :pswitch_101
    const-string p0, "KEY_GESTURE_TYPE_SYSTEM_RESERVED"

    return-object p0

    :pswitch_data_104
    .packed-switch -0x1
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_3
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_3
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 461
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 462
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_9a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_9a

    .line 463
    :cond_13
    check-cast p1, Landroid/hardware/input/KeyGestureEvent;

    .line 464
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    if-ne v2, v3, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 465
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    if-ne v2, v3, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    if-ne v2, v3, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    if-ne v2, v3, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-ne v2, v3, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-ne v2, v3, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    .line 471
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    .line 472
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 473
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    .line 474
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_98

    goto :goto_99

    :cond_98
    move v0, v1

    .line 464
    :goto_99
    return v0

    .line 462
    :cond_9a
    :goto_9a
    return v1
.end method

.method public blacklist getAction()I
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    return v0
.end method

.method public blacklist getAppLaunchData()Landroid/hardware/input/AppLaunchData;
    .registers 5

    .line 437
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_a

    .line 438
    const/4 v0, 0x0

    return-object v0

    .line 440
    :cond_a
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeviceId()I
    .registers 2

    .line 389
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    return v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 409
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    return v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 413
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    return v0
.end method

.method public blacklist getKeyGestureType()I
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    return v0
.end method

.method public blacklist getKeycodes()[I
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    return-object v0
.end method

.method public blacklist getLogEvent()I
    .registers 3

    .line 425
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_11

    .line 426
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I

    move-result v0

    return v0

    .line 428
    :cond_11
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToLogEvent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getModifierState()I
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    return v0
.end method

.method public blacklist hasModifiers(I)Z
    .registers 3

    .line 273
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 479
    nop

    .line 480
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 481
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 482
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    add-int/2addr v0, v2

    .line 483
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    add-int/2addr v0, v2

    .line 484
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    add-int/2addr v0, v2

    .line 485
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    add-int/2addr v0, v2

    .line 486
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    add-int/2addr v0, v2

    .line 487
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    .line 488
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    add-int/2addr v0, v2

    .line 489
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    if-eqz v2, :cond_53

    .line 490
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_54

    :cond_53
    move v2, v3

    :goto_54
    add-int/2addr v0, v2

    .line 491
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 492
    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_66

    :cond_65
    move v2, v3

    :goto_66
    add-int/2addr v0, v2

    .line 493
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    if-eqz v1, :cond_77

    .line 494
    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_78

    :cond_77
    nop

    :goto_78
    add-int/2addr v0, v3

    .line 495
    return v0
.end method

.method public blacklist isCancelled()Z
    .registers 3

    .line 417
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public blacklist isLongPress()Z
    .registers 2

    .line 421
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGestureEvent { deviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keycodes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 449
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifierState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyGestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 451
    invoke-static {v1}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 452
    invoke-static {v1}, Landroid/hardware/input/KeyGestureEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    .line 454
    invoke-static {v1}, Landroid/hardware/input/KeyGestureEvent;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appLaunchData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    return-object v0
.end method
