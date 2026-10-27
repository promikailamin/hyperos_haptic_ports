.class public Lmiui/app/MiuiFreeFormManager;
.super Ljava/lang/Object;
.source "MiuiFreeFormManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CVW_BACK_FULLSCREEN:I = 0x12

.field public static final whitelist ACTION_CVW_CANCEL_BACK_FULLSCREEN:I = 0x13

.field public static final whitelist ACTION_ELUDE_TO_FREEFORM:I = 0x11

.field public static final whitelist ACTION_FREEFORM_END_RESIZE:I = 0x7

.field public static final whitelist ACTION_FREEFORM_PINED:I = 0x9

.field public static final whitelist ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED:I = 0xf

.field public static final whitelist ACTION_FREEFORM_START_RESIZE:I = 0x6

.field public static final whitelist ACTION_FREEFORM_TO_ELUDE:I = 0x10

.field public static final whitelist ACTION_FREEFORM_TO_FRONT:I = 0x14

.field public static final whitelist ACTION_FREEFORM_TO_FULLSCREEN:I = 0x3

.field public static final whitelist ACTION_FREEFORM_TO_MINIFREEFORM:I = 0x2

.field public static final whitelist ACTION_FREEFORM_UNPINED:I = 0xb

.field public static final whitelist ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY:I = 0x8

.field public static final whitelist ACTION_FULLSCREEN_TO_FREEFORM:I = 0x0

.field public static final whitelist ACTION_FULLSCREEN_TO_MINIFREEFORM:I = 0x1

.field public static final whitelist ACTION_MINIFREEFORM_PINED:I = 0xa

.field public static final whitelist ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED:I = 0xe

.field public static final whitelist ACTION_MINIFREEFORM_TO_FREEFORM:I = 0x4

.field public static final whitelist ACTION_MINIFREEFORM_TO_FULLSCREEN:I = 0x5

.field public static final whitelist ACTION_MINI_FREEFORM_UNPINED:I = 0xc

.field public static final whitelist ACTION_REMOVE_FLOATING_PIN_WINDOW:I = 0xd

.field public static final whitelist BACKGROUND_PIN:I = 0x2

.field public static final whitelist CLICK_FREFORM_TIP_TYPE:I = 0x7

.field public static final whitelist DOCK_TIP_TYPE_FREEFORM:I = 0x5

.field public static final whitelist DOCK_TIP_TYPE_MULTI_TASK:I = 0x6

.field public static final whitelist DOCK_TIP_TYPE_SPLIT:I = 0x4

.field public static final whitelist FOREGROUND_PIN:I = 0x1

.field public static final whitelist FREFORM_TIP_TYPE:I = 0x0

.field public static final whitelist FUNCTION_GUIDE_EXPOSE_SHOW_GUIDE_CONTROL_BUTTON:Ljava/lang/String; = "\u63a7\u5236\u4e2d\u5fc3"

.field public static final whitelist FUNCTION_GUIDE_EXPOSE_SHOW_GUIDE_SETTING_BUTTON:Ljava/lang/String; = "\u8bbe\u7f6e"

.field public static final whitelist GESTURE_WINDOWING_MODE_FREEFORM:I = 0x0

.field public static final whitelist GESTURE_WINDOWING_MODE_SMALL_FREEFORM:I = 0x1

.field public static final whitelist GESTURE_WINDOWING_MODE_UNDEFINED:I = -0x1

.field private static final blacklist IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/app/IMiuiFreeFormManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NOTIFICATION_TIP_TYPE:I = 0x2

.field public static final whitelist OPEN_CONTROL_BUTTON:Ljava/lang/String; = "\u63a7\u5236\u4e2d\u5fc3"

.field public static final whitelist OPEN_SETTING_BUTTON:Ljava/lang/String; = "\u8bbe\u7f6e"

.field public static final whitelist PIN_TIP_TYPE:I = 0x3

.field public static final whitelist SIDEBAR_TIP_TYPE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiFreeFormManager"

