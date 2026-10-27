.class public abstract Landroid/hardware/camera2/impl/CameraExtImplBase;
.super Ljava/lang/Object;
.source "CameraExtImplBase.java"

# interfaces
.implements Landroid/hardware/camera2/CameraExt;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cameraClosed(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 48
    return-void
.end method

.method public blacklist cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public blacklist isAuxCameraClient(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "vendor.camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "packageList":Ljava/lang/String;
    const-string/jumbo v1, "vendor.camera.aux.packagelistext"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "packageListExt":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraExtImplBase;->isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraExtImplBase;->isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    return v2
.end method

.method protected blacklist isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageList"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 29
    return v0

    .line 32
    :cond_4
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 33
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 34
    .local v1, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v1, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 37
    const/4 v0, 0x1

    return v0

    .line 39
    .end local v3    # "str":Ljava/lang/String;
    :cond_2e
    goto :goto_1a

    .line 42
    .end local v1    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_2f
    return v0
.end method

.method public blacklist isPrivilegedApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "persist.vendor.camera.privapp.list"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "packageList":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraExtImplBase;->isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
