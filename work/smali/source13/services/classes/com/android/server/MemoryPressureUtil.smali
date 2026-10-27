.class public final Lcom/android/server/MemoryPressureUtil;
.super Ljava/lang/Object;
.source "MemoryPressureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MemoryPressureUtil$Psi;,
        Lcom/android/server/MemoryPressureUtil$Prop;
    }
.end annotation


# static fields
.field private static final FILE:Ljava/lang/String; = "/proc/pressure/memory"

.field private static final TAG:Ljava/lang/String; = "MemoryPressure"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentParsedPsiState()Lcom/android/server/MemoryPressureUtil$Psi;
    .registers 2

    .line 88
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentRawPsiString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "raw":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/MemoryPressureUtil$Psi;->parseFromRawString(Ljava/lang/String;)Lcom/android/server/MemoryPressureUtil$Psi;

    move-result-object v1

    .line 90
    .local v1, "psi":Lcom/android/server/MemoryPressureUtil$Psi;
    return-object v1
.end method

.method public static currentPsiState()Ljava/lang/String;
    .registers 2

    .line 58
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 59
    .local v0, "contents":Ljava/io/StringWriter;
    const-string v1, "----- Output from /proc/pressure/memory -----\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 60
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentRawPsiString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 61
    const-string v1, "----- End output from /proc/pressure/memory -----\n\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 62
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static currentRawPsiString()Ljava/lang/String;
    .registers 4

    .line 69
    const-string v0, "/proc/pressure/memory"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 71
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 72
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_15} :catch_1c
    .catchall {:try_start_6 .. :try_end_15} :catchall_1a

    .line 77
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    return-object v0

    .line 77
    :cond_19
    goto :goto_25

    :catchall_1a
    move-exception v0

    goto :goto_2c

    .line 74
    :catch_1c
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_1d
    const-string v2, "MemoryPressure"

    const-string v3, "Could not read /proc/pressure/memory"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_1a

    .line 77
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_25
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 78
    nop

    .line 79
    const-string v0, ""

    return-object v0

    .line 77
    :goto_2c
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 78
    throw v0
.end method
