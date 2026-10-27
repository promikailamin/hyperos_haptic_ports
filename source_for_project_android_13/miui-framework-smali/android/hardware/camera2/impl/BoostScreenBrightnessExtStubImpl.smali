.class public Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;
.super Ljava/lang/Object;
.source "BoostScreenBrightnessExtStubImpl.java"

# interfaces
.implements Landroid/hardware/camera2/BoostScreenBrightnessExt;


# static fields
.field private static final blacklist CODE_BOOST_BRIGHTNESS:I = 0xfffff7

.field private static final blacklist TAG:Ljava/lang/String; = "BoostScreenBrightnessExtStubImpl"

.field private static final blacklist isSupportFrontFlash:Z

.field private static blacklist sToken:Landroid/os/Binder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23
    const-string v0, "support_front_flash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;->isSupportFrontFlash:Z

    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;->sToken:Landroid/os/Binder;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist boostScreenBrightness(Z)V
    .registers 8
    .param p1, "open"    # Z

    .line 36
    sget-boolean v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;->isSupportFrontFlash:Z

    if-eqz v0, :cond_59

    .line 37
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, "powerManager":Landroid/os/IBinder;
    if-eqz v0, :cond_59

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boostScreenBrightness enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoostScreenBrightnessExtStubImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 41
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 42
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.os.IPowerManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 43
    sget-object v4, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;->sToken:Landroid/os/Binder;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 44
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    const v4, 0xfffff7

    const/4 v5, 0x1

    :try_start_3d
    invoke-interface {v0, v4, v1, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_4a
    .catchall {:try_start_3d .. :try_end_40} :catchall_48

    .line 51
    nop

    :goto_41
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 53
    goto :goto_59

    .line 51
    :catchall_48
    move-exception v2

    goto :goto_52

    .line 48
    :catch_4a
    move-exception v4

    .line 49
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_4b
    const-string v5, "Failed to boost brightness..."

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_48

    .line 51
    nop

    .end local v4    # "ex":Landroid/os/RemoteException;
    goto :goto_41

    :goto_52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw v2

    .line 56
    .end local v0    # "powerManager":Landroid/os/IBinder;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_59
    :goto_59
    return-void
.end method

.method public blacklist isExposeFrontFlash()Z
    .registers 2

    .line 66
    sget-boolean v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;->isSupportFrontFlash:Z

    if-eqz v0, :cond_14

    .line 67
    const-string v0, "camera_front_flash_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 68
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 69
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWhiteListValid(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    sget-boolean v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStubImpl;->isSupportFrontFlash:Z

    if-eqz v0, :cond_f

    .line 85
    invoke-static {p1}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "whitelist":[Ljava/lang/String;
    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    .line 87
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v0    # "whitelist":[Ljava/lang/String;
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
