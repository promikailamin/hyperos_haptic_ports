.class Landroid/location/LocationPolicy$1;
.super Ljava/lang/Object;
.source "LocationPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/LocationPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationPolicy;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    new-instance v0, Landroid/location/LocationPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/location/LocationPolicy;-><init>(Landroid/os/Parcel;Landroid/location/LocationPolicy-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Landroid/location/LocationPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/LocationPolicy;
    .registers 3
    .param p1, "size"    # I

    .line 175
    new-array v0, p1, [Landroid/location/LocationPolicy;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Landroid/location/LocationPolicy$1;->newArray(I)[Landroid/location/LocationPolicy;

    move-result-object p1

    return-object p1
.end method
