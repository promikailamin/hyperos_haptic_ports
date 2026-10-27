.class Landroid/app/timezonedetector/NitzSignal$1;
.super Ljava/lang/Object;
.source "NitzSignal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/NitzSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timezonedetector/NitzSignal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/NitzSignal;
    .registers 12

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    const-class v0, Ljava/lang/Integer;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 197
    const-class v0, Ljava/util/TimeZone;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v9, Ljava/util/TimeZone;

    invoke-virtual {p1, v0, v9}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/util/TimeZone;

    .line 199
    new-instance v0, Landroid/app/timezonedetector/NitzSignal;

    invoke-direct/range {v0 .. v9}, Landroid/app/timezonedetector/NitzSignal;-><init>(JJILjava/lang/Integer;JLjava/util/TimeZone;)V

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

    .line 188
    invoke-virtual {p0, p1}, Landroid/app/timezonedetector/NitzSignal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/NitzSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/timezonedetector/NitzSignal;
    .registers 2

    .line 210
    new-array p1, p1, [Landroid/app/timezonedetector/NitzSignal;

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

    .line 188
    invoke-virtual {p0, p1}, Landroid/app/timezonedetector/NitzSignal$1;->newArray(I)[Landroid/app/timezonedetector/NitzSignal;

    move-result-object p1

    return-object p1
.end method
