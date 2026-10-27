.class Lmiui/mqsas/StationInfo$1;
.super Ljava/lang/Object;
.source "StationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/StationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/mqsas/StationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lmiui/mqsas/StationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/StationInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/StationInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Lmiui/mqsas/StationInfo;

    invoke-direct {v0}, Lmiui/mqsas/StationInfo;-><init>()V

    .line 39
    .local v0, "_aidl_out":Lmiui/mqsas/StationInfo;
    invoke-virtual {v0, p1}, Lmiui/mqsas/StationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lmiui/mqsas/StationInfo$1;->newArray(I)[Lmiui/mqsas/StationInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lmiui/mqsas/StationInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 44
    new-array v0, p1, [Lmiui/mqsas/StationInfo;

    return-object v0
.end method
