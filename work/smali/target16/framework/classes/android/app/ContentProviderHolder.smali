.class public Landroid/app/ContentProviderHolder;
.super Ljava/lang/Object;
.source "ContentProviderHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ContentProviderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o connection:Landroid/os/IBinder;

.field public final greylist info:Landroid/content/pm/ProviderInfo;

.field public blacklist mLocal:Z

.field public greylist-max-p noReleaseNeeded:Z

.field public blacklist noReleaseNeededIfUnstable:Z

.field public greylist provider:Landroid/content/IContentProvider;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/app/ContentProviderHolder$1;

    invoke-direct {v0}, Landroid/app/ContentProviderHolder$1;-><init>()V

    sput-object v0, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ProviderInfo;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 51
    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 88
    nop

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/content/ContentProviderNative;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    iput-boolean v0, p0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    iput-boolean v0, p0, Landroid/app/ContentProviderHolder;->mLocal:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    iput-boolean v1, p0, Landroid/app/ContentProviderHolder;->noReleaseNeededIfUnstable:Z

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ContentProviderHolder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ContentProviderHolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 60
    iget-object p2, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    iget-object p2, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz p2, :cond_14

    .line 62
    iget-object p2, p0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_18

    .line 64
    :cond_14
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 66
    :goto_18
    iget-object p2, p0, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 67
    iget-boolean p2, p0, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean p2, p0, Landroid/app/ContentProviderHolder;->mLocal:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean p2, p0, Landroid/app/ContentProviderHolder;->noReleaseNeededIfUnstable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
