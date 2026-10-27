.class public abstract Lcom/android/server/companion/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static generateRandom128BitKey()[B
    .registers 2

    .line 76
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 77
    new-array v1, v1, [B

    .line 78
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3

    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method
