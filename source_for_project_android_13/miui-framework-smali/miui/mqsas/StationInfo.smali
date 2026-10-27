.class public Lmiui/mqsas/StationInfo;
.super Ljava/lang/Object;
.source "StationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/StationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist current_rssi:I

.field public blacklist rssi0:I

.field public blacklist rssi1:I

.field public blacklist rssi2:I

.field public blacklist rssi3:I

.field public blacklist rx_eht_mcs:I

.field public blacklist rx_he_mcs:I

.field public blacklist rx_mcs:I

.field public blacklist rx_vht_mcs:I

.field public blacklist tx_eht_mcs:I

.field public blacklist tx_he_mcs:I

.field public blacklist tx_mcs:I

.field public blacklist tx_vht_mcs:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lmiui/mqsas/StationInfo$1;

    invoke-direct {v0}, Lmiui/mqsas/StationInfo$1;-><init>()V

    sput-object v0, Lmiui/mqsas/StationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lmiui/mqsas/StationInfo;->current_rssi:I

    .line 12
    iput v0, p0, Lmiui/mqsas/StationInfo;->rssi0:I

    .line 14
    iput v0, p0, Lmiui/mqsas/StationInfo;->rssi1:I

    .line 16
    iput v0, p0, Lmiui/mqsas/StationInfo;->rssi2:I

    .line 18
    iput v0, p0, Lmiui/mqsas/StationInfo;->rssi3:I

    .line 20
    iput v0, p0, Lmiui/mqsas/StationInfo;->tx_mcs:I

    .line 22
    iput v0, p0, Lmiui/mqsas/StationInfo;->tx_vht_mcs:I

    .line 24
    iput v0, p0, Lmiui/mqsas/StationInfo;->tx_he_mcs:I

    .line 26
    iput v0, p0, Lmiui/mqsas/StationInfo;->tx_eht_mcs:I

    .line 28
    iput v0, p0, Lmiui/mqsas/StationInfo;->rx_mcs:I

    .line 30
    iput v0, p0, Lmiui/mqsas/StationInfo;->rx_vht_mcs:I

    .line 32
    iput v0, p0, Lmiui/mqsas/StationInfo;->rx_he_mcs:I

    .line 34
    iput v0, p0, Lmiui/mqsas/StationInfo;->rx_eht_mcs:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 72
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_18e

    .line 75
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 103
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->current_rssi:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 103
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rssi0:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 103
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rssi1:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 103
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rssi2:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 103
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rssi3:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 103
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->tx_mcs:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 103
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->tx_vht_mcs:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 103
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->tx_he_mcs:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 103
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->tx_eht_mcs:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 103
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rx_mcs:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 103
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rx_vht_mcs:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 103
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rx_he_mcs:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_18c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_176

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_170

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 103
    :cond_170
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_176
    :try_start_176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmiui/mqsas/StationInfo;->rx_eht_mcs:I
    :try_end_17c
    .catchall {:try_start_176 .. :try_end_17c} :catchall_18c

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_186

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    nop

    .line 107
    return-void

    .line 103
    :cond_186
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :catchall_18c
    move-exception v2

    goto :goto_196

    .line 74
    :cond_18e
    :try_start_18e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lmiui/mqsas/StationInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_196
    .catchall {:try_start_18e .. :try_end_196} :catchall_18c

    .line 102
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lmiui/mqsas/StationInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_196
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_19f

    .line 103
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_19f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Lmiui/mqsas/StationInfo;->current_rssi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v1, p0, Lmiui/mqsas/StationInfo;->rssi0:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, p0, Lmiui/mqsas/StationInfo;->rssi1:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Lmiui/mqsas/StationInfo;->rssi2:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Lmiui/mqsas/StationInfo;->rssi3:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v1, p0, Lmiui/mqsas/StationInfo;->tx_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Lmiui/mqsas/StationInfo;->tx_vht_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v1, p0, Lmiui/mqsas/StationInfo;->tx_he_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v1, p0, Lmiui/mqsas/StationInfo;->tx_eht_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Lmiui/mqsas/StationInfo;->rx_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v1, p0, Lmiui/mqsas/StationInfo;->rx_vht_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v1, p0, Lmiui/mqsas/StationInfo;->rx_he_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v1, p0, Lmiui/mqsas/StationInfo;->rx_eht_mcs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 65
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void
.end method
