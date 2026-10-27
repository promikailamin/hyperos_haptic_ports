.class public Landroid/apex/ApexInfo;
.super Ljava/lang/Object;
.source "ApexInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/apex/ApexInfo$Partition;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist activeApexChanged:Z

.field public blacklist hasClassPathJars:Z

.field public blacklist isActive:Z

.field public blacklist isFactory:Z

.field public blacklist moduleName:Ljava/lang/String;

.field public blacklist modulePath:Ljava/lang/String;

.field public blacklist partition:B

.field public blacklist preinstalledModulePath:Ljava/lang/String;

.field public blacklist versionCode:J

.field public blacklist versionName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/apex/ApexInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/apex/ApexInfo;->versionCode:J

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 18
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->isActive:Z

    .line 20
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 27
    iput-boolean v0, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    nop

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_144

    .line 67
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 89
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 89
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 89
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 89
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/apex/ApexInfo;->versionCode:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 89
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 89
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_b6

    move v2, v5

    goto :goto_b7

    :cond_b6
    move v2, v6

    :goto_b7
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bd
    .catchall {:try_start_ac .. :try_end_bd} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 89
    :cond_c8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d6

    move v2, v5

    goto :goto_d7

    :cond_d6
    move v2, v6

    :goto_d7
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->isActive:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dd
    .catchall {:try_start_ce .. :try_end_dd} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 89
    :cond_e8
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f6

    move v2, v5

    goto :goto_f7

    :cond_f6
    move v2, v6

    :goto_f7
    iput-boolean v2, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_fd
    .catchall {:try_start_ee .. :try_end_fd} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10e

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_108

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 89
    :cond_108
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_10e
    :try_start_10e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_115

    goto :goto_116

    :cond_115
    move v5, v6

    :goto_116
    iput-boolean v5, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11c
    .catchall {:try_start_10e .. :try_end_11c} :catchall_142

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12d

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_127

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 89
    :cond_127
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_12d
    :try_start_12d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/apex/ApexInfo;->partition:B
    :try_end_133
    .catchall {:try_start_12d .. :try_end_133} :catchall_142

    .line 88
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13c

    .line 91
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    nop

    .line 93
    return-void

    .line 89
    :cond_13c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :catchall_142
    move-exception v2

    goto :goto_14c

    .line 66
    :cond_144
    :try_start_144
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14c
    .catchall {:try_start_144 .. :try_end_14c} :catchall_142

    .line 88
    :goto_14c
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_155

    .line 89
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_155
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-wide v0, p0, Landroid/apex/ApexInfo;->versionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Landroid/apex/ApexInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean v0, p0, Landroid/apex/ApexInfo;->isActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Landroid/apex/ApexInfo;->hasClassPathJars:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean v0, p0, Landroid/apex/ApexInfo;->activeApexChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-byte v0, p0, Landroid/apex/ApexInfo;->partition:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void
.end method
