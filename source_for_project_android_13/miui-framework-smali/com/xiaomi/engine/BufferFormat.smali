.class public final Lcom/xiaomi/engine/BufferFormat;
.super Ljava/lang/Object;
.source "BufferFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/engine/BufferFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBufferFormat:I

.field private blacklist mBufferHeight:I

.field private blacklist mBufferWidth:I

.field private blacklist mDepthBufferSize:Landroid/util/Size;

.field private blacklist mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    new-instance v0, Lcom/xiaomi/engine/BufferFormat$1;

    invoke-direct {v0}, Lcom/xiaomi/engine/BufferFormat$1;-><init>()V

    sput-object v0, Lcom/xiaomi/engine/BufferFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "graphDescriptor"    # Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    .line 57
    iput p2, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    .line 58
    iput p3, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    .line 59
    iput-object p4, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 60
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    .line 178
    const-class v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_39

    .line 180
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    .line 182
    :cond_39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 200
    return v0

    .line 202
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/engine/BufferFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 203
    return v2

    .line 205
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/xiaomi/engine/BufferFormat;

    .line 206
    .local v1, "that":Lcom/xiaomi/engine/BufferFormat;
    iget v3, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    iget v4, v1, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    iget v4, v1, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    iget v4, v1, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    iget-object v4, v1, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 209
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    iget-object v4, v1, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    .line 210
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 206
    :goto_35
    return v0
.end method

.method public blacklist getBufferFormat()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    return v0
.end method

.method public blacklist getBufferHeight()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    return v0
.end method

.method public blacklist getBufferWidth()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    return v0
.end method

.method public blacklist getCameraCombinationMode()I
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    if-eqz v0, :cond_9

    .line 127
    invoke-virtual {v0}, Lcom/xiaomi/engine/GraphDescriptorBean;->getCameraCombinationMode()I

    move-result v0

    return v0

    .line 129
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDepthBufferSize()Landroid/util/Size;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    return-object v0
.end method

.method public blacklist getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 215
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setBufferFormat(I)V
    .registers 2
    .param p1, "bufferFormat"    # I

    .line 113
    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    .line 114
    return-void
.end method

.method public blacklist setBufferHeight(I)V
    .registers 2
    .param p1, "bufferHeight"    # I

    .line 104
    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    .line 105
    return-void
.end method

.method public blacklist setBufferWidth(I)V
    .registers 2
    .param p1, "bufferWidth"    # I

    .line 95
    iput p1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    .line 96
    return-void
.end method

.method public blacklist setDepthBufferSize(Landroid/util/Size;)V
    .registers 5
    .param p1, "size"    # Landroid/util/Size;

    .line 138
    if-eqz p1, :cond_11

    .line 139
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    .line 141
    :cond_11
    return-void
.end method

.method public blacklist setGraphDescriptor(Lcom/xiaomi/engine/GraphDescriptorBean;)V
    .registers 2
    .param p1, "graphDescriptor"    # Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 121
    iput-object p1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    .line 122
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BufferFormat{bufferWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphDescriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", depthBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/xiaomi/engine/BufferFormat;->mBufferFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mGraphDescriptor:Lcom/xiaomi/engine/GraphDescriptorBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    if-eqz v0, :cond_2f

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v0, p0, Lcom/xiaomi/engine/BufferFormat;->mDepthBufferSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 170
    :cond_2f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    :goto_33
    return-void
.end method
