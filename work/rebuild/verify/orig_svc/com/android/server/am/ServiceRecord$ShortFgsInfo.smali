.class public Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# instance fields
.field public mStartForegroundCount:I

.field public mStartId:I

.field public final mStartTime:J

.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;J)V
    .registers 4

    .line 600
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-wide p2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    .line 602
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->update()V

    return-void
.end method


# virtual methods
.method public getAnrTime()J
    .registers 5

    .line 651
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getProcStateDemoteTime()J
    .registers 5

    .line 645
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartForegroundCount()I
    .registers 1

    .line 619
    iget p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    return p0
.end method

.method public getStartId()I
    .registers 1

    .line 623
    iget p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    return p0
.end method

.method public getStartTime()J
    .registers 3

    .line 615
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    return-wide v0
.end method

.method public getTimeoutTime()J
    .registers 5

    .line 640
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartTime:J

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isCurrent()Z
    .registers 2

    .line 635
    iget v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public update()V
    .registers 3

    .line 610
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iput v1, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartForegroundCount:I

    .line 611
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->mStartId:I

    return-void
.end method
