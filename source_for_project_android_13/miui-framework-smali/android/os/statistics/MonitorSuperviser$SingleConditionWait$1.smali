.class Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;
.super Ljava/lang/Object;
.source "MonitorSuperviser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 86
    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    .line 87
    .local v0, "object":Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    invoke-virtual {v0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->readFromParcel(Landroid/os/Parcel;)V

    .line 88
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
    .registers 3
    .param p1, "size"    # I

    .line 92
    new-array v0, p1, [Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;->newArray(I)[Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    move-result-object p1

    return-object p1
.end method
