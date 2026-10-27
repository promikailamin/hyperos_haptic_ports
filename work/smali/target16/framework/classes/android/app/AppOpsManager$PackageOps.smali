.class public final Landroid/app/AppOpsManager$PackageOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageOps"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3838
    new-instance v0, Landroid/app/AppOpsManager$PackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$PackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$PackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 3828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3829
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    .line 3830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    .line 3831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    .line 3832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3833
    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2d

    .line 3834
    iget-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    sget-object v3, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3833
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 3836
    :cond_2d
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;)V"
        }
    .end annotation

    .line 3786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3787
    iput-object p1, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    .line 3788
    iput p2, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    .line 3789
    iput-object p3, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    .line 3790
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3815
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .line 3810
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 3796
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 3803
    iget v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 3820
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3821
    iget v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3822
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3823
    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 3824
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3823
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 3826
    :cond_2a
    return-void
.end method
