.class public final Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;
.super Ljava/lang/Record;
.source "MediaRouterMetricLogger.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "rlpTotalCount",
        "rlpWithSuggestionCount"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        J,
        J
    }
.end annotation


# instance fields
.field public final rlpTotalCount:J

.field public final rlpWithSuggestionCount:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetrlpTotalCount(Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpTotalCount:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetrlpWithSuggestionCount(Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpWithSuggestionCount:J

    return-wide v0
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 784
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-wide p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpTotalCount:J

    iput-wide p3, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpWithSuggestionCount:J

    return-void
.end method

.method public synthetic constructor <init>(JJLcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    instance-of v0, p1, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpTotalCount:J

    iget-wide v2, p1, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpTotalCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpWithSuggestionCount:J

    iget-wide p0, p1, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpWithSuggestionCount:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpTotalCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpWithSuggestionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 784
    iget-wide v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpTotalCount:J

    iget-wide v2, p0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->rlpWithSuggestionCount:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/media/MediaRouterMetricLogger$DeviceSuggestionsCount$$ExternalSyntheticRecord0;->m(JJ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 784
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/media/MediaRouterMetricLogger$RlpCount;

    const-string/jumbo v1, "rlpTotalCount;rlpWithSuggestionCount"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