.field public static final whitelist UNPIN:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lmiui/app/MiuiFreeFormManager$1;

    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$1;-><init>()V

    sput-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 890
    packed-switch p0, :pswitch_data_42

    .line 932
    const/4 v0, 0x0

    return-object v0

    .line 930
    :pswitch_5
    const-string v0, "ACTION_CVW_CANCEL_BACK_FULLSCREEN"

    return-object v0

    .line 928
    :pswitch_8
    const-string v0, "ACTION_CVW_BACK_FULLSCREEN"

    return-object v0

    .line 926
    :pswitch_b
    const-string v0, "ACTION_ELUDE_TO_FREEFORM"

    return-object v0

    .line 924
    :pswitch_e
    const-string v0, "ACTION_FREEFORM_TO_ELUDE"

    return-object v0

    .line 922
    :pswitch_11
    const-string v0, "ACTION_FREEFORM_PINED_TO_MINIFREEFORM_PINED"

    return-object v0

    .line 920
    :pswitch_14
    const-string v0, "ACTION_MINIFREEFORM_PINED_TO_FREEFORM_PINED"

    return-object v0

    .line 918
    :pswitch_17
    const-string v0, "ACTION_REMOVE_FLOATING_PIN_WINDOW"

    return-object v0

    .line 916
    :pswitch_1a
    const-string v0, "ACTION_MINI_FREEFORM_UNPINED"

    return-object v0

    .line 914
    :pswitch_1d
    const-string v0, "ACTION_FREEFORM_UNPINED"

    return-object v0

    .line 912
    :pswitch_20
    const-string v0, "ACTION_MINIFREEFORM_PINED"

    return-object v0

    .line 910
    :pswitch_23
    const-string v0, "ACTION_FREEFORM_PINED"

    return-object v0

    .line 908
    :pswitch_26
    const-string v0, "ACTION_FREEFORM_UPDATE_CAPTION_VISIBILITY"

    return-object v0

    .line 906
    :pswitch_29
    const-string v0, "ACTION_FREEFORM_END_RESIZE"

    return-object v0

    .line 904
    :pswitch_2c
    const-string v0, "ACTION_FREEFORM_START_RESIZE"

    return-object v0

    .line 902
    :pswitch_2f
    const-string v0, "ACTION_MINIFREEFORM_TO_FULLSCREEN"

    return-object v0

    .line 900
    :pswitch_32
    const-string v0, "ACTION_MINIFREEFORM_TO_FREEFORM"

    return-object v0

    .line 898
    :pswitch_35
    const-string v0, "ACTION_FREEFORM_TO_FULLSCREEN"

    return-object v0

    .line 896
    :pswitch_38
    const-string v0, "ACTION_FREEFORM_TO_MINIFREEFORM"

    return-object v0

    .line 894
    :pswitch_3b
    const-string v0, "ACTION_FULLSCREEN_TO_MINIFREEFORM"

    return-object v0

    .line 892
    :pswitch_3e
    const-string v0, "ACTION_FULLSCREEN_TO_FREEFORM"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
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
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist freeformEludeToShow()V
    .registers 3

    .line 619
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 623
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->freeformEludeToShow()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 626
    goto :goto_17

    .line 624
    :catch_f
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed freeformEludeToShow "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 620
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist freeformKillAll()V
    .registers 3

    .line 630
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 634
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->freeformKillAll()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 637
    goto :goto_17

    .line 635
    :catch_f
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed smallWindowKillAll "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 631
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist freeformToElude()Z
    .registers 3

    .line 607
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 611
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->freeformToElude()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 614
    goto :goto_17

    .line 612
    :catch_f
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed freeformToElude "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "launchBoundsLeft"    # I
    .param p4, "launchBoundsTop"    # I

    .line 603
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/MiuiFreeformUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "freeformPkg"    # Ljava/lang/String;
    .param p2, "noCheck"    # Z
    .param p3, "isMiniFreeformMode"    # Z

    .line 595
    invoke-static {p0, p1, p2, p3}, Landroid/util/MiuiFreeformUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .registers 4
    .param p0, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 122
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    .line 123
    :catch_10
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getAllFreeFormStackOnDisplayEndPinByHandyMode(I)Z
    .registers 6
    .param p0, "displayId"    # I

    .line 105
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MiuiFreeFormManager"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    .line 106
    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v1

    .line 110
    :cond_10
    :try_start_10
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllFreeFormStackOnDisplayEndPinByHandyMode(I)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    return v0

    .line 111
    :catch_19
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " failed getAllFreeFormStackOnDisplayEndPinByHandyMode displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1
.end method

