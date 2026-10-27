.class public final Landroid/hardware/biometrics/IdentityCheckStatus;
.super Ljava/lang/Object;
.source "IdentityCheckStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IdentityCheckStatus$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/IdentityCheckStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsIdentityCheckActive:Z

.field private final blacklist mIsIdentityCheckValueForTestAvailable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/hardware/biometrics/IdentityCheckStatus$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/IdentityCheckStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/IdentityCheckStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckValueForTestAvailable:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckActive:Z

    .line 39
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/biometrics/IdentityCheckStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/biometrics/IdentityCheckStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZ)V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckValueForTestAvailable:Z

    .line 82
    iput-boolean p2, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckActive:Z

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/hardware/biometrics/IdentityCheckStatus-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/IdentityCheckStatus;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIdentityCheckActive()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckActive:Z

    return v0
.end method

.method public blacklist isIdentityCheckValueForTestAvailable()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckValueForTestAvailable:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 61
    iget-boolean p2, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckValueForTestAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    iget-boolean p2, p0, Landroid/hardware/biometrics/IdentityCheckStatus;->mIsIdentityCheckActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 63
    return-void
.end method
