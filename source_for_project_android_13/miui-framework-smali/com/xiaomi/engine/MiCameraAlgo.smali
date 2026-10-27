.class public final Lcom/xiaomi/engine/MiCameraAlgo;
.super Ljava/lang/Object;
.source "MiCameraAlgo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/xiaomi/engine/MiCameraAlgo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;
    .registers 9
    .param p0, "bufferFormat"    # Lcom/xiaomi/engine/BufferFormat;
    .param p2, "callback"    # Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;",
            ")",
            "Lcom/xiaomi/engine/TaskSession;"
        }
    .end annotation

    .line 96
    .local p1, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "createSessionByOutputConfigurations: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    nop

    .line 98
    invoke-static {p0, p1, p2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J

    move-result-wide v1

    .line 99
    .local v1, "sessionHandle":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 100
    const-string v3, "createSessionByOutputConfigurations: failed. Session handle is null!"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_19
    new-instance v3, Lcom/xiaomi/engine/TaskSession;

    invoke-direct {v3, v1, v2}, Lcom/xiaomi/engine/TaskSession;-><init>(J)V

    .line 104
    .local v3, "session":Lcom/xiaomi/engine/TaskSession;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSessionByOutputConfigurations: succeed. session = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v3
.end method

.method public static blacklist createSessionWithSurfaces(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;
    .registers 7
    .param p0, "bufferFormat"    # Lcom/xiaomi/engine/BufferFormat;
    .param p2, "callback"    # Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;",
            ")",
            "Lcom/xiaomi/engine/TaskSession;"
        }
    .end annotation

    .line 74
    .local p1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "createSessionWithSurfaces: start"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p0, p1, p2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->createSessionWithSurfaces(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J

    move-result-wide v0

    .line 76
    .local v0, "sessionHandle":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    .line 79
    new-instance v2, Lcom/xiaomi/engine/TaskSession;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/engine/TaskSession;-><init>(J)V

    return-object v2

    .line 77
    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Create session failed: Session handle is null!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist deInit()V
    .registers 3

    .line 112
    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->deInit()I

    move-result v1

    .line 114
    .local v1, "ret":I
    const-string v2, "deInit"

    invoke-static {v1, v0, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "deInit: X"

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public static blacklist getVersionCode()I
    .registers 1

    .line 132
    invoke-static {}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->getVersionCode()I

    move-result v0

    .line 133
    .local v0, "versionCode":I
    return v0
.end method

.method public static blacklist init(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz p0, :cond_36

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: application file path to algorithm lib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->init(Ljava/lang/String;)I

    move-result v2

    .line 47
    .local v2, "ret":I
    const-string v3, "init"

    invoke-static {v2, v0, v3}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "init: X"

    invoke-static {v0, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 42
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "ret":I
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setMiViInfo(Ljava/lang/String;)Z
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "setMiViInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p0}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->setMiViInfo(Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, "ret":I
    if-nez v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
