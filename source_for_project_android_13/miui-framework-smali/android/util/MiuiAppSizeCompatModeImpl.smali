.class public Landroid/util/MiuiAppSizeCompatModeImpl;
.super Ljava/lang/Object;
.source "MiuiAppSizeCompatModeImpl.java"

# interfaces
.implements Landroid/util/MiuiAppSizeCompatModeStub;


# static fields
.field private static final blacklist CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static blacklist ENABLED:Z = false

.field private static final blacklist FOLD_DEVICE_TYPE:I = 0x2

.field private static final blacklist FOLD_STATE_EXPAND:I = 0x1

.field private static final blacklist FOLD_STATE_FOLDED:I = 0x2

.field private static final blacklist FOLD_STATE_UNKNOWN:I = 0x0

.field private static blacklist IS_FOLD_SCREEN_DEVICE:Z = false

.field private static blacklist IS_TABLET:Z = false

.field private static final blacklist MAX_BOUNDS_FULLSCREEN_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist MIUIMULTIWIN_ENABLED:Z = false

.field private static final blacklist MIUI_COMPAT_ENABLE:Ljava/lang/String; = "ro.config.miui_compat_enable"

.field private static final blacklist MIUI_COMPAT_LOG:Ljava/lang/String; = "ro.config.miui_compat_log"

.field private static blacklist MIUI_COMPAT_LOG_SWITCH:Z = false

.field private static final blacklist MIUI_CTS:Ljava/lang/String; = "ro.miui.cts"

.field private static final blacklist MIUI_MULTIWINDOW_OPTIMIZATION:Ljava/lang/String; = "ro.config.miui_multiwindow_optimization"

.field private static final blacklist MUILTDISPLAY_TYPE:Ljava/lang/String; = "persist.sys.muiltdisplay_type"

.field private static final blacklist M_LOCK:Ljava/lang/Object;

.field private static final blacklist TABLET:Ljava/lang/String; = "tablet"

.field private static volatile blacklist sSingleInstance:Landroid/util/MiuiAppSizeCompatModeImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->IS_FOLD_SCREEN_DEVICE:Z

    .line 28
    sput-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->ENABLED:Z

    .line 29
    sput-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->MIUI_COMPAT_LOG_SWITCH:Z

    .line 30
    sput-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->IS_TABLET:Z

    .line 31
    sput-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->MIUIMULTIWIN_ENABLED:Z

    .line 33
    const/4 v1, 0x0

    sput-object v1, Landroid/util/MiuiAppSizeCompatModeImpl;->sSingleInstance:Landroid/util/MiuiAppSizeCompatModeImpl;

    .line 34
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/util/MiuiAppSizeCompatModeImpl;->M_LOCK:Ljava/lang/Object;

    .line 36
    new-instance v1, Landroid/util/MiuiAppSizeCompatModeImpl$1;

    invoke-direct {v1}, Landroid/util/MiuiAppSizeCompatModeImpl$1;-><init>()V

    sput-object v1, Landroid/util/MiuiAppSizeCompatModeImpl;->MAX_BOUNDS_FULLSCREEN_LIST:Ljava/util/ArrayList;

    .line 55
    nop

    .line 56
    const-string v1, "persist.sys.muiltdisplay_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    move v1, v0

    :goto_29
    sput-boolean v1, Landroid/util/MiuiAppSizeCompatModeImpl;->IS_FOLD_SCREEN_DEVICE:Z

    .line 57
    nop

    .line 58
    const-string v1, "ro.config.miui_compat_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/util/MiuiAppSizeCompatModeImpl;->ENABLED:Z

    .line 59
    nop

    .line 60
    const-string v1, "ro.config.miui_compat_log"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/util/MiuiAppSizeCompatModeImpl;->MIUI_COMPAT_LOG_SWITCH:Z

    .line 61
    nop

    .line 62
    const-string v1, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/util/MiuiAppSizeCompatModeImpl;->IS_TABLET:Z

    .line 63
    const-string v1, "ro.config.miui_multiwindow_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->MIUIMULTIWIN_ENABLED:Z

    .line 64
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/util/MiuiAppSizeCompatModeImpl;
    .registers 2

    .line 44
    sget-object v0, Landroid/util/MiuiAppSizeCompatModeImpl;->sSingleInstance:Landroid/util/MiuiAppSizeCompatModeImpl;

    if-nez v0, :cond_17

    .line 45
    sget-object v0, Landroid/util/MiuiAppSizeCompatModeImpl;->M_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_7
    sget-object v1, Landroid/util/MiuiAppSizeCompatModeImpl;->sSingleInstance:Landroid/util/MiuiAppSizeCompatModeImpl;

    if-nez v1, :cond_12

    .line 47
    new-instance v1, Landroid/util/MiuiAppSizeCompatModeImpl;

    invoke-direct {v1}, Landroid/util/MiuiAppSizeCompatModeImpl;-><init>()V

    sput-object v1, Landroid/util/MiuiAppSizeCompatModeImpl;->sSingleInstance:Landroid/util/MiuiAppSizeCompatModeImpl;

    .line 49
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 51
    :cond_17
    :goto_17
    sget-object v0, Landroid/util/MiuiAppSizeCompatModeImpl;->sSingleInstance:Landroid/util/MiuiAppSizeCompatModeImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .registers 2

    .line 86
    sget-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->ENABLED:Z

    return v0
.end method

.method public blacklist isFoldScreenDevice()Z
    .registers 2

    .line 81
    sget-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->IS_FOLD_SCREEN_DEVICE:Z

    return v0
.end method

.method public blacklist isMiuiCompatLogSwitch()Z
    .registers 2

    .line 91
    sget-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->MIUI_COMPAT_LOG_SWITCH:Z

    return v0
.end method

.method public blacklist isMiuiMultiwinEnabled()Z
    .registers 2

    .line 101
    sget-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->MIUIMULTIWIN_ENABLED:Z

    return v0
.end method

.method public blacklist isTablet()Z
    .registers 2

    .line 96
    sget-boolean v0, Landroid/util/MiuiAppSizeCompatModeImpl;->IS_TABLET:Z

    return v0
.end method

.method public blacklist shouldUseMaxBoundsFullscreen(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 68
    return v1

    .line 71
    :cond_8
    sget-object v0, Landroid/util/MiuiAppSizeCompatModeImpl;->MAX_BOUNDS_FULLSCREEN_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, "tmpName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 73
    const/4 v0, 0x1

    return v0

    .line 74
    .end local v2    # "tmpName":Ljava/lang/String;
    :cond_22
    goto :goto_e

    .line 76
    :cond_23
    return v1
.end method
