.class Landroid/media/RoutingChangeInfo$1;
.super Ljava/lang/Object;
.source "RoutingChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RoutingChangeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/RoutingChangeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/RoutingChangeInfo;
    .registers 4

    .line 142
    new-instance v0, Landroid/media/RoutingChangeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/RoutingChangeInfo;-><init>(Landroid/os/Parcel;Landroid/media/RoutingChangeInfo-IA;)V

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

    .line 139
    invoke-virtual {p0, p1}, Landroid/media/RoutingChangeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/RoutingChangeInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/RoutingChangeInfo;
    .registers 2

    .line 147
    new-array p1, p1, [Landroid/media/RoutingChangeInfo;

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

    .line 139
    invoke-virtual {p0, p1}, Landroid/media/RoutingChangeInfo$1;->newArray(I)[Landroid/media/RoutingChangeInfo;

    move-result-object p1

    return-object p1
.end method
