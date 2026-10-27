.class Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
.super Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;
.source "MessageMonitorImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/MessageMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageMonitorInfoImpl"
.end annotation


# instance fields
.field public final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field blacklist callbackName:Ljava/lang/String;

.field blacklist curProcState:I

.field blacklist dispatchBlkioDelay:J

.field blacklist dispatchCpuSTime:J

.field blacklist dispatchCpuUTime:J

.field blacklist dispatchCurrentTime:J

.field blacklist dispatchReclaimDelay:J

.field blacklist dispatchRunnableTime:J

.field blacklist dispatchRunningTime:J

.field blacklist dispatchSwapinDelay:J

.field blacklist dispatchTime:J

.field blacklist finishBlkioDelay:J

.field blacklist finishCpuSTime:J

.field blacklist finishCpuUTime:J

.field blacklist finishReclaimDelay:J

.field blacklist finishRunnableTime:J

.field blacklist finishRunningTime:J

.field blacklist finishSwapinDelay:J

.field blacklist finishTime:J

.field protected blacklist mSeq:J

.field blacklist msgWhat:I

.field blacklist perfVersion:J

.field blacklist planCurrentTime:J

.field blacklist planERTime:J

.field blacklist planTime:J

.field blacklist targetName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 910
    invoke-direct {p0}, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;-><init>()V

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    .line 1141
    new-instance v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;

    invoke-direct {v0, p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;-><init>(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 911
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 913
    invoke-direct {p0}, Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;-><init>()V

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    .line 1141
    new-instance v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;

    invoke-direct {v0, p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;-><init>(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    .line 919
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getBlkioDelay()J
    .registers 5

    .line 1033
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishBlkioDelay:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchBlkioDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getCpuSTime()J
    .registers 5

    .line 1057
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuSTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuSTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getCpuUTime()J
    .registers 5

    .line 1053
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuUTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuUTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getLatencyMillis()J
    .registers 5

    .line 1013
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getReclaimDelay()J
    .registers 5

    .line 1041
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishReclaimDelay:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchReclaimDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getRunnableTime()J
    .registers 5

    .line 1049
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunnableTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunnableTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getRunningTime()J
    .registers 5

    .line 1045
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunningTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunningTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getShortTime()Ljava/lang/String;
    .registers 7

    .line 1104
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1105
    .local v0, "sleepTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_34

    move-wide v3, v0

    :cond_34
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method blacklist getSwapinDelay()J
    .registers 5

    .line 1037
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishSwapinDelay:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchSwapinDelay:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getTotalMillis()J
    .registers 5

    .line 1025
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1026
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 1028
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist getWallMillis()J
    .registers 5

    .line 1017
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1018
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 1020
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist init(Landroid/os/Message;J)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .line 923
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_19

    .line 924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    .line 925
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    goto :goto_2f

    .line 928
    :cond_19
    iput-wide p2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 930
    .local v0, "delayMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    .line 933
    .end local v0    # "delayMillis":J
    :goto_2f
    return-void
.end method

.method blacklist isFinished()Z
    .registers 5

    .line 1008
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist markDispatch(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 977
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_16

    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    .line 978
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    iput-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    .line 979
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    .line 980
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCurrentTime:J

    .line 982
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 983
    .local v0, "delays":[J
    invoke-static {v0}, Landroid/os/perfdebug/MessageMonitorImpl;->nGetThreadDelay([J)V

    .line 984
    const/16 v1, 0x9

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->perfVersion:J

    .line 985
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchBlkioDelay:J

    .line 986
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchSwapinDelay:J

    .line 987
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchReclaimDelay:J

    .line 988
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunningTime:J

    .line 989
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunnableTime:J

    .line 990
    const/4 v1, 0x5

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuUTime:J

    .line 991
    const/4 v1, 0x6

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuSTime:J

    .line 992
    return-void
.end method

.method blacklist markFinish(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 995
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    .line 996
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 997
    .local v0, "delays":[J
    invoke-static {v0}, Landroid/os/perfdebug/MessageMonitorImpl;->nGetThreadDelay([J)V

    .line 998
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishBlkioDelay:J

    .line 999
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishSwapinDelay:J

    .line 1000
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishReclaimDelay:J

    .line 1001
    const/4 v1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunningTime:J

    .line 1002
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunnableTime:J

    .line 1003
    const/4 v1, 0x5

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuUTime:J

    .line 1004
    const/4 v1, 0x6

    aget-wide v1, v0, v1

    iput-wide v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuSTime:J

    .line 1005
    return-void
.end method

.method public blacklist reset()V
    .registers 3

    .line 937
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    .line 938
    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    .line 939
    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    .line 940
    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    .line 941
    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    .line 943
    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    .line 944
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    .line 945
    return-void
.end method

.method blacklist toShortString()Ljava/lang/String;
    .registers 8

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1110
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->mSeq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "ms "

    if-lez v1, :cond_4f

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "running="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :cond_4f
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_75

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runnable="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    :cond_75
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getBlkioDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_9b

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "io="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getBlkioDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_9b
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getSwapinDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_c1

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swapin="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getSwapinDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    :cond_c1
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getReclaimDelay()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_e7

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reclaim="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getReclaimDelay()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_e7
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_10d

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "late="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_10d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    iget-object v1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_146

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15e

    .line 1136
    :cond_146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    :goto_15e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 1062
    const-string v0, "ms"

    const-string v1, ""

    .line 1064
    .local v1, "result":Ljava/lang/String;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1065
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a0

    .line 1066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->mSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-wide v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4f

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " plan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    invoke-static {v7, v8}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->formatCurrentTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " late="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getLatencyMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getWallMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_b7

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " running="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunningTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_b7
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_dd

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " runnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getRunnableTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    :cond_dd
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getBlkioDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_103

    .line 1080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " io="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getBlkioDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_103
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getSwapinDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_129

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " swapin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getSwapinDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_129
    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getReclaimDelay()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_14f

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " reclaim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->getReclaimDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_14f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " h="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_188

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " c="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a0

    .line 1093
    :cond_188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " w="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_1a0
    :goto_1a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1a4} :catch_1a6

    move-object v1, v0

    .line 1099
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1c3

    .line 1097
    :catch_1a6
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageString failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MessageMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c3
    return-object v1
.end method

.method blacklist update(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 4
    .param p1, "info"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 948
    iget-object v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->targetName:Ljava/lang/String;

    .line 949
    iget-object v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->callbackName:Ljava/lang/String;

    .line 950
    iget v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    iput v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->msgWhat:I

    .line 951
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->mSeq:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->mSeq:J

    .line 952
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    .line 953
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    .line 954
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    .line 955
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    .line 956
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCurrentTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCurrentTime:J

    .line 957
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    .line 958
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchBlkioDelay:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchBlkioDelay:J

    .line 959
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishBlkioDelay:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishBlkioDelay:J

    .line 960
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchSwapinDelay:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchSwapinDelay:J

    .line 961
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishSwapinDelay:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishSwapinDelay:J

    .line 962
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchReclaimDelay:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchReclaimDelay:J

    .line 963
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishReclaimDelay:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishReclaimDelay:J

    .line 964
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunningTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunningTime:J

    .line 965
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunningTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunningTime:J

    .line 966
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunnableTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchRunnableTime:J

    .line 967
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunnableTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishRunnableTime:J

    .line 968
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuUTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuUTime:J

    .line 969
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuUTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuUTime:J

    .line 970
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuSTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchCpuSTime:J

    .line 971
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuSTime:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishCpuSTime:J

    .line 972
    iget v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    iput v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->curProcState:I

    .line 973
    iget-wide v0, p1, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->perfVersion:J

    iput-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->perfVersion:J

    .line 974
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1160
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1161
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planERTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1162
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->planCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1163
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->dispatchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1164
    iget-wide v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;->finishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1165
    return-void
.end method
