.class public Lmiui/util/GetCameraOccupierStubImpl;
.super Ljava/lang/Object;
.source "GetCameraOccupierStubImpl.java"

# interfaces
.implements Lmiui/utils/GetCameraOccupierStub;


# instance fields
.field blacklist TAG:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "GetCameraOccupierStubImpl"

    iput-object v0, p0, Lmiui/util/GetCameraOccupierStubImpl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30
    invoke-static {p1}, Landroid/cameracovered/MiuiCameraCoveredManager;->getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist needDisableCutout(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 22
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 23
    .local v0, "deviceNM":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v1, "odin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_12

    .line 26
    :cond_d
    invoke-static {p1}, Landroid/cameracovered/MiuiCameraCoveredManager;->needDisableCutout(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 24
    :cond_12
    :goto_12
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setCoveredPackageName()V
    .registers 2

    .line 18
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/cameracovered/MiuiCameraCoveredManager;->setCoveredPackageName(Ljava/lang/String;)V

    .line 19
    return-void
.end method
