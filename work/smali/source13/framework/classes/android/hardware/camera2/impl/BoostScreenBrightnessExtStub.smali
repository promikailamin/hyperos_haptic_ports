.class public Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;
.super Ljava/lang/Object;
.source "BoostScreenBrightnessExtStub.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 15
    const-class v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->TAG:Ljava/lang/String;

    .line 20
    :try_start_8
    const-string v0, "android.hardware.camera2.impl.BoostScreenBrightnessExtStubImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/BoostScreenBrightnessExt;

    sput-object v1, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_18} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_18} :catch_19

    .line 26
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_18
    goto :goto_36

    .line 24
    :catch_19
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_36
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static blacklist boostScreenBrightness(Z)V
    .registers 2
    .param p0, "open"    # Z

    .line 30
    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    if-eqz v0, :cond_9

    .line 31
    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/BoostScreenBrightnessExt;->boostScreenBrightness(Z)V

    .line 33
    :cond_9
    return-void
.end method

.method public static blacklist isExposeFrontFlash()Z
    .registers 1

    .line 36
    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    if-eqz v0, :cond_b

    .line 37
    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    invoke-interface {v0}, Landroid/hardware/camera2/BoostScreenBrightnessExt;->isExposeFrontFlash()Z

    move-result v0

    return v0

    .line 40
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isWhiteListValid(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    if-eqz v0, :cond_b

    .line 45
    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/BoostScreenBrightnessExt;->isWhiteListValid(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 48
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
