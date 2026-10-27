.class Landroid/os/statistics/LooperCheckPoint$1;
.super Ljava/lang/Object;
.source "LooperCheckPoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperCheckPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/statistics/LooperOnce;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperOnce;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 18
    new-instance v0, Landroid/os/statistics/LooperOnce;

    invoke-direct {v0}, Landroid/os/statistics/LooperOnce;-><init>()V

    .line 19
    .local v0, "object":Landroid/os/statistics/LooperOnce;
    invoke-virtual {v0, p1}, Landroid/os/statistics/LooperOnce;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperCheckPoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperOnce;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/statistics/LooperOnce;
    .registers 3
    .param p1, "size"    # I

    .line 24
    new-array v0, p1, [Landroid/os/statistics/LooperOnce;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperCheckPoint$1;->newArray(I)[Landroid/os/statistics/LooperOnce;

    move-result-object p1

    return-object p1
.end method
