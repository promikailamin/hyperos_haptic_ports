.class public Landroid/appcompat/ApplicationCompatUtilsImpl;
.super Ljava/lang/Object;
.source "ApplicationCompatUtilsImpl.java"

# interfaces
.implements Landroid/appcompat/ApplicationCompatUtilsStub;


# static fields
.field private static final blacklist CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static final blacklist FOLD_DEVICE_TYPE:I = 0x2

.field private static final blacklist FOLD_STATE_EXPAND:I = 0x1

.field private static final blacklist FOLD_STATE_FOLDED:I = 0x2

.field private static final blacklist FOLD_STATE_UNKNOWN:I = 0x0

.field private static blacklist IS_APPCOMPAT_ENABLED:Z = false

.field private static blacklist IS_CONTRINUITY_ENABLED:Z = false

.field private static blacklist IS_FOLD_SCREEN_DEVICE:Z = false

.field private static blacklist IS_MIUI_OPTIMIZATION:Z = false

.field private static blacklist IS_MMI_RUNNING:Z = false

.field private static blacklist IS_TABLET:Z = false

.field private static blacklist MIUIMULTIWIN_ENABLED:Z = false

.field private static final blacklist MIUI_APPCOMPAT_ENABLE:Ljava/lang/String; = "ro.config.miui_appcompat_enable"

.field private static final blacklist MIUI_CONTINUITY_ENABLE:Ljava/lang/String; = "ro.config.miui_continuity_enable"

.field private static final blacklist MIUI_CONTINUITY_LOG:Ljava/lang/String; = "ro.config.miui_continuity_log"

.field private static blacklist MIUI_CONTINUITY_LOG_SWITCH:Z = false

.field private static final blacklist MIUI_CTS:Ljava/lang/String; = "ro.miui.cts"

.field public static final blacklist MIUI_DYNAMIC_DPI_RELAUNCH:Ljava/lang/String; = "miui.dynamic_dpi_relaunch"

.field private static final blacklist MIUI_MULTIWINDOW_OPTIMIZATION:Ljava/lang/String; = "ro.config.miui_multiwindow_optimization"

.field private static final blacklist MIUI_OPTIMIZATION:Ljava/lang/String; = "persist.sys.miui_optimization"

.field public static final blacklist MIUI_SUPPORT_APP_CONTINUITY:Ljava/lang/String; = "miui.supportAppContinuity"

.field private static final blacklist MMITEST:Ljava/lang/String; = "runtime.mmitest.isrunning"

.field private static final blacklist MUILTDISPLAY_TYPE:Ljava/lang/String; = "persist.sys.muiltdisplay_type"

.field private static final blacklist TABLET:Ljava/lang/String; = "tablet"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_FOLD_SCREEN_DEVICE:Z

    .line 37
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_APPCOMPAT_ENABLED:Z

    .line 38
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_CONTRINUITY_ENABLED:Z

    .line 39
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->MIUI_CONTINUITY_LOG_SWITCH:Z

    .line 40
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_TABLET:Z

    .line 41
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MMI_RUNNING:Z

    .line 42
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->MIUIMULTIWIN_ENABLED:Z

    .line 43
    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MIUI_OPTIMIZATION:Z

    .line 46
    nop

    .line 47
    const-string v1, "ro.miui.cts"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "persist.sys.miui_optimization"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MIUI_OPTIMIZATION:Z

    .line 48
    nop

    .line 49
    const-string v1, "persist.sys.muiltdisplay_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_33

    goto :goto_34

    :cond_33
    move v2, v0

    :goto_34
    sput-boolean v2, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_FOLD_SCREEN_DEVICE:Z

    .line 50
    nop

    .line 51
    const-string v1, "ro.config.miui_appcompat_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_APPCOMPAT_ENABLED:Z

    .line 52
    nop

    .line 53
    const-string v1, "ro.config.miui_continuity_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_CONTRINUITY_ENABLED:Z

    .line 54
    nop

    .line 55
    const-string v1, "ro.config.miui_continuity_log"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/appcompat/ApplicationCompatUtilsImpl;->MIUI_CONTINUITY_LOG_SWITCH:Z

    .line 56
    nop

    .line 57
    const-string v1, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tablet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_TABLET:Z

    .line 58
    const-string v1, "runtime.mmitest.isrunning"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MMI_RUNNING:Z

    .line 59
    const-string v1, "ro.config.miui_multiwindow_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->MIUIMULTIWIN_ENABLED:Z

    .line 60
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isAppCompatEnabled()Z
    .registers 2

    .line 69
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_APPCOMPAT_ENABLED:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MIUI_OPTIMIZATION:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isContinuityEnabled()Z
    .registers 2

    .line 74
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_APPCOMPAT_ENABLED:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_CONTRINUITY_ENABLED:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MIUI_OPTIMIZATION:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isFoldScreenDevice()Z
    .registers 2

    .line 64
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_FOLD_SCREEN_DEVICE:Z

    return v0
.end method

.method public blacklist isMiuiContinuityLogSwitch()Z
    .registers 2

    .line 79
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->MIUI_CONTINUITY_LOG_SWITCH:Z

    return v0
.end method

.method public blacklist isMiuiMultiwinEnabled()Z
    .registers 2

    .line 94
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->MIUIMULTIWIN_ENABLED:Z

    return v0
.end method

.method public blacklist isMmiRunning()Z
    .registers 2

    .line 89
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_MMI_RUNNING:Z

    return v0
.end method

.method public blacklist isTablet()Z
    .registers 2

    .line 84
    sget-boolean v0, Landroid/appcompat/ApplicationCompatUtilsImpl;->IS_TABLET:Z

    return v0
.end method
