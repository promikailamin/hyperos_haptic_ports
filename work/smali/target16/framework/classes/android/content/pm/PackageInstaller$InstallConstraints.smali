.class public final Landroid/content/pm/PackageInstaller$InstallConstraints;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallConstraints"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GENTLE_UPDATE:Landroid/content/pm/PackageInstaller$InstallConstraints;


# instance fields
.field private final blacklist mAppNotForegroundRequired:Z

.field private final blacklist mAppNotInteractingRequired:Z

.field private final blacklist mAppNotTopVisibleRequired:Z

.field private final blacklist mDeviceIdleRequired:Z

.field private final blacklist mNotInCallRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5602
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;-><init>()V

    .line 5603
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->setAppNotInteractingRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->build()Landroid/content/pm/PackageInstaller$InstallConstraints;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->GENTLE_UPDATE:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 5835
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraints$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 5814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5818
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 5819
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 5820
    :goto_10
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    .line 5821
    :goto_17
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1d

    move v4, v2

    goto :goto_1e

    :cond_1d
    move v4, v1

    .line 5822
    :goto_1e
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_24

    move v5, v2

    goto :goto_25

    :cond_24
    move v5, v1

    .line 5823
    :goto_25
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2a

    move v1, v2

    .line 5825
    :cond_2a
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    .line 5826
    iput-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    .line 5827
    iput-boolean v4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    .line 5828
    iput-boolean v5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    .line 5829
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    .line 5832
    return-void
.end method

.method public constructor blacklist <init>(ZZZZZ)V
    .registers 6

    .line 5722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5723
    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    .line 5724
    iput-boolean p2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    .line 5725
    iput-boolean p3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    .line 5726
    iput-boolean p4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    .line 5727
    iput-boolean p5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    .line 5730
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5855
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5809
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 5764
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 5765
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_35

    .line 5767
    :cond_12
    check-cast p1, Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 5769
    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    if-ne v2, v3, :cond_33

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    if-ne v2, v3, :cond_33

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    if-ne v2, v3, :cond_33

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    iget-boolean v3, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    if-ne v2, v3, :cond_33

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    iget-boolean p1, p1, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    if-ne v2, p1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    :goto_34
    return v0

    .line 5765
    :cond_35
    :goto_35
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 5783
    nop

    .line 5784
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 5785
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 5786
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 5787
    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 5788
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 5789
    return v0
.end method

.method public whitelist isAppNotForegroundRequired()Z
    .registers 2

    .line 5739
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    return v0
.end method

.method public whitelist isAppNotInteractingRequired()Z
    .registers 2

    .line 5744
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    return v0
.end method

.method public whitelist isAppNotTopVisibleRequired()Z
    .registers 2

    .line 5749
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    return v0
.end method

.method public whitelist isDeviceIdleRequired()Z
    .registers 2

    .line 5734
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    return v0
.end method

.method public whitelist isNotInCallRequired()Z
    .registers 2

    .line 5754
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 5798
    nop

    .line 5799
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mDeviceIdleRequired:Z

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 5800
    :goto_9
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotForegroundRequired:Z

    if-eqz v0, :cond_10

    or-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    .line 5801
    :cond_10
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotInteractingRequired:Z

    if-eqz v0, :cond_17

    or-int/lit8 p2, p2, 0x4

    int-to-byte p2, p2

    .line 5802
    :cond_17
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mAppNotTopVisibleRequired:Z

    if-eqz v0, :cond_1e

    or-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 5803
    :cond_1e
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints;->mNotInCallRequired:Z

    if-eqz v0, :cond_25

    or-int/lit8 p2, p2, 0x10

    int-to-byte p2, p2

    .line 5804
    :cond_25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5805
    return-void
.end method
