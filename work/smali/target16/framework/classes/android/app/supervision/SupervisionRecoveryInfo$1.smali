.class Landroid/app/supervision/SupervisionRecoveryInfo$1;
.super Ljava/lang/Object;
.source "SupervisionRecoveryInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/supervision/SupervisionRecoveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/supervision/SupervisionRecoveryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/supervision/SupervisionRecoveryInfo;
    .registers 6

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 70
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 71
    new-instance v3, Landroid/app/supervision/SupervisionRecoveryInfo;

    invoke-direct {v3, v0, v1, p1, v2}, Landroid/app/supervision/SupervisionRecoveryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    return-object v3

    .line 74
    :cond_23
    const/4 p1, 0x0

    return-object p1
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

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/supervision/SupervisionRecoveryInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/supervision/SupervisionRecoveryInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/supervision/SupervisionRecoveryInfo;
    .registers 2

    .line 79
    new-array p1, p1, [Landroid/app/supervision/SupervisionRecoveryInfo;

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

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/supervision/SupervisionRecoveryInfo$1;->newArray(I)[Landroid/app/supervision/SupervisionRecoveryInfo;

    move-result-object p1

    return-object p1
.end method
