.class public Landroid/powerconsumption/activityDim/ActivityDimInfo;
.super Ljava/lang/Object;
.source "ActivityDimInfo.java"


# instance fields
.field private blacklist activityDimConfig:Ljava/lang/String;

.field private blacklist version:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getActivityDimConfig()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Landroid/powerconsumption/activityDim/ActivityDimInfo;->activityDimConfig:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()J
    .registers 3

    .line 22
    iget-wide v0, p0, Landroid/powerconsumption/activityDim/ActivityDimInfo;->version:J

    return-wide v0
.end method

.method public blacklist setActivityDimConfig(Ljava/lang/String;)V
    .registers 2
    .param p1, "activityDimConfig"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/powerconsumption/activityDim/ActivityDimInfo;->activityDimConfig:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public blacklist setVersion(J)V
    .registers 3
    .param p1, "version"    # J

    .line 26
    iput-wide p1, p0, Landroid/powerconsumption/activityDim/ActivityDimInfo;->version:J

    .line 27
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDimInfo{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/powerconsumption/activityDim/ActivityDimInfo;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityDimConfig=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/powerconsumption/activityDim/ActivityDimInfo;->activityDimConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
