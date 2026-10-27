.class Landroid/graphics/text/LineBreakConfig$1;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/text/LineBreakConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/text/LineBreakConfig;
    .registers 5

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 646
    new-instance v2, Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v2, v0, v1, p1}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    return-object v2
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

    .line 639
    invoke-virtual {p0, p1}, Landroid/graphics/text/LineBreakConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/text/LineBreakConfig;
    .registers 2

    .line 651
    new-array p1, p1, [Landroid/graphics/text/LineBreakConfig;

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

    .line 639
    invoke-virtual {p0, p1}, Landroid/graphics/text/LineBreakConfig$1;->newArray(I)[Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    return-object p1
.end method
