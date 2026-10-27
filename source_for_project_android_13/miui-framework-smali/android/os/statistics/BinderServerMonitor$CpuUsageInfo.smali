.class Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;
.super Ljava/lang/Object;
.source "BinderServerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderServerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CpuUsageInfo"
.end annotation


# instance fields
.field public blacklist binderCpuTime:J

.field public blacklist cpuUsage:D

.field public blacklist currentTimeMills:J

.field public blacklist duration:J

.field public blacklist pid:I

.field public blacklist procName:Ljava/lang/String;

.field public blacklist procState:I

.field public blacklist runningTime:J

.field public blacklist uid:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 5

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    const-string v2, "procName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v1, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    const-string v2, "procState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    iget-wide v1, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->duration:J

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 59
    iget-wide v1, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    const-string v3, "runningTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 60
    iget-wide v1, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    const-string v3, "binderCpuTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    iget-wide v1, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    const-string v3, "cpuUsage"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 62
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " procState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->runningTime:J

    iget-wide v4, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->binderCpuTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, " cputime:%s(%s:%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " cpuUsage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/statistics/BinderServerMonitor$CpuUsageInfo;->cpuUsage:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
