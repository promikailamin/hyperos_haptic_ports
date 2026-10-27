.class public abstract Lcom/android/server/pm/dex/OdsignStatsLogger;
.super Ljava/lang/Object;
.source "OdsignStatsLogger.java"


# direct methods
.method public static synthetic $r8$lambda$5UQTBxO3KU1lWEi5-bo1kDq6QXM()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->writeStats()V

    return-void
.end method

.method public static triggerStatsWrite()V
    .registers 2

    .line 48
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/dex/OdsignStatsLogger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static writeStats()V
    .registers 14

    .line 53
    const-string v0, "/data/misc/odsign/metrics/odsign-metrics.txt"

    const-string v1, "1"

    const-string v2, "OdsignStatsLogger"

    :try_start_6
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 58
    const-string v0, "Failed to delete metrics file"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catch_1b
    move-exception v0

    goto/16 :goto_f7

    .line 65
    :cond_1e
    :goto_1e
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_27
    if-ge v5, v3, :cond_fc

    aget-object v6, v0, v5

    .line 66
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_ee

    array-length v8, v7

    const/4 v9, 0x1

    if-ge v8, v9, :cond_3d

    goto/16 :goto_ee

    .line 73
    :cond_3d
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_43} :catch_fc
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_43} :catch_1b

    const v11, 0x3510781e

    const/4 v12, 0x2

    const-string v13, "\'"

    if-eq v10, v11, :cond_90

    const v11, 0x3d07e991

    if-eq v10, v11, :cond_52

    goto/16 :goto_d6

    :cond_52
    :try_start_52
    const-string v10, "comp_os_artifacts_check_record"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 75
    array-length v8, v7

    const/4 v10, 0x4

    if-eq v8, v10, :cond_77

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed CompOS metrics line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f3

    .line 80
    :cond_77
    aget-object v6, v7, v9

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 81
    aget-object v8, v7, v12

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    .line 82
    aget-object v7, v7, v9

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v9, 0x1a3

    .line 84
    invoke-static {v9, v6, v8, v7}, Lcom/android/internal/art/ArtStatsLog;->write(IZZZ)V

    goto :goto_f3

    .line 73
    :cond_90
    const-string/jumbo v10, "odsign_record"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 90
    array-length v8, v7
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_9a} :catch_fc
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_9a} :catch_1b

    const-string v10, "Malformed odsign metrics line \'"

    if-eq v8, v12, :cond_b4

    .line 91
    :try_start_9e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_b3} :catch_fc
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b3} :catch_1b

    goto :goto_f3

    .line 96
    :cond_b4
    :try_start_b4
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x224

    .line 97
    invoke-static {v8, v7}, Lcom/android/internal/art/ArtStatsLog;->write(II)V
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_b4 .. :try_end_bf} :catch_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_b4 .. :try_end_bf} :catch_fc
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bf} :catch_1b

    goto :goto_f3

    .line 99
    :catch_c0
    :try_start_c0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    .line 105
    :cond_d6
    :goto_d6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed metrics line \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    .line 69
    :cond_ee
    :goto_ee
    const-string v6, "Empty metrics line"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_f3} :catch_fc
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_f3} :catch_1b

    :goto_f3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    .line 111
    :goto_f7
    const-string v1, "Reading metrics file failed"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_fc
    :cond_fc
    return-void
.end method
