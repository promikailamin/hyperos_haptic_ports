.class public interface abstract Landroid/util/MiuiAppSizeCompatModeStub;
.super Ljava/lang/Object;
.source "MiuiAppSizeCompatModeStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/util/MiuiAppSizeCompatModeStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Landroid/util/MiuiAppSizeCompatModeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MiuiAppSizeCompatModeStub;

    sput-object v0, Landroid/util/MiuiAppSizeCompatModeStub;->sInstance:Landroid/util/MiuiAppSizeCompatModeStub;

    return-void
.end method

.method public static blacklist get()Landroid/util/MiuiAppSizeCompatModeStub;
    .registers 1

    .line 12
    sget-object v0, Landroid/util/MiuiAppSizeCompatModeStub;->sInstance:Landroid/util/MiuiAppSizeCompatModeStub;

    return-object v0
.end method


# virtual methods
.method public blacklist isEnabled()Z
    .registers 2

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFoldScreenDevice()Z
    .registers 2

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMiuiCompatLogSwitch()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMiuiMultiwinEnabled()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist isTablet()Z
.end method

.method public blacklist shouldUseMaxBoundsFullscreen(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    return v0
.end method
