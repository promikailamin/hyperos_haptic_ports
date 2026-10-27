.class public Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
.super Ljava/lang/Object;
.source "UserJourneyLogger.java"


# instance fields
.field public final mJourney:I

.field public final mSessionId:J

.field public final mStartTimeInMills:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 608
    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method

.method public constructor <init>(JIJ)V
    .registers 6

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 614
    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    .line 615
    iput-wide p4, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method
