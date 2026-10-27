.class public final Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
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
    name = "InstallConstraintsResult"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$InstallConstraintsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllConstraintsSatisfied:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5547
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5538
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 5539
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 5541
    :goto_d
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    .line 5544
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2

    .line 5510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5511
    iput-boolean p1, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    .line 5514
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5566
    return-void
.end method


# virtual methods
.method public whitelist areAllConstraintsSatisfied()Z
    .registers 2

    .line 5483
    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 5529
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5522
    nop

    .line 5523
    iget-boolean p2, p0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->mAllConstraintsSatisfied:Z

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 5524
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5525
    return-void
.end method
