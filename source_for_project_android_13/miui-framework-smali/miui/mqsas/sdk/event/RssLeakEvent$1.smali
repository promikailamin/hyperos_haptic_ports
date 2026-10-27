.class Lmiui/mqsas/sdk/event/RssLeakEvent$1;
.super Ljava/lang/Object;
.source "RssLeakEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/event/RssLeakEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/mqsas/sdk/event/RssLeakEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/RssLeakEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/RssLeakEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/RssLeakEvent;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    new-instance v0, Lmiui/mqsas/sdk/event/RssLeakEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/mqsas/sdk/event/RssLeakEvent;-><init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/RssLeakEvent-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/RssLeakEvent$1;->newArray(I)[Lmiui/mqsas/sdk/event/RssLeakEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lmiui/mqsas/sdk/event/RssLeakEvent;
    .registers 3
    .param p1, "size"    # I

    .line 59
    new-array v0, p1, [Lmiui/mqsas/sdk/event/RssLeakEvent;

    return-object v0
.end method
