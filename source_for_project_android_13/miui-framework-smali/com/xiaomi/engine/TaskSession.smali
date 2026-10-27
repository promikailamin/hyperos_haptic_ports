.class public Lcom/xiaomi/engine/TaskSession;
.super Ljava/lang/Object;
.source "TaskSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/engine/TaskSession$FrameCallback;,
        Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHasDestroyed:Z

.field private blacklist mHasFlushed:Z

.field private final blacklist mSessionHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativeSessionHandle"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    .line 30
    return-void
.end method

.method private blacklist destroy()V
    .registers 4

    .line 128
    iget-boolean v0, p0, Lcom/xiaomi/engine/TaskSession;->mHasDestroyed:Z

    if-eqz v0, :cond_21

    .line 129
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 132
    :cond_21
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->destroySession(J)I

    move-result v0

    .line 133
    .local v0, "ret":I
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    if-nez v0, :cond_33

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/engine/TaskSession;->mHasDestroyed:Z

    .line 137
    :cond_33
    return-void
.end method

.method private blacklist flush()V
    .registers 4

    .line 140
    iget-boolean v0, p0, Lcom/xiaomi/engine/TaskSession;->mHasFlushed:Z

    if-eqz v0, :cond_21

    .line 141
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been flushed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 144
    :cond_21
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->flush(J)I

    move-result v0

    .line 145
    .local v0, "ret":I
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "flush"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    if-nez v0, :cond_33

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/engine/TaskSession;->mHasFlushed:Z

    .line 149
    :cond_33
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 4

    .line 90
    invoke-direct {p0}, Lcom/xiaomi/engine/TaskSession;->flush()V

    .line 91
    invoke-direct {p0}, Lcom/xiaomi/engine/TaskSession;->destroy()V

    .line 92
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 125
    return-void
.end method

.method public blacklist flushCurrentTask()V
    .registers 4

    .line 158
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->flush(J)I

    move-result v0

    .line 159
    .local v0, "ret":I
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "flushCurrentTask"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public blacklist getSessionHandle()J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    return-wide v0
.end method

.method public blacklist preProcess(Lcom/xiaomi/engine/PreProcessData;)V
    .registers 4
    .param p1, "data"    # Lcom/xiaomi/engine/PreProcessData;

    .line 47
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->preProcess(JLcom/xiaomi/engine/PreProcessData;)I

    .line 48
    return-void
.end method

.method public blacklist processFrame(Lcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)V
    .registers 6
    .param p1, "frameData"    # Lcom/xiaomi/engine/FrameData;
    .param p2, "callback"    # Lcom/xiaomi/engine/TaskSession$FrameCallback;

    .line 59
    sget-object v0, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/engine/FrameData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-wide v1, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v1, v2, p1, p2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->processFrame(JLcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)I

    move-result v1

    .line 64
    .local v1, "ret":I
    const-string v2, "processFrame"

    invoke-static {v1, v0, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez v1, :cond_2f

    .line 66
    const/4 v0, 0x0

    const-string v2, "onProcessStarted"

    invoke-interface {p2, v1, v2, v0}, Lcom/xiaomi/engine/TaskSession$FrameCallback;->onFrameProcessed(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_2f
    return-void
.end method

.method public blacklist processFrameWithSync(Ljava/util/List;Landroid/media/Image;I)I
    .registers 11
    .param p2, "resultImage"    # Landroid/media/Image;
    .param p3, "algoType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "I)I"
        }
    .end annotation

    .line 79
    .local p1, "frameDataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/engine/FrameData;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "startTime":J
    sget-object v2, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v3, "processFrameWithSync: E"

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-wide v3, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v3, v4, p1, p2, p3}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->processFrameWithSync(JLjava/util/List;Landroid/media/Image;I)I

    move-result v3

    .line 82
    .local v3, "baseIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processFrameWithSync: X. cost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v3
.end method

.method public blacklist quickFinish(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 170
    invoke-static {}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->getVersionCode()I

    move-result v0

    const v1, 0xc0d63d8

    if-lt v0, v1, :cond_18

    .line 172
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->quickFinish(JJZ)I

    move-result v0

    .line 173
    .local v0, "ret":I
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "flushCurrentTask quick flush"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0    # "ret":I
    goto :goto_25

    .line 176
    :cond_18
    iget-wide v0, p0, Lcom/xiaomi/engine/TaskSession;->mSessionHandle:J

    invoke-static {v0, v1}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->flush(J)I

    move-result v0

    .line 177
    .restart local v0    # "ret":I
    sget-object v1, Lcom/xiaomi/engine/TaskSession;->TAG:Ljava/lang/String;

    const-string v2, "flushCurrentTask normal flush"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "ret":I
    :goto_25
    return-void
.end method
