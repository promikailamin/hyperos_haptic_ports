.class Landroid/app/admin/ParcelableGranteeMap$1;
.super Ljava/lang/Object;
.source "ParcelableGranteeMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ParcelableGranteeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ParcelableGranteeMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ParcelableGranteeMap;
    .registers 8

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_23

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 62
    :cond_23
    new-instance p1, Landroid/app/admin/ParcelableGranteeMap;

    invoke-direct {p1, v0}, Landroid/app/admin/ParcelableGranteeMap;-><init>(Ljava/util/Map;)V

    return-object p1
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

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/admin/ParcelableGranteeMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ParcelableGranteeMap;
    .registers 2

    .line 67
    new-array p1, p1, [Landroid/app/admin/ParcelableGranteeMap;

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

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/admin/ParcelableGranteeMap$1;->newArray(I)[Landroid/app/admin/ParcelableGranteeMap;

    move-result-object p1

    return-object p1
.end method
