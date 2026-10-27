.class public abstract Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.super Ljava/time/Clock;
.source "JobSchedulerService.java"


# instance fields
.field public final mZoneId:Ljava/time/ZoneId;


# direct methods
.method public constructor <init>(Ljava/time/ZoneId;)V
    .registers 2

    .line 224
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    return-void
.end method


# virtual methods
.method public getZone()Ljava/time/ZoneId;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    return-object p0
.end method

.method public instant()Ljava/time/Instant;
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public abstract millis()J
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .registers 3

    .line 235
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;-><init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V

    return-object v0
.end method