.method public static whitelist getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;
    .registers 4
    .param p0, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;"
        }
    .end annotation

    .line 462
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    .line 466
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 467
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_12

    .line 468
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getAllPinedFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    return-object v1

    .line 472
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_12
    goto :goto_2c

    .line 470
    :catch_13
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 463
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFirstUseMiuiFreeForm()I
    .registers 3

    .line 521
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 525
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getFirstUseMiuiFreeForm()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 526
    :catch_10
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getFirstUseMiuiFreeForm "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 522
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFirstUseTipConfirmTimes()I
    .registers 3

    .line 492
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 496
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getFirstUseTipConfirmTimes()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 497
    :catch_10
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getFirstUseTipConfirmTimes "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 493
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 167
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    .line 171
    :try_start_7
    const-class v0, Landroid/app/Activity;

    .line 172
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "getActivityToken"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 173
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 175
    .local v2, "token":Landroid/os/IBinder;
    if-eqz v2, :cond_29

    .line 176
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2a

    return-object v3

    .line 180
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "token":Landroid/os/IBinder;
    :cond_29
    goto :goto_2e

    .line 178
    :catch_2a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed getFreeFormStackInfo view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFreeFormManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 6
    .param p0, "stackId"    # I

    .line 130
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MiuiFreeFormManager"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10

    .line 131
    const-string v0, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v1

    .line 135
    :cond_10
    :try_start_10
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByStackId(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    return-object v0

    .line 136
    :catch_19
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " failed getFreeFormStackInfoByStackId stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v1
.end method

.method public static whitelist getFreeFormStackInfoByView(Landroid/view/View;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 143
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    .line 147
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 148
    .local v1, "wtoken":Landroid/os/IBinder;
    if-eqz v1, :cond_17

    .line 149
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackInfoByWindow(Landroid/os/IBinder;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0

    return-object v0

    .line 151
    :cond_17
    const-class v2, Landroid/view/View;

    .line 152
    .local v2, "clazz":Ljava/lang/Class;
    const-string v3, "getAttachedActivity"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 153
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 154
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 155
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v4, :cond_35

    .line 156
    invoke-static {v4}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackInfoByActivity(Landroid/app/Activity;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_36

    return-object v0

    .line 159
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "activity":Landroid/app/Activity;
    :cond_35
    return-object v0

    .line 160
    .end local v1    # "wtoken":Landroid/os/IBinder;
    :catch_36
    move-exception v1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfo view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v0

    .line 144
    :cond_50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFreeFormStackToAvoid(ILjava/lang/String;)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 3
    .param p0, "displayId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/MiuiFreeFormManager;->getFreeFormStackToAvoid(ILjava/lang/String;I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFreeFormStackToAvoid(ILjava/lang/String;I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;
    .registers 6
    .param p0, "displayId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newTaskId"    # I

    .line 90
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 94
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/app/IMiuiFreeFormManager;->getFreeFormStackToAvoid(ILjava/lang/String;I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    .line 95
    :catch_10
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getAllFreeFormStackInfosOnDisplay displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v1, 0x0

    return-object v1

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "isLaunchFlashBack"    # Z

    .line 215
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 217
    :try_start_6
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->getMaxMiuiFreeFormStackCountForFlashBack(Ljava/lang/String;Z)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    .line 218
    :catch_f
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getMaxMiuiFreeFormStackCountForFlashBack "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxNumFreeformDesktopMode()I
    .registers 3

    .line 641
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 645
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getMaxNumFreeformDesktopMode()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 646
    :catch_10
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getMaxNumFreeformDesktopMode "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 642
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getMiuiFreeformStackPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 577
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_package_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 578
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI12\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI13\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getMiuiFreeformStackShowState(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 566
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "freeform_window_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 567
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI12\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI13\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getMiuiFreeformVersion()I
    .registers 1

    .line 481
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 482
    const/4 v0, 0x3

    return v0

    .line 484
    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist getService()Lmiui/app/IMiuiFreeFormManager;
    .registers 2

    .line 50
    :try_start_0
    sget-object v0, Lmiui/app/MiuiFreeFormManager;->IMiuiFreeFormManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/IMiuiFreeFormManager;
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 51
    :catch_9
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Error;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getShowGuideDock()I
    .registers 3

    .line 390
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 394
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getShowGuideDock()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 395
    :catch_10
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getShowGuideDock "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 391
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getShowGuideFreeform()I
    .registers 3

    .line 360
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 364
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getShowGuideFreeform()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 365
    :catch_10
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getFirstUseMiuiFreeForm "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getShowGuideNotification()I
    .registers 3

    .line 405
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 409
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getShowGuideNotification()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 410
    :catch_10
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getShowGuideNotification "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getShowGuidePin()I
    .registers 3

    .line 375
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 379
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getShowGuidePin()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 380
    :catch_10
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getShowGuidePin "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 376
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getShowGuideSideBar()I
    .registers 3

    .line 420
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 424
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->getShowGuideSideBar()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 425
    :catch_10
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getShowGuideNotification "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 421
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasTipView()Z
    .registers 3

    .line 450
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 454
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->hasTipView()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 455
    :catch_10
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed hasTipView "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 451
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasTipViewType(I)Z
    .registers 4
    .param p0, "type"    # I

    .line 435
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 439
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->hasTipViewType(I)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    return v0

    .line 440
    :catch_10
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed hasTipViewType "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0

    .line 436
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist hidePinFloatingWindow(I)V
    .registers 4
    .param p0, "taskId"    # I

    .line 275
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 279
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 280
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_10

    .line 281
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->hidePinFloatingWindow(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    .line 285
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_10
    goto :goto_2a

    .line 283
    :catch_11
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed hidePinFloatingWindow stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void

    .line 276
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isSupportPin()Z
    .registers 3

    .line 230
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    .line 234
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 235
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_12

    .line 236
    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->isSupportPin()Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    return v1

    .line 240
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_12
    goto :goto_1b

    .line 238
    :catch_13
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed isSuppoertPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist notifyCameraStateChanged(Ljava/lang/String;I)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cameraState"    # I

    .line 61
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->notifyCameraStateChanged(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 64
    goto :goto_21

    .line 62
    :catch_8
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed notifyCameraStateChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public static blacklist openCameraInFreeForm(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 72
    :try_start_0
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->openCameraInFreeForm(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 73
    :catch_9
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed cameraOpenedInFreeForm packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3
    .param p0, "freeformCallback"    # Lmiui/app/IFreeformCallback;

    .line 186
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 189
    if-eqz p0, :cond_15

    .line 191
    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->registerFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 194
    goto :goto_15

    .line 192
    :catch_11
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    return-void

    .line 187
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist removeFreeFormTipView(I)V
    .registers 4
    .param p0, "type"    # I

    .line 343
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 347
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 348
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_10

    .line 349
    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->removeFreeFormTipView(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    .line 353
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_10
    goto :goto_19

    .line 351
    :catch_11
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getFreeFormTipView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    return-void

    .line 344
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setFirstUseMiuiFreeForm(I)V
    .registers 4
    .param p0, "time"    # I

    .line 536
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 540
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->setFirstUseMiuiFreeForm(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 543
    goto :goto_17

    .line 541
    :catch_f
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed setFirstUseMiuiFreeForm "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 537
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setFirstUseTipConfirmTimes(I)V
    .registers 4
    .param p0, "time"    # I

    .line 507
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 511
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->setFirstUseTipConfirmTimes(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 514
    goto :goto_17

    .line 512
    :catch_f
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed setFirstUseTipConfirmTimes "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 508
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist showFreeFormTipView(IIII)V
    .registers 7
    .param p0, "type"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "arrowMode"    # I

    .line 292
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    .line 296
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 297
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_10

    .line 298
    invoke-interface {v0, p0, p1, p2, p3}, Lmiui/app/IMiuiFreeFormManager;->showFreeFormTipView(IIII)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    .line 302
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_10
    goto :goto_19

    .line 300
    :catch_11
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed showFreeFormTipView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    return-void

    .line 293
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist showFreeFormTipViewByBounds(IIILandroid/graphics/Rect;I)V
    .registers 12
    .param p0, "type"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "arrowMode"    # I

    .line 326
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    .line 330
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 331
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_16

    .line 332
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/app/IMiuiFreeFormManager;->showFreeFormTipViewByBounds(IIILandroid/graphics/Rect;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    .line 336
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_16
    goto :goto_1f

    .line 334
    :catch_17
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed showFreeFormTipView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void

    .line 327
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist showFreeFormTipViewByClassName(IIIILjava/lang/String;)V
    .registers 12
    .param p0, "type"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "arrowMode"    # I
    .param p4, "className"    # Ljava/lang/String;

    .line 309
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    .line 313
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 314
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_16

    .line 315
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/app/IMiuiFreeFormManager;->showFreeFormTipViewByClassName(IIIILjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    .line 319
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_16
    goto :goto_1f

    .line 317
    :catch_17
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed showFreeFormTipViewByClassName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void

    .line 310
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist showHidedFreeform()Z
    .registers 3

    .line 653
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 657
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->showHidedFreeform()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 660
    goto :goto_17

    .line 658
    :catch_f
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed freeformEludeToShow "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    const/4 v0, 0x1

    return v0

    .line 654
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist startSmallFreeformFromNotification(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 226
    invoke-static {p0}, Landroid/util/MiuiFreeformUtils;->startSmallFreeformFromNotification(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static whitelist supportFreeform()Z
    .registers 1

    .line 587
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->supportFreeform()Z

    move-result v0

    return v0
.end method

.method public static blacklist trackClickSmallWindowEvent()V
    .registers 3

    .line 550
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 554
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/app/IMiuiFreeFormManager;->trackClickSmallWindowEvent()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 557
    goto :goto_17

    .line 555
    :catch_f
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed trackClickSmallWindowEvent "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 551
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist trackDeskTopFunctionGuideExposeEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "openWay"    # Ljava/lang/String;

    .line 676
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 680
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->trackDeskTopFunctionGuideExposeEvent(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 683
    goto :goto_17

    .line 681
    :catch_f
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getMaxNumFreeformDesktopMode "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 677
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist trackDeskTopOpenEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "openWay"    # Ljava/lang/String;

    .line 665
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 669
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->trackDeskTopOpenEvent(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    .line 672
    goto :goto_17

    .line 670
    :catch_f
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiFreeFormManager"

    const-string v2, " failed getMaxNumFreeformDesktopMode "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void

    .line 666
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z
    .registers 12
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "taskId"    # I
    .param p2, "upVelocityX"    # F
    .param p3, "upVelocityY"    # F
    .param p4, "isClick"    # Z

    .line 260
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    .line 264
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 265
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_18

    .line 266
    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/app/IMiuiFreeFormManager;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_19

    return v1

    .line 270
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_18
    goto :goto_32

    .line 268
    :catch_19
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfoByStackId stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    .registers 3
    .param p0, "freeformCallback"    # Lmiui/app/IFreeformCallback;

    .line 199
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 202
    if-eqz p0, :cond_15

    .line 204
    :try_start_9
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/app/IMiuiFreeFormManager;->unregisterFreeformCallback(Lmiui/app/IFreeformCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    .line 207
    goto :goto_15

    .line 205
    :catch_11
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    return-void

    .line 200
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    .registers 5
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "taskId"    # I

    .line 245
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getMiuiFreeformVersion()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    .line 249
    :try_start_7
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->getService()Lmiui/app/IMiuiFreeFormManager;

    move-result-object v0

    .line 250
    .local v0, "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    if-eqz v0, :cond_10

    .line 251
    invoke-interface {v0, p0, p1}, Lmiui/app/IMiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    .line 255
    .end local v0    # "miuiFreeFormManagerService":Lmiui/app/IMiuiFreeFormManager;
    :cond_10
    goto :goto_2a

    .line 253
    :catch_11
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed getFreeFormStackInfoByStackId taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiFreeFormManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void

    .line 246
    :cond_2b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u975eMIUI13\u5c0f\u7a97\u7248\u672c,\u8bf7\u7528MIUI12\u9002\u914d\u65b9\u6848\u8fdb\u884c\u9002\u914d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
