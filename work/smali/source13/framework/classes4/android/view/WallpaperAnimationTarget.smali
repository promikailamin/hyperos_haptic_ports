.class public Landroid/view/WallpaperAnimationTarget;
.super Ljava/lang/Object;
.source "WallpaperAnimationTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/WallpaperAnimationTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist leash:Landroid/view/SurfaceControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/view/WallpaperAnimationTarget$1;

    invoke-direct {v0}, Landroid/view/WallpaperAnimationTarget$1;-><init>()V

    sput-object v0, Landroid/view/WallpaperAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/WallpaperAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/view/WallpaperAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 27
    iget-object v0, p0, Landroid/view/WallpaperAnimationTarget;->leash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 32
    iget-object v0, p0, Landroid/view/WallpaperAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 33
    return-void
.end method
