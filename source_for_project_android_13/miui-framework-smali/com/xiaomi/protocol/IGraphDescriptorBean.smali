.class public final Lcom/xiaomi/protocol/IGraphDescriptorBean;
.super Ljava/lang/Object;
.source "IGraphDescriptorBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/protocol/IGraphDescriptorBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsFrontCamera:Z

.field private blacklist mIsSnapshot:Z

.field private blacklist mOperationModeID:I

.field private blacklist mStreamNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lcom/xiaomi/protocol/IGraphDescriptorBean$1;

    invoke-direct {v0}, Lcom/xiaomi/protocol/IGraphDescriptorBean$1;-><init>()V

    sput-object v0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mOperationModeID:I

    .line 38
    iput v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mStreamNumber:I

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsSnapshot:Z

    .line 40
    iput-boolean v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsFrontCamera:Z

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(IIZZ)V
    .registers 5
    .param p1, "operationModeID"    # I
    .param p2, "streamNumber"    # I
    .param p3, "isSnapshot"    # Z
    .param p4, "isFrontCamera"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mOperationModeID:I

    .line 45
    iput p2, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mStreamNumber:I

    .line 46
    iput-boolean p3, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsSnapshot:Z

    .line 47
    iput-boolean p4, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsFrontCamera:Z

    .line 48
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mOperationModeID:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mStreamNumber:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsSnapshot:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    iput-boolean v1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsFrontCamera:Z

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOperationModeID()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mOperationModeID:I

    return v0
.end method

.method public blacklist getStreamNumber()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mStreamNumber:I

    return v0
.end method

.method public blacklist isFrontCamera()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsFrontCamera:Z

    return v0
.end method

.method public blacklist isSnapshot()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsSnapshot:Z

    return v0
.end method

.method public blacklist setFrontCamera(Z)V
    .registers 2
    .param p1, "frontCamera"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsFrontCamera:Z

    .line 80
    return-void
.end method

.method public blacklist setOperationModeID(I)V
    .registers 2
    .param p1, "operationModeID"    # I

    .line 67
    iput p1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mOperationModeID:I

    .line 68
    return-void
.end method

.method public blacklist setSnapshot(Z)V
    .registers 2
    .param p1, "snapshot"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsSnapshot:Z

    .line 76
    return-void
.end method

.method public blacklist setStreamNumber(I)V
    .registers 2
    .param p1, "streamNumber"    # I

    .line 71
    iput p1, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mStreamNumber:I

    .line 72
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 89
    iget v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mOperationModeID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mStreamNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IGraphDescriptorBean;->mIsFrontCamera:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    return-void
.end method
