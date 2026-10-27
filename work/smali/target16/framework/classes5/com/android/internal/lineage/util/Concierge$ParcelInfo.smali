.class public final Lcom/android/internal/lineage/util/Concierge$ParcelInfo;
.super Ljava/lang/Object;
.source "Concierge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/lineage/util/Concierge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelInfo"
.end annotation


# instance fields
.field private blacklist mCreation:Z

.field private blacklist mParcel:Landroid/os/Parcel;

.field private blacklist mParcelableSize:I

.field private blacklist mParcelableVersion:I

.field private blacklist mSizePosition:I

.field private blacklist mStartPosition:I


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mCreation:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mCreation:Z

    .line 106
    iput-object p1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableSize:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    iput p1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mStartPosition:I

    .line 110
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;I)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mCreation:Z

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mCreation:Z

    .line 114
    iput-object p1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    .line 115
    iput p2, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableVersion:I

    .line 119
    iget-object p2, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableVersion:I

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    iput p2, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mSizePosition:I

    .line 124
    iget-object p2, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    iput p1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mStartPosition:I

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist complete()V
    .registers 4

    .line 140
    iget-boolean v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mCreation:Z

    if-eqz v0, :cond_28

    .line 142
    iget-object v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mStartPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableSize:I

    .line 143
    iget-object v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mSizePosition:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableSize:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mStartPosition:I

    iget v2, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_32

    .line 147
    :cond_28
    iget-object v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcel:Landroid/os/Parcel;

    iget v1, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mStartPosition:I

    iget v2, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    :goto_32
    return-void
.end method

.method public blacklist getParcelVersion()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/internal/lineage/util/Concierge$ParcelInfo;->mParcelableVersion:I

    return v0
.end method
