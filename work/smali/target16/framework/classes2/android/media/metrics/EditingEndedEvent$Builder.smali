.class public final Landroid/media/metrics/EditingEndedEvent$Builder;
.super Ljava/lang/Object;
.source "EditingEndedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/EditingEndedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mExporterName:Ljava/lang/String;

.field private blacklist mFinalProgressPercent:F

.field private final blacklist mFinalState:I

.field private final blacklist mInputMediaItemInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/metrics/MediaItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMetricsBundle:Landroid/os/Bundle;

.field private blacklist mMuxerName:Ljava/lang/String;

.field private blacklist mOperationTypes:J

.field private blacklist mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

.field private blacklist mTimeSinceCreatedMillis:J


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 4

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mFinalState:I

    .line 451
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mFinalProgressPercent:F

    .line 452
    const/4 p1, 0x1

    iput p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mErrorCode:I

    .line 453
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 454
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mInputMediaItemInfos:Ljava/util/ArrayList;

    .line 455
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 456
    return-void
.end method


# virtual methods
.method public whitelist addInputMediaItemInfo(Landroid/media/metrics/MediaItemInfo;)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 3

    .line 516
    iget-object v0, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mInputMediaItemInfos:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/metrics/MediaItemInfo;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    return-object p0
.end method

.method public whitelist addOperationType(J)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 5

    .line 532
    iget-wide v0, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mOperationTypes:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mOperationTypes:J

    .line 533
    return-object p0
.end method

.method public whitelist build()Landroid/media/metrics/EditingEndedEvent;
    .registers 15

    .line 548
    new-instance v0, Landroid/media/metrics/EditingEndedEvent;

    iget v1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mFinalState:I

    iget v2, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mFinalProgressPercent:F

    iget v3, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mErrorCode:I

    iget-wide v4, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mTimeSinceCreatedMillis:J

    iget-object v6, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mExporterName:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mMuxerName:Ljava/lang/String;

    iget-object v8, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mInputMediaItemInfos:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    iget-wide v10, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mOperationTypes:J

    iget-object v12, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Landroid/media/metrics/EditingEndedEvent;-><init>(IFIJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/media/metrics/MediaItemInfo;JLandroid/os/Bundle;Landroid/media/metrics/EditingEndedEvent-IA;)V

    return-object v0
.end method

.method public whitelist setErrorCode(I)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 2

    .line 510
    iput p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mErrorCode:I

    .line 511
    return-object p0
.end method

.method public whitelist setExporterName(Ljava/lang/String;)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 2

    .line 492
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mExporterName:Ljava/lang/String;

    .line 493
    return-object p0
.end method

.method public whitelist setFinalProgressPercent(F)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 2

    .line 467
    iput p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mFinalProgressPercent:F

    .line 468
    return-object p0
.end method

.method public whitelist setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 2

    .line 542
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    .line 543
    return-object p0
.end method

.method public whitelist setMuxerName(Ljava/lang/String;)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 2

    .line 504
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mMuxerName:Ljava/lang/String;

    .line 505
    return-object p0
.end method

.method public whitelist setOutputMediaItemInfo(Landroid/media/metrics/MediaItemInfo;)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 2

    .line 522
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/metrics/MediaItemInfo;

    iput-object p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mOutputMediaItemInfo:Landroid/media/metrics/MediaItemInfo;

    .line 523
    return-object p0
.end method

.method public whitelist setTimeSinceCreatedMillis(J)Landroid/media/metrics/EditingEndedEvent$Builder;
    .registers 3

    .line 480
    iput-wide p1, p0, Landroid/media/metrics/EditingEndedEvent$Builder;->mTimeSinceCreatedMillis:J

    .line 481
    return-object p0
.end method
