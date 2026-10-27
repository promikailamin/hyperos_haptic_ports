.class public final Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;
.super Ljava/lang/Record;
.source "MediaRouterMetricLogger.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "entryPoint",
        "clientPackageUid",
        "isSystemSession",
        "transferReason",
        "isSuggested",
        "isSuggestedByRlp",
        "isSuggestedByMediaApp",
        "isSuggestedByAnotherApp",
        "startTimeInMillis"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        Z,
        I,
        Z,
        Z,
        Z,
        Z,
        J
    }
.end annotation


# instance fields
.field public final clientPackageUid:I

.field public final entryPoint:I

.field public final isSuggested:Z

.field public final isSuggestedByAnotherApp:Z

.field public final isSuggestedByMediaApp:Z

.field public final isSuggestedByRlp:Z

.field public final isSystemSession:Z

.field public final startTimeInMillis:J

.field public final transferReason:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetclientPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->clientPackageUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetentryPoint(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->entryPoint:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSuggested(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSuggestedByAnotherApp(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSuggestedByMediaApp(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSuggestedByRlp(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisSystemSession(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSystemSession:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstartTimeInMillis(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->startTimeInMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgettransferReason(Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->transferReason:I

    return p0
.end method

.method public constructor <init>(IIZIZZZZJ)V
    .registers 11

    .line 750
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->entryPoint:I

    iput p2, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->clientPackageUid:I

    iput-boolean p3, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSystemSession:Z

    iput p4, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->transferReason:I

    iput-boolean p5, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggested:Z

    iput-boolean p6, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    iput-boolean p7, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    iput-boolean p8, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    iput-wide p9, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->startTimeInMillis:J

    return-void
.end method

.method public synthetic constructor <init>(IIZIZZZZJLcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 12

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;-><init>(IIZIZZZZJ)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;

    if-eqz v0, :cond_40

    check-cast p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSystemSession:Z

    iget-boolean v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSystemSession:Z

    if-ne v0, v1, :cond_40

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggested:Z

    iget-boolean v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggested:Z

    if-ne v0, v1, :cond_40

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    iget-boolean v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    if-ne v0, v1, :cond_40

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    iget-boolean v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    if-ne v0, v1, :cond_40

    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    iget-boolean v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    if-ne v0, v1, :cond_40

    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->entryPoint:I

    iget v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->entryPoint:I

    if-ne v0, v1, :cond_40

    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->clientPackageUid:I

    iget v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->clientPackageUid:I

    if-ne v0, v1, :cond_40

    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->transferReason:I

    iget v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->transferReason:I

    if-ne v0, v1, :cond_40

    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->startTimeInMillis:J

    iget-wide p0, p1, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->startTimeInMillis:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 11

    .line 0
    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->entryPoint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->clientPackageUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSystemSession:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->transferReason:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggested:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->startTimeInMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    const/16 v0, 0x8

    aput-object p0, v8, v0

    return-object v8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSuggestionProvidersDebugString()Ljava/lang/String;
    .registers 3

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 766
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    if-eqz v1, :cond_e

    .line 767
    const-string v1, "RLP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    if-eqz v1, :cond_17

    .line 770
    const-string v1, "MEDIA_APP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_17
    iget-boolean p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    if-eqz p0, :cond_20

    .line 773
    const-string p0, "ANOTHER_APP"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_29

    .line 776
    const-string p0, "NONE"

    return-object p0

    .line 778
    :cond_29
    const-string/jumbo p0, "|"

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 11

    .line 750
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSystemSession:Z

    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggested:Z

    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByRlp:Z

    iget-boolean v3, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByMediaApp:Z

    iget-boolean v4, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->isSuggestedByAnotherApp:Z

    iget v5, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->entryPoint:I

    iget v6, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->clientPackageUid:I

    iget v7, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->transferReason:I

    iget-wide v8, p0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->startTimeInMillis:J

    invoke-static/range {v0 .. v9}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange$$ExternalSyntheticRecord0;->m(ZZZZZIIIJ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 750
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/media/MediaRouterMetricLogger$OngoingRoutingChange;

    const-string v1, "entryPoint;clientPackageUid;isSystemSession;transferReason;isSuggested;isSuggestedByRlp;isSuggestedByMediaApp;isSuggestedByAnotherApp;startTimeInMillis"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
