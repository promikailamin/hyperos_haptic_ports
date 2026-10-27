.class public Lmiui/media/MQSUtils;
.super Ljava/lang/Object;
.source "MQSUtils.java"


# static fields
.field private static final blacklist MIPLAY:Ljava/lang/String; = "{\"name\":\"miplay\",\"audio_event\":{\"connection_time_min\":\"%s\"},\"dgt\":\"null\",\"audio_ext\":\"null\"}"

.field private static final blacklist TAG:Ljava/lang/String; = "MQSUtils:MiPlay"

.field private static blacklist mMiuiXlog:Landroid/media/MiuiXlog;

.field private static blacklist saveStartRecorderTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/media/MiuiXlog;

    invoke-direct {v0}, Landroid/media/MiuiXlog;-><init>()V

    sput-object v0, Lmiui/media/MQSUtils;->mMiuiXlog:Landroid/media/MiuiXlog;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist onetrack(JZ)V
    .registers 16
    .param p0, "recorderTime"    # J
    .param p2, "miplayStatus"    # Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " recorderTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " miplayStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MQSUtils:MiPlay"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x1

    if-ne p2, v0, :cond_28

    .line 26
    sput-wide p0, Lmiui/media/MQSUtils;->saveStartRecorderTime:J

    goto :goto_7e

    .line 27
    :cond_28
    sget-wide v2, Lmiui/media/MQSUtils;->saveStartRecorderTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_79

    .line 28
    move-wide v6, p0

    .line 29
    .local v6, "saveEndRecorderTime":J
    sub-long v2, v6, v2

    .line 30
    .local v2, "diff":J
    const-wide/32 v8, 0xea60

    div-long v8, v2, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 31
    .local v8, "min":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "diff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " min: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 33
    .local v10, "useTime":Ljava/lang/String;
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v10, v0, v11

    const-string v11, "{\"name\":\"miplay\",\"audio_event\":{\"connection_time_min\":\"%s\"},\"dgt\":\"null\",\"audio_ext\":\"null\"}"

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "message":Ljava/lang/String;
    :try_start_6a
    sget-object v11, Lmiui/media/MQSUtils;->mMiuiXlog:Landroid/media/MiuiXlog;

    invoke-virtual {v11, v0}, Landroid/media/MiuiXlog;->miuiXlogSend(Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_70

    .line 38
    goto :goto_76

    .line 36
    :catchall_70
    move-exception v11

    .line 37
    .local v11, "e":Ljava/lang/Throwable;
    const-string v12, "can not use miuiXlogSend!!!"

    invoke-static {v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v11    # "e":Ljava/lang/Throwable;
    :goto_76
    sput-wide v4, Lmiui/media/MQSUtils;->saveStartRecorderTime:J

    .line 40
    .end local v0    # "message":Ljava/lang/String;
    .end local v2    # "diff":J
    .end local v6    # "saveEndRecorderTime":J
    .end local v8    # "min":J
    .end local v10    # "useTime":Ljava/lang/String;
    goto :goto_7e

    .line 41
    :cond_79
    const-string v0, "recorderTime is invalid"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_7e
    return-void
.end method
