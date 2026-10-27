.class public abstract Landroid/companion/datatransfer/continuity/IUniversalClipboardManager$Stub;
.super Landroid/os/Binder;
.source "IUniversalClipboardManager.java"

# interfaces
.implements Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/datatransfer/continuity/IUniversalClipboardManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.companion.datatransfer.continuity.IUniversalClipboardManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/datatransfer/continuity/IUniversalClipboardManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "android.companion.datatransfer.continuity.IUniversalClipboardManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Landroid/companion/datatransfer/continuity/IUniversalClipboardManager;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Landroid/companion/datatransfer/continuity/IUniversalClipboardManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/datatransfer/continuity/IUniversalClipboardManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 55
    nop

    .line 59
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 66
    invoke-static {p1}, Landroid/companion/datatransfer/continuity/IUniversalClipboardManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    nop

    .line 71
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_d

    .line 72
    const-string p1, "android.companion.datatransfer.continuity.IUniversalClipboardManager"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    const/4 p1, 0x1

    return p1

    .line 75
    :cond_d
    nop

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method
