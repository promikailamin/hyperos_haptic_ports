.class public Lcom/android/server/camera/impl/CameraTrackExtStub;
.super Ljava/lang/Object;
.source "CameraTrackExtStub.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.server.camera.CameraTrackInjector"

.field private static volatile sInstance:Lcom/android/server/camera/CameraTrackExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/camera/impl/CameraTrackExtStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/impl/CameraTrackExtStub;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "com.android.server.camera.CameraTrackInjector"

    invoke-static {v0}, Lcom/android/server/camera/impl/CameraTrackExtStub;->initInstance(Ljava/lang/String;)Z

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static initInstance(Ljava/lang/String;)Z
    .registers 5
    .param p0, "className"    # Ljava/lang/String;

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_27

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraTrackExt;

    sput-object v1, Lcom/android/server/camera/impl/CameraTrackExtStub;->sInstance:Lcom/android/server/camera/CameraTrackExt;

    .line 28
    sget-object v1, Lcom/android/server/camera/impl/CameraTrackExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 32
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_27
    goto :goto_45

    .line 30
    :catch_28
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/camera/impl/CameraTrackExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_45
    sget-object v0, Lcom/android/server/camera/impl/CameraTrackExtStub;->sInstance:Lcom/android/server/camera/CameraTrackExt;

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    return v0
.end method

.method public static trackCameraState(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "clientName"    # Ljava/lang/String;
    .param p4, "apiLevel"    # I

    .line 38
    sget-object v0, Lcom/android/server/camera/impl/CameraTrackExtStub;->sInstance:Lcom/android/server/camera/CameraTrackExt;

    if-nez v0, :cond_5

    .line 39
    return-void

    .line 41
    :cond_5
    if-nez p2, :cond_13

    .line 42
    const/4 p2, 0x0

    .line 43
    sget-object v1, Lcom/android/server/camera/impl/CameraTrackExtStub;->sInstance:Lcom/android/server/camera/CameraTrackExt;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/camera/CameraTrackExt;->trackCameraState(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_21

    .line 44
    :cond_13
    const/4 v0, 0x3

    if-ne p2, v0, :cond_21

    .line 45
    const/4 p2, 0x1

    .line 46
    sget-object v1, Lcom/android/server/camera/impl/CameraTrackExtStub;->sInstance:Lcom/android/server/camera/CameraTrackExt;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/camera/CameraTrackExt;->trackCameraState(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    .line 48
    :cond_21
    :goto_21
    return-void
.end method
