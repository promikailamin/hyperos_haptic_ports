.class public Lcom/xiaomi/camera/isp/IspInterfaceIO;
.super Ljava/lang/Object;
.source "IspInterfaceIO.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/isp/IspInterfaceIO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist isIdle:Z

.field private blacklist mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field public blacklist mRawFormat:I

.field private blacklist mRawInputSize:Landroid/util/Size;

.field private blacklist mYuvInputSize:Landroid/util/Size;

.field private blacklist mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 180
    new-instance v0, Lcom/xiaomi/camera/isp/IspInterfaceIO$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 70
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 73
    .local v0, "supportRaw":Z
    :goto_22
    if-eqz v0, :cond_3a

    .line 74
    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 75
    new-instance v1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v1, p1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 77
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
    .registers 5
    .param p1, "yuvInputSize"    # Landroid/util/Size;
    .param p2, "rawInputSize"    # Landroid/util/Size;
    .param p3, "output"    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 65
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;I)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;I)V
    .registers 9
    .param p1, "yuvInputSize"    # Landroid/util/Size;
    .param p2, "rawInputSize"    # Landroid/util/Size;
    .param p3, "output"    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .param p4, "rawFormat"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 51
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 52
    if-eqz p2, :cond_1c

    .line 53
    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 56
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 57
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 59
    :cond_1c
    iput p4, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    .line 60
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 121
    return v0

    .line 123
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5b

    .line 126
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    .line 127
    .local v2, "that":Lcom/xiaomi/camera/isp/IspInterfaceIO;
    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    if-nez v3, :cond_36

    .line 128
    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iget-object v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 129
    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    iget v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 128
    :goto_35
    return v0

    .line 131
    :cond_36
    iget-object v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    iget-object v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 132
    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 133
    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    iget v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    iget v4, v2, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    if-ne v3, v4, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    .line 131
    :goto_5a
    return v0

    .line 124
    .end local v2    # "that":Lcom/xiaomi/camera/isp/IspInterfaceIO;
    :cond_5b
    :goto_5b
    return v1
.end method

.method public blacklist getPicOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object v0
.end method

.method public blacklist getRawInputSize()Landroid/util/Size;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    return-object v0
.end method

.method public blacklist getYuvInputSize()Landroid/util/Size;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    return-object v0
.end method

.method public blacklist getYuvOutputConfiguration()Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 108
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_2c

    .line 109
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 110
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->hashCode()I

    move-result v1

    aput v1, v0, v3

    iget v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    aput v1, v0, v2

    .line 109
    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0

    .line 112
    :cond_2c
    const/4 v6, 0x6

    new-array v6, v6, [I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v6, v5

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 113
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v6, v4

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    aput v0, v6, v3

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 114
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v6, v2

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->hashCode()I

    move-result v0

    aput v0, v6, v1

    const/4 v0, 0x5

    iget v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    aput v1, v6, v0

    .line 112
    invoke-static {v6}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_31

    .line 142
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    .line 143
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 142
    const-string v6, "RawInputSize: %dx%d "

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_31
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    .line 146
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 145
    const-string v5, "YuvInputSize: %dx%d "

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 147
    const-string v3, "rawFormat: %d "

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    if-eqz p1, :cond_43

    .line 164
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    if-eqz v0, :cond_3a

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawInputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_3d

    .line 174
    :cond_3a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    :goto_3d
    iget v0, p0, Lcom/xiaomi/camera/isp/IspInterfaceIO;->mRawFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void

    .line 161
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
