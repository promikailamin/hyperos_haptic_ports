.class public Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# instance fields
.field public final mTimestamp:J

.field public final mValue:F


# direct methods
.method public constructor <init>(JF)V
    .registers 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-wide p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    .line 201
    iput p3, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
