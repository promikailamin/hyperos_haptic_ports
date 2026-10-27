.class public Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;
.super Ljava/lang/Object;
.source "MediaRouterMetricLogger.java"


# instance fields
.field public final mEventType:I

.field public final mRoutingChangeInfo:Landroid/media/RoutingChangeInfo;

.field public final mUniqueRequestId:J


# direct methods
.method public constructor <init>(JILandroid/media/RoutingChangeInfo;)V
    .registers 5

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-wide p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mUniqueRequestId:J

    .line 658
    iput p3, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mEventType:I

    .line 659
    iput-object p4, p0, Lcom/android/server/media/MediaRouterMetricLogger$RequestInfo;->mRoutingChangeInfo:Landroid/media/RoutingChangeInfo;

    return-void
.end method
