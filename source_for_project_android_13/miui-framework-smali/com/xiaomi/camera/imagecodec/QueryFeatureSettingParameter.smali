.class public Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
.super Ljava/lang/Object;
.source "QueryFeatureSettingParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActiveCameraId:I

.field private blacklist mExposureTime:J

.field private blacklist mFeatureType:I

.field private blacklist mISO:I

.field private blacklist mIsQuickShot:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmActiveCameraId(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mActiveCameraId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExposureTime(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;J)V
    .registers 3

    iput-wide p1, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mExposureTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFeatureType(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mFeatureType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmISO(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mISO:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsQuickShot(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mIsQuickShot:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mFeatureType:I

    .line 23
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mActiveCameraId:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mFeatureType:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mISO:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mExposureTime:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mIsQuickShot:Z

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveCameraId()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mActiveCameraId:I

    return v0
.end method

.method public blacklist getExposureTime()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mExposureTime:J

    return-wide v0
.end method

.method public blacklist getFeatureType()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mFeatureType:I

    return v0
.end method

.method public blacklist getISO()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mISO:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mActiveCameraId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mFeatureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mISO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mExposureTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->mIsQuickShot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    return-void
.end method
