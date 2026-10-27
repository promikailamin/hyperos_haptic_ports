.class final Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocationAdasEnabledEvent"
.end annotation


# instance fields
.field private final mEnabled:Z

.field private final mUserId:I


# direct methods
.method constructor <init>(IZ)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mUserId:I

    .line 501
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mEnabled:Z

    .line 502
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adas location [u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationAdasEnabledEvent;->mEnabled:Z

    if-eqz v1, :cond_1e

    const-string v1, "enabled"

    goto :goto_20

    :cond_1e
    const-string v1, "disabled"

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
