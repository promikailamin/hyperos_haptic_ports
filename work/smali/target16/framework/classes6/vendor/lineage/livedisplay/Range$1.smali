.class Lvendor/lineage/livedisplay/Range$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/livedisplay/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/lineage/livedisplay/Range;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 17
    invoke-virtual {p0, p1}, Lvendor/lineage/livedisplay/Range$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/lineage/livedisplay/Range;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lvendor/lineage/livedisplay/Range;
    .registers 3

    .line 20
    new-instance v0, Lvendor/lineage/livedisplay/Range;

    invoke-direct {v0}, Lvendor/lineage/livedisplay/Range;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Lvendor/lineage/livedisplay/Range;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-object v0
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

    .line 17
    invoke-virtual {p0, p1}, Lvendor/lineage/livedisplay/Range$1;->newArray(I)[Lvendor/lineage/livedisplay/Range;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lvendor/lineage/livedisplay/Range;
    .registers 2

    .line 26
    new-array p1, p1, [Lvendor/lineage/livedisplay/Range;

    return-object p1
.end method
