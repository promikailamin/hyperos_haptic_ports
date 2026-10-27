.class public Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;
.super Ljava/lang/Object;
.source "MultiUserDeviceProvisioningParamsTransport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deviceAdminComponentName:Landroid/content/ComponentName;

.field public blacklist leaveAllSystemAppsEnabled:Z

.field public blacklist localTime:J

.field public blacklist localeStr:Ljava/lang/String;

.field public blacklist timeZone:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport$1;

    invoke-direct {v0}, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport$1;-><init>()V

    sput-object v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->leaveAllSystemAppsEnabled:Z

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localTime:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 85
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 86
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 87
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 89
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 80
    nop

    .line 81
    iget-object v0, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->deviceAdminComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 82
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ac

    .line 61
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 72
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 73
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_25
    :try_start_25
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iput-object v2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->deviceAdminComponentName:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 72
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 73
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->leaveAllSystemAppsEnabled:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 72
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 73
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->timeZone:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 72
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 73
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localTime:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 72
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 73
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localeStr:Ljava/lang/String;
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_aa

    .line 72
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a4

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    nop

    .line 77
    return-void

    .line 73
    :cond_a4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :catchall_aa
    move-exception v2

    goto :goto_b4

    .line 60
    :cond_ac
    :try_start_ac
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_aa

    .line 72
    :goto_b4
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bd

    .line 73
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_bd
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v1, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->deviceAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-boolean p2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->leaveAllSystemAppsEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    iget-object p2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->timeZone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-wide v1, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object p2, p0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->localeStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void
.end method
