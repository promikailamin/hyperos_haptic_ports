.class Landroid/gamepad/BsForceTouch$1;
.super Ljava/lang/Object;
.source "BsForceTouch.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gamepad/BsForceTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gamepad/BsForceTouch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/gamepad/BsForceTouch;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 108
    new-instance v0, Landroid/gamepad/BsForceTouch;

    invoke-direct {v0, p1}, Landroid/gamepad/BsForceTouch;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Landroid/gamepad/BsForceTouch$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gamepad/BsForceTouch;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/gamepad/BsForceTouch;
    .registers 3
    .param p1, "size"    # I

    .line 113
    new-array v0, p1, [Landroid/gamepad/BsForceTouch;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Landroid/gamepad/BsForceTouch$1;->newArray(I)[Landroid/gamepad/BsForceTouch;

    move-result-object p1

    return-object p1
.end method
