.class public Lcom/xiaomi/engine/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCropRegion:[I

.field private blacklist mFlawResult:I

.field private blacklist mMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResultId:I

.field private blacklist mTimeStamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/xiaomi/engine/ResultData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/ResultData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getCropRegion()[I
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/xiaomi/engine/ResultData;->mCropRegion:[I

    return-object v0
.end method

.method public blacklist getFlawResult()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/xiaomi/engine/ResultData;->mFlawResult:I

    return v0
.end method

.method public blacklist getMetaResult()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/xiaomi/engine/ResultData;->mMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getResultId()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/xiaomi/engine/ResultData;->mResultId:I

    return v0
.end method

.method public blacklist getTimeStamp()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/xiaomi/engine/ResultData;->mTimeStamp:J

    return-wide v0
.end method

.method public blacklist setCropRegion([I)V
    .registers 2
    .param p1, "region"    # [I

    .line 59
    iput-object p1, p0, Lcom/xiaomi/engine/ResultData;->mCropRegion:[I

    .line 60
    return-void
.end method

.method public blacklist setFlawResult(I)V
    .registers 2
    .param p1, "flawResult"    # I

    .line 55
    iput p1, p0, Lcom/xiaomi/engine/ResultData;->mFlawResult:I

    .line 56
    return-void
.end method

.method public blacklist setMetaResult(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaomi/engine/ResultData;->mMetadata:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public blacklist setResultId(I)V
    .registers 2
    .param p1, "sequenceId"    # I

    .line 47
    iput p1, p0, Lcom/xiaomi/engine/ResultData;->mResultId:I

    .line 48
    return-void
.end method

.method public blacklist setTimeStamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 67
    iput-wide p1, p0, Lcom/xiaomi/engine/ResultData;->mTimeStamp:J

    .line 68
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultData{ mResultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/ResultData;->mResultId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlawResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/ResultData;->mFlawResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
