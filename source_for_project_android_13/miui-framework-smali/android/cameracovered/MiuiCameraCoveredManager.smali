.class public Landroid/cameracovered/MiuiCameraCoveredManager;
.super Ljava/lang/Object;
.source "MiuiCameraCoveredManager.java"


# static fields
.field private static final blacklist GDEFAULT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/cameracovered/IMiuiCameraCoveredManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiCameraCoveredManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Landroid/cameracovered/MiuiCameraCoveredManager$1;

    invoke-direct {v0}, Landroid/cameracovered/MiuiCameraCoveredManager$1;-><init>()V

    sput-object v0, Landroid/cameracovered/MiuiCameraCoveredManager;->GDEFAULT:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addCoveredBlackView()V
    .registers 3

    .line 71
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 72
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/cameracovered/IMiuiCameraCoveredManager;->addCoveredBlackView()V

    goto :goto_15

    .line 74
    :cond_10
    const-string v1, "AddCoveredBlackView error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 78
    :goto_15
    goto :goto_1e

    .line 76
    :catch_16
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method public static blacklist cupMuraCoveredAnimation(I)V
    .registers 4
    .param p0, "type"    # I

    .line 47
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 48
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/cameracovered/IMiuiCameraCoveredManager;->cupMuraCoveredAnimation(I)V

    goto :goto_15

    .line 50
    :cond_10
    const-string v1, "cupMuraCoveredAnimation error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 54
    :goto_15
    goto :goto_1e

    .line 52
    :catch_16
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private static blacklist getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;
    .registers 1

    .line 18
    sget-object v0, Landroid/cameracovered/MiuiCameraCoveredManager;->GDEFAULT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/cameracovered/IMiuiCameraCoveredManager;

    return-object v0
.end method

.method public static blacklist getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 96
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 97
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/cameracovered/IMiuiCameraCoveredManager;->getScreenAntiBurnData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_11
    const-string v1, "getScreenAntiBurnData error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    .line 103
    goto :goto_1f

    .line 101
    :catch_17
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist hbmCoveredAnimation(I)V
    .registers 4
    .param p0, "type"    # I

    .line 59
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 60
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/cameracovered/IMiuiCameraCoveredManager;->hbmCoveredAnimation(I)V

    goto :goto_15

    .line 62
    :cond_10
    const-string v1, "HbmCoveredAnimation error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 66
    :goto_15
    goto :goto_1e

    .line 64
    :catch_16
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method public static blacklist hideCoveredBlackView()V
    .registers 3

    .line 35
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 36
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/cameracovered/IMiuiCameraCoveredManager;->hideCoveredBlackView()V

    goto :goto_15

    .line 38
    :cond_10
    const-string v1, "HideCoveredBlackView error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 42
    :goto_15
    goto :goto_1e

    .line 40
    :catch_16
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method public static blacklist needDisableCutout(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 83
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 84
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/cameracovered/IMiuiCameraCoveredManager;->needDisableCutout(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 86
    :cond_11
    const-string v1, "NeedDisableCutout error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    .line 90
    goto :goto_1f

    .line 88
    :catch_17
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setCoveredPackageName(Ljava/lang/String;)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 23
    const-string v0, "MiuiCameraCoveredManager"

    :try_start_2
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 24
    invoke-static {}, Landroid/cameracovered/MiuiCameraCoveredManager;->getDefault()Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/cameracovered/IMiuiCameraCoveredManager;->setCoveredPackageName(Ljava/lang/String;)V

    goto :goto_15

    .line 26
    :cond_10
    const-string v1, "SetCoveredPackageName error, the MiuiCameraCoveredManagerService not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 30
    :goto_15
    goto :goto_1e

    .line 28
    :catch_16
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method
