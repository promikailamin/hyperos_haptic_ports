.class public final Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;
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
        "targetPackageUid",
        "operatingPackageUid"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field public final operatingPackageUid:I

.field public final targetPackageUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetoperatingPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->operatingPackageUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgettargetPackageUid(Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->targetPackageUid:I

    return p0
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 798
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->targetPackageUid:I

    iput p2, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->operatingPackageUid:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/media/MediaRouterMetricLogger-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->targetPackageUid:I

    iget v1, p1, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->targetPackageUid:I

    if-ne v0, v1, :cond_14

    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->operatingPackageUid:I

    iget p1, p1, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->operatingPackageUid:I

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->targetPackageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->operatingPackageUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 798
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 798
    iget v0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->targetPackageUid:I

    iget p0, p0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->operatingPackageUid:I

    invoke-static {v0, p0}, Lcom/android/server/appop/AudioRestrictionManager$Key$$ExternalSyntheticRecord0;->m(II)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 798
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/media/MediaRouterMetricLogger$PackagePair;

    const-string/jumbo v1, "targetPackageUid;operatingPackageUid"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
