.class public Landroid/apex/ApexSessionInfo;
.super Ljava/lang/Object;
.source "ApexSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist crashingNativeProcess:Ljava/lang/String;

.field public blacklist errorMessage:Ljava/lang/String;

.field public blacklist isActivated:Z

.field public blacklist isActivationFailed:Z

.field public blacklist isRevertFailed:Z

.field public blacklist isRevertInProgress:Z

.field public blacklist isReverted:Z

.field public blacklist isStaged:Z

.field public blacklist isSuccess:Z

.field public blacklist isUnknown:Z

.field public blacklist isVerified:Z

.field public blacklist sessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/apex/ApexSessionInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexSessionInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 14
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 15
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    .line 16
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 17
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 18
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 19
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 20
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 21
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 22
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    nop

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_193

    .line 64
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 90
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 90
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4a

    move v2, v5

    goto :goto_4b

    :cond_4a
    move v2, v6

    :goto_4b
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_62

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5c

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 90
    :cond_5c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a

    move v2, v5

    goto :goto_6b

    :cond_6a
    move v2, v6

    :goto_6b
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 90
    :cond_7c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8a

    move v2, v5

    goto :goto_8b

    :cond_8a
    move v2, v6

    :goto_8b
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_91
    .catchall {:try_start_82 .. :try_end_91} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a2

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9c

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 90
    :cond_9c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_a2
    :try_start_a2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_aa

    move v2, v5

    goto :goto_ab

    :cond_aa
    move v2, v6

    :goto_ab
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c2

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_bc

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 90
    :cond_bc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_c2
    :try_start_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ca

    move v2, v5

    goto :goto_cb

    :cond_ca
    move v2, v6

    :goto_cb
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c2 .. :try_end_d1} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 90
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ea

    move v2, v5

    goto :goto_eb

    :cond_ea
    move v2, v6

    :goto_eb
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f1
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_102

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fc

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 90
    :cond_fc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_102
    :try_start_102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10a

    move v2, v5

    goto :goto_10b

    :cond_10a
    move v2, v6

    :goto_10b
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_111
    .catchall {:try_start_102 .. :try_end_111} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 90
    :cond_11c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12a

    move v2, v5

    goto :goto_12b

    :cond_12a
    move v2, v6

    :goto_12b
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_131
    .catchall {:try_start_122 .. :try_end_131} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_142

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 90
    :cond_13c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_142
    :try_start_142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_149

    goto :goto_14a

    :cond_149
    move v5, v6

    :goto_14a
    iput-boolean v5, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_150
    .catchall {:try_start_142 .. :try_end_150} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_161

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_15b

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 90
    :cond_15b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_161
    :try_start_161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_16b
    .catchall {:try_start_161 .. :try_end_16b} :catchall_191

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17c

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_176

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 90
    :cond_176
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_17c
    :try_start_17c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;
    :try_end_182
    .catchall {:try_start_17c .. :try_end_182} :catchall_191

    .line 89
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18b

    .line 92
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :cond_18b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :catchall_191
    move-exception v2

    goto :goto_19b

    .line 63
    :cond_193
    :try_start_193
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_19b
    .catchall {:try_start_193 .. :try_end_19b} :catchall_191

    .line 89
    :goto_19b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1a4

    .line 90
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1a4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
