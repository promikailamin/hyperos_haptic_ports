.class public final Landroid/bluetooth/le/PeriodicAdvertisingReport;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DATA_COMPLETE:I = 0x0

.field public static final greylist-max-o DATA_INCOMPLETE_TRUNCATED:I = 0x2


# instance fields
.field private greylist-max-o mData:Landroid/bluetooth/le/ScanRecord;

.field private greylist-max-o mDataStatus:I

.field private greylist-max-o mRssi:I

.field private greylist-max-o mSyncHandle:I

.field private greylist-max-o mTimestampNanos:J

.field private greylist-max-o mTxPower:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 174
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(IIIILandroid/bluetooth/le/ScanRecord;)V
    .registers 6
    .param p1, "syncHandle"    # I
    .param p2, "txPower"    # I
    .param p3, "rssi"    # I
    .param p4, "dataStatus"    # I
    .param p5, "data"    # Landroid/bluetooth/le/ScanRecord;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    .line 61
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    .line 62
    iput p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    .line 63
    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    .line 64
    iput-object p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 65
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 93
    :cond_29
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 153
    return v0

    .line 155
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    .line 158
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 159
    .local v2, "other":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    iget v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 163
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-wide v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    iget-wide v5, v2, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 159
    :goto_41
    return v0

    .line 156
    .end local v2    # "other":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :cond_42
    :goto_42
    return v1
.end method

.method public greylist-max-o getData()Landroid/bluetooth/le/ScanRecord;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public greylist-max-o getDataStatus()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    return v0
.end method

.method public greylist-max-o getRssi()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    return v0
.end method

.method public greylist-max-o getSyncHandle()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    return v0
.end method

.method public greylist-max-o getTimestampNanos()J
    .registers 3

    .line 142
    iget-wide v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    return-wide v0
.end method

.method public greylist-max-o getTxPower()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 147
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodicAdvertisingReport{syncHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 171
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_26

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2a

    .line 81
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    :goto_2a
    return-void
.end method
