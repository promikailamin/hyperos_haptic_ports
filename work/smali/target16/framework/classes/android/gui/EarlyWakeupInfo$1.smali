.class Landroid/gui/EarlyWakeupInfo$1;
.super Ljava/lang/Object;
.source "EarlyWakeupInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gui/EarlyWakeupInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gui/EarlyWakeupInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/gui/EarlyWakeupInfo;
    .registers 3

    .line 19
    new-instance v0, Landroid/gui/EarlyWakeupInfo;

    invoke-direct {v0}, Landroid/gui/EarlyWakeupInfo;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Landroid/gui/EarlyWakeupInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
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

    .line 16
    invoke-virtual {p0, p1}, Landroid/gui/EarlyWakeupInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gui/EarlyWakeupInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/gui/EarlyWakeupInfo;
    .registers 2

    .line 25
    new-array p1, p1, [Landroid/gui/EarlyWakeupInfo;

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

    .line 16
    invoke-virtual {p0, p1}, Landroid/gui/EarlyWakeupInfo$1;->newArray(I)[Landroid/gui/EarlyWakeupInfo;

    move-result-object p1

    return-object p1
.end method
