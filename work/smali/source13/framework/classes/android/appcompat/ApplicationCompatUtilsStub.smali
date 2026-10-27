.class public interface abstract Landroid/appcompat/ApplicationCompatUtilsStub;
.super Ljava/lang/Object;
.source "ApplicationCompatUtilsStub.java"


# static fields
.field public static final blacklist MIUI_DYNAMIC_DPI_RELAUNCH:Ljava/lang/String; = "miui.dynamic_dpi_relaunch"

.field public static final blacklist MIUI_SUPPORT_APP_CONTINUITY:Ljava/lang/String; = "miui.supportAppContinuity"

.field public static final blacklist sInstance:Landroid/appcompat/ApplicationCompatUtilsStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    const-class v0, Landroid/appcompat/ApplicationCompatUtilsStub;

    .line 13
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appcompat/ApplicationCompatUtilsStub;

    sput-object v0, Landroid/appcompat/ApplicationCompatUtilsStub;->sInstance:Landroid/appcompat/ApplicationCompatUtilsStub;

    .line 12
    return-void
.end method

.method public static blacklist get()Landroid/appcompat/ApplicationCompatUtilsStub;
    .registers 1

    .line 16
    sget-object v0, Landroid/appcompat/ApplicationCompatUtilsStub;->sInstance:Landroid/appcompat/ApplicationCompatUtilsStub;

    return-object v0
.end method


# virtual methods
.method public blacklist isAppCompatEnabled()Z
    .registers 2

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isContinuityEnabled()Z
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFoldScreenDevice()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMiuiContinuityLogSwitch()Z
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMiuiMultiwinEnabled()Z
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist isMmiRunning()Z
.end method

.method public abstract blacklist isTablet()Z
.end method
