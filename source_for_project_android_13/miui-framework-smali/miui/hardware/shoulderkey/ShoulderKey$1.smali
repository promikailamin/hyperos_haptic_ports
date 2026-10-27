.class Lmiui/hardware/shoulderkey/ShoulderKey$1;
.super Ljava/lang/Object;
.source "ShoulderKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/shoulderkey/ShoulderKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/hardware/shoulderkey/ShoulderKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lmiui/hardware/shoulderkey/ShoulderKey$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/hardware/shoulderkey/ShoulderKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lmiui/hardware/shoulderkey/ShoulderKey;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKey;

    invoke-direct {v0, p1}, Lmiui/hardware/shoulderkey/ShoulderKey;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lmiui/hardware/shoulderkey/ShoulderKey$1;->newArray(I)[Lmiui/hardware/shoulderkey/ShoulderKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lmiui/hardware/shoulderkey/ShoulderKey;
    .registers 3
    .param p1, "size"    # I

    .line 64
    new-array v0, p1, [Lmiui/hardware/shoulderkey/ShoulderKey;

    return-object v0
.end method
