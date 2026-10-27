.class public Landroid/os/MiPerf;
.super Ljava/lang/Object;
.source "MiPerf.java"


# static fields
.field private static final blacklist FILEEXPLOR_SCENE_COPY_END:I = 0x33

.field private static final blacklist FILEEXPLOR_SCENE_COPY_START:I = 0x1

.field private static final blacklist FILEEXPLOR_SCENE_UNZIP_END:I = 0x34

.field private static final blacklist FILEEXPLOR_SCENE_UNZIP_START:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "MiPerf"

.field private static blacklist isLoadMiPerfJni:Z

.field private static blacklist isMiperfEnableProp:Z

.field private static final blacklist listOfScene:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 11
    const-string v0, "MiPerf"

    const/4 v1, 0x0

    sput-boolean v1, Landroid/os/MiPerf;->isLoadMiPerfJni:Z

    .line 12
    sput-boolean v1, Landroid/os/MiPerf;->isMiperfEnableProp:Z

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/os/MiPerf;->listOfScene:Ljava/util/ArrayList;

    .line 28
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    const/16 v3, 0x33

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const/16 v3, 0x34

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :try_start_30
    const-string v1, "miperf_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    sput-boolean v2, Landroid/os/MiPerf;->isLoadMiPerfJni:Z

    .line 35
    const-string v1, "load libmiperf_jni.so successed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_3c} :catch_3d

    .line 38
    goto :goto_43

    .line 36
    :catch_3d
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "load libmiperf_jni.so failed!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_43
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static blacklist checkPackageHaveSceneBoost(I)Z
    .registers 3
    .param p0, "sceneId"    # I

    .line 59
    sget-object v0, Landroid/os/MiPerf;->listOfScene:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getSceneActivity(I)Ljava/lang/String;
    .registers 2
    .param p0, "sceneId"    # I

    .line 74
    const-string v0, "Common"

    .line 75
    .local v0, "activityName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_e

    goto :goto_c

    .line 80
    :pswitch_6
    const-string v0, "fileexplor.unzipactivity"

    .line 81
    goto :goto_c

    .line 77
    :pswitch_9
    const-string v0, "fileexplor.copyactivity"

    .line 78
    nop

    .line 85
    :goto_c
    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist getSceneBoostMode(I)Ljava/lang/String;
    .registers 2
    .param p0, "sceneId"    # I

    .line 66
    const/16 v0, 0x32

    if-gt p0, v0, :cond_7

    .line 67
    const-string v0, "PERFLOCK_ACQUIRE"

    return-object v0

    .line 69
    :cond_7
    const-string v0, "PERFLOCK_RELEASE"

    return-object v0
.end method

.method public static whitelist getThermalMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/MiPerf;->isEnableMiperf()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 103
    invoke-static {}, Landroid/os/MiPerf;->nativeGetThermalMap()Ljava/util/HashMap;

    move-result-object v1

    .line 104
    .local v1, "object":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    .line 106
    .end local v1    # "object":Ljava/lang/Object;
    :cond_12
    return-object v0
.end method

.method private static blacklist isEnableMiperf()Z
    .registers 3

    .line 54
    const-string v0, "persist.miui.miperf.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/MiPerf;->isMiperfEnableProp:Z

    .line 55
    sget-boolean v2, Landroid/os/MiPerf;->isLoadMiPerfJni:Z

    if-eqz v2, :cond_10

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public static whitelist miPerfGetXmlMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/os/MiPerf;->isEnableMiperf()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 94
    invoke-static {}, Landroid/os/MiPerf;->nativeGetXmlHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 95
    .local v1, "object":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    .line 97
    .end local v1    # "object":Ljava/lang/Object;
    :cond_12
    return-object v0
.end method

.method public static whitelist miPerfSceneBoostAcquire(Ljava/lang/String;I)I
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sceneId"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "res":I
    invoke-static {}, Landroid/os/MiPerf;->isEnableMiperf()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {p1}, Landroid/os/MiPerf;->checkPackageHaveSceneBoost(I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 120
    invoke-static {p1}, Landroid/os/MiPerf;->getSceneBoostMode(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "boostMode":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/MiPerf;->getSceneActivity(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "activityName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3, v2, p0, v1}, Landroid/os/MiPerf;->nativePerfAcqXml(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 123
    const-string v3, "PERFLOCK_RELEASE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miPerfSceneBoostAcquire: return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Scene BoostMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , packagename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , activityName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiPerf"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v1    # "boostMode":Ljava/lang/String;
    .end local v2    # "activityName":Ljava/lang/String;
    :cond_58
    return v0
.end method

.method public static whitelist miPerfSystemBoostAcquire(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "boostMode"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "res":I
    invoke-static {}, Landroid/os/MiPerf;->isEnableMiperf()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 112
    invoke-static {p0, p2, p1, p3}, Landroid/os/MiPerf;->nativePerfAcqXml(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 114
    :cond_b
    return v0
.end method

.method public static native whitelist nativeGetThermalMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native whitelist nativeGetXmlHashMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public static native whitelist nativePerfAcqXml(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native whitelist nativeUpdateConfig()I
.end method

.method public static whitelist receiveCloud(Ljava/lang/String;)V
    .registers 2
    .param p0, "cloud"    # Ljava/lang/String;

    .line 47
    const-string v0, "cloudconfig received:"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Landroid/os/MiPerf;->isEnableMiperf()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    invoke-static {}, Landroid/os/MiPerf;->nativeUpdateConfig()I

    .line 51
    :cond_e
    return-void
.end method
