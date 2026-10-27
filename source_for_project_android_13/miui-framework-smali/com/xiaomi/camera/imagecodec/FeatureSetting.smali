.class public Lcom/xiaomi/camera/imagecodec/FeatureSetting;
.super Ljava/lang/Object;
.source "FeatureSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/imagecodec/FeatureSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrameCount:I

.field private blacklist mTuningIndexes:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/xiaomi/camera/imagecodec/FeatureSetting$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/FeatureSetting$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I[J)V
    .registers 3
    .param p1, "frameCount"    # I
    .param p2, "tuningIndexes"    # [J

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    .line 22
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    .line 23
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrameCount()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    return v0
.end method

.method public blacklist getTuningIndexes()[J
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureSetting{frameCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tuningIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 58
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mFrameCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/FeatureSetting;->mTuningIndexes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 60
    return-void
.end method
