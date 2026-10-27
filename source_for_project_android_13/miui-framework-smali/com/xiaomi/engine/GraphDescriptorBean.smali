.class public final Lcom/xiaomi/engine/GraphDescriptorBean;
.super Ljava/lang/Object;
.source "GraphDescriptorBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/engine/GraphDescriptorBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCameraCombinationMode:I

.field private blacklist mIsSnapshot:Z

.field private blacklist mOperationModeID:I

.field private blacklist mStreamNumber:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean$1;

    invoke-direct {v0}, Lcom/xiaomi/engine/GraphDescriptorBean$1;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/GraphDescriptorBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 46
    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 48
    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(IIZI)V
    .registers 5
    .param p1, "operationModeID"    # I
    .param p2, "streamNumber"    # I
    .param p3, "isSnapshot"    # Z
    .param p4, "cameraCombinationMode"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 62
    iput p2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    .line 63
    iput-boolean p3, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 64
    iput p4, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    .line 65
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 161
    return v0

    .line 163
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 164
    return v2

    .line 166
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 167
    .local v1, "that":Lcom/xiaomi/engine/GraphDescriptorBean;
    iget v3, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    iget v4, v1, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    iget v4, v1, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    if-ne v3, v4, :cond_26

    iget-boolean v3, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    iget-boolean v4, v1, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    if-ne v3, v4, :cond_26

    iget v3, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    iget v4, v1, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public blacklist getCameraCombinationMode()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    return v0
.end method

.method public blacklist getOperationModeID()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    return v0
.end method

.method public blacklist getStreamNumber()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSnapshot()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    return v0
.end method

.method public blacklist setCameraCombinationMode(I)V
    .registers 2
    .param p1, "cameraCombinationMode"    # I

    .line 122
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    .line 123
    return-void
.end method

.method public blacklist setOperationModeID(I)V
    .registers 2
    .param p1, "operationModeID"    # I

    .line 110
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 111
    return-void
.end method

.method public blacklist setSnapshot(Z)V
    .registers 2
    .param p1, "snapshot"    # Z

    .line 118
    iput-boolean p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    .line 119
    return-void
.end method

.method public blacklist setStreamNumber(I)V
    .registers 2
    .param p1, "streamNumber"    # I

    .line 114
    iput p1, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    .line 115
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 180
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 180
    const-string v2, "GraphDescriptorBean{mOperationModeID=%s, mStreamNumber=%s, mIsSnapshot=%s, mCameraCombinationMode=0x%x}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mOperationModeID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mStreamNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mIsSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    iget v0, p0, Lcom/xiaomi/engine/GraphDescriptorBean;->mCameraCombinationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
