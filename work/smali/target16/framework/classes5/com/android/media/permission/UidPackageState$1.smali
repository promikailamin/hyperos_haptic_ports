.class Lcom/android/media/permission/UidPackageState$1;
.super Ljava/lang/Object;
.source "UidPackageState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/permission/UidPackageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/media/permission/UidPackageState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/media/permission/UidPackageState;
    .registers 3

    .line 24
    new-instance v0, Lcom/android/media/permission/UidPackageState;

    invoke-direct {v0}, Lcom/android/media/permission/UidPackageState;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/media/permission/UidPackageState;->readFromParcel(Landroid/os/Parcel;)V

    .line 26
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/media/permission/UidPackageState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/media/permission/UidPackageState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/media/permission/UidPackageState;
    .registers 2

    .line 30
    new-array p1, p1, [Lcom/android/media/permission/UidPackageState;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/media/permission/UidPackageState$1;->newArray(I)[Lcom/android/media/permission/UidPackageState;

    move-result-object p1

    return-object p1
.end method
