.class Landroid/hardware/HardwareBuffer$1;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/HardwareBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/HardwareBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;
    .registers 6

    .line 536
    if-eqz p1, :cond_1b

    .line 539
    invoke-static {p1}, Landroid/hardware/HardwareBuffer;->-$$Nest$smnReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 540
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_13

    .line 541
    new-instance p1, Landroid/hardware/HardwareBuffer;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroid/hardware/HardwareBuffer;-><init>(JLandroid/hardware/HardwareBuffer-IA;)V

    return-object p1

    .line 543
    :cond_13
    new-instance p1, Landroid/os/BadParcelableException;

    const-string v0, "Failed to read hardware buffer"

    invoke-direct {p1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 537
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null passed to createFromParcel"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 534
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/HardwareBuffer;
    .registers 2

    .line 547
    new-array p1, p1, [Landroid/hardware/HardwareBuffer;

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

    .line 534
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->newArray(I)[Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method
