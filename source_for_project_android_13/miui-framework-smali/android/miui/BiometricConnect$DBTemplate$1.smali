.class Landroid/miui/BiometricConnect$DBTemplate$1;
.super Ljava/lang/Object;
.source "BiometricConnect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/miui/BiometricConnect$DBTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/miui/BiometricConnect$DBTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/miui/BiometricConnect$DBTemplate;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 245
    new-instance v0, Landroid/miui/BiometricConnect$DBTemplate;

    invoke-direct {v0}, Landroid/miui/BiometricConnect$DBTemplate;-><init>()V

    .line 246
    .local v0, "r":Landroid/miui/BiometricConnect$DBTemplate;
    invoke-virtual {v0, p1}, Landroid/miui/BiometricConnect$DBTemplate;->readFromParcel(Landroid/os/Parcel;)V

    .line 247
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 240
    invoke-virtual {p0, p1}, Landroid/miui/BiometricConnect$DBTemplate$1;->createFromParcel(Landroid/os/Parcel;)Landroid/miui/BiometricConnect$DBTemplate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/miui/BiometricConnect$DBTemplate;
    .registers 3
    .param p1, "size"    # I

    .line 254
    new-array v0, p1, [Landroid/miui/BiometricConnect$DBTemplate;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 240
    invoke-virtual {p0, p1}, Landroid/miui/BiometricConnect$DBTemplate$1;->newArray(I)[Landroid/miui/BiometricConnect$DBTemplate;

    move-result-object p1

    return-object p1
.end method
