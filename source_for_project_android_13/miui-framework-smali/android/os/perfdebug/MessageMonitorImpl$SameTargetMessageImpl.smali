.class Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;
.super Ljava/lang/Object;
.source "MessageMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/MessageMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SameTargetMessageImpl"
.end annotation


# instance fields
.field blacklist count:I

.field blacklist targetName:Ljava/lang/String;

.field blacklist totalRunnableTime:J

.field blacklist totalRunningTime:J

.field blacklist totalWallTime:J

.field blacklist whatOrCallback:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .registers 10
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "whatOrCallback"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "totalWallTime"    # J
    .param p6, "totalRunningTime"    # J
    .param p8, "totalRunnableTime"    # J

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->targetName:Ljava/lang/String;

    .line 822
    iput-object p2, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->whatOrCallback:Ljava/lang/String;

    .line 823
    iput p3, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->count:I

    .line 824
    iput-wide p4, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalWallTime:J

    .line 825
    iput-wide p6, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunningTime:J

    .line 826
    iput-wide p8, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunnableTime:J

    .line 827
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 831
    const-string v0, "ms"

    const-string v1, ""

    .line 833
    .local v1, "result":Ljava/lang/String;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 834
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " totalwalltime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalWallTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    iget-wide v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunningTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_63

    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " totalrunningtime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunningTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :cond_63
    iget-wide v3, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunnableTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_85

    .line 840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " totalrunnabletime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->totalRunnableTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_85
    const-string v0, " h="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->targetName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v0, " whatORcallback="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v0, p0, Landroid/os/perfdebug/MessageMonitorImpl$SameTargetMessageImpl;->whatOrCallback:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9d} :catch_9f

    move-object v1, v0

    .line 849
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    goto :goto_bc

    .line 847
    :catch_9f
    move-exception v0

    .line 848
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

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bc
    return-object v1
.end method
