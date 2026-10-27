.class public abstract Lcom/android/server/am/BaseAppStateTimeEvents;
.super Lcom/android/server/am/BaseAppStateEvents;
.source "BaseAppStateTimeEvents.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .registers 6

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateTimeEvents;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateEvents;)V

    return-void
.end method


# virtual methods
.method public getTotalEventsSince(JJI)I
    .registers 6

    .line 71
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object p0, p0, p5

    const/4 p3, 0x0

    if-eqz p0, :cond_29

    .line 72
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p4

    if-nez p4, :cond_e

    goto :goto_29

    .line 76
    :cond_e
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    .line 77
    invoke-virtual {p4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->getTimestamp()J

    move-result-wide p4

    cmp-long p4, p4, p1

    if-ltz p4, :cond_12

    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    :cond_29
    :goto_29
    return p3
.end method
