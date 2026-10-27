.class public Lcom/android/server/pm/dex/OdsignStatsLogger;
.super Ljava/lang/Object;
.source "OdsignStatsLogger.java"


# static fields
.field private static final COMPOS_METRIC_NAME:Ljava/lang/String; = "comp_os_artifacts_check_record"

.field private static final METRICS_FILE:Ljava/lang/String; = "/data/misc/odsign/metrics/odsign-metrics.txt"

.field private static final TAG:Ljava/lang/String; = "OdsignStatsLogger"


# direct methods
.method public static synthetic $r8$lambda$5IgqqBRRaURrVhBA9xD6mm8mpzY()V
    .registers 0

    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->writeStats()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static triggerStatsWrite()V
    .registers 2

    .line 47
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method private static writeStats()V
    .registers 13

    .line 52
    const-string v0, "/data/misc/odsign/metrics/odsign-metrics.txt"

    const-string v1, "1"

    const-string v2, "OdsignStatsLogger"

    :try_start_6
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "lines":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 57
    const-string v0, "Failed to delete metrics file"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1a
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_23
    if-ge v6, v4, :cond_67

    aget-object v7, v0, v6

    .line 65
    .local v7, "line":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "metrics":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_59

    aget-object v9, v8, v5

    const-string v10, "comp_os_artifacts_check_record"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    goto :goto_59

    .line 72
    :cond_3c
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 73
    .local v9, "currentArtifactsOk":Z
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 74
    .local v10, "compOsPendingArtifactsExists":Z
    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 76
    .local v11, "useCompOsGeneratedArtifacts":Z
    const/16 v12, 0x1a3

    invoke-static {v12, v9, v10, v11}, Lcom/android/internal/art/ArtStatsLog;->write(IZZZ)V

    .line 64
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "metrics":[Ljava/lang/String;
    .end local v9    # "currentArtifactsOk":Z
    .end local v10    # "compOsPendingArtifactsExists":Z
    .end local v11    # "useCompOsGeneratedArtifacts":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 68
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "metrics":[Ljava/lang/String;
    :cond_59
    :goto_59
    const-string v0, "Malformed metrics file"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_5e} :catch_66
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5e} :catch_5f

    .line 69
    goto :goto_67

    .line 82
    .end local v3    # "lines":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "metrics":[Ljava/lang/String;
    :catch_5f
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Reading metrics file failed"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :catch_66
    move-exception v0

    .line 84
    :cond_67
    :goto_67
    nop

    .line 85
    :goto_68
    return-void
.end method
