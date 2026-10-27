.class Landroid/gui/BoxShadowSettings$BoxShadowParams$1;
.super Ljava/lang/Object;
.source "BoxShadowSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gui/BoxShadowSettings$BoxShadowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/gui/BoxShadowSettings$BoxShadowParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/gui/BoxShadowSettings$BoxShadowParams;
    .registers 3

    .line 82
    new-instance v0, Landroid/gui/BoxShadowSettings$BoxShadowParams;

    invoke-direct {v0}, Landroid/gui/BoxShadowSettings$BoxShadowParams;-><init>()V

    .line 83
    invoke-virtual {v0, p1}, Landroid/gui/BoxShadowSettings$BoxShadowParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
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

    .line 79
    invoke-virtual {p0, p1}, Landroid/gui/BoxShadowSettings$BoxShadowParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/gui/BoxShadowSettings$BoxShadowParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/gui/BoxShadowSettings$BoxShadowParams;
    .registers 2

    .line 88
    new-array p1, p1, [Landroid/gui/BoxShadowSettings$BoxShadowParams;

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

    .line 79
    invoke-virtual {p0, p1}, Landroid/gui/BoxShadowSettings$BoxShadowParams$1;->newArray(I)[Landroid/gui/BoxShadowSettings$BoxShadowParams;

    move-result-object p1

    return-object p1
.end method
