.class Landroid/app/timezonedetector/TelephonySignal$1;
.super Ljava/lang/Object;
.source "TelephonySignal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/TelephonySignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timezonedetector/TelephonySignal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonySignal;
    .registers 8

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 179
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 180
    const-class v0, Landroid/app/timezonedetector/NitzSignal;

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v5, Landroid/app/timezonedetector/NitzSignal;

    invoke-virtual {p1, v0, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/timezonedetector/NitzSignal;

    .line 182
    new-instance v0, Landroid/app/timezonedetector/TelephonySignal;

    invoke-direct/range {v0 .. v5}, Landroid/app/timezonedetector/TelephonySignal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/app/timezonedetector/NitzSignal;)V

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/timezonedetector/TelephonySignal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonySignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/timezonedetector/TelephonySignal;
    .registers 2

    .line 188
    new-array p1, p1, [Landroid/app/timezonedetector/TelephonySignal;

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

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/timezonedetector/TelephonySignal$1;->newArray(I)[Landroid/app/timezonedetector/TelephonySignal;

    move-result-object p1

    return-object p1
.end method
