.class public abstract Lmiui/content/pm/IPreloadedAppManager$Stub;
.super Landroid/os/Binder;
.source "IPreloadedAppManager.java"

# interfaces
.implements Lmiui/content/pm/IPreloadedAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/IPreloadedAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/IPreloadedAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_reinstallPreloadedApp:I = 0x1

.field static final blacklist TRANSACTION_reinstallPreloadedApp2:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "miui.content.pm.IPreloadedAppManager"

    invoke-virtual {p0, p0, v0}, Lmiui/content/pm/IPreloadedAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPreloadedAppManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "miui.content.pm.IPreloadedAppManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/content/pm/IPreloadedAppManager;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lmiui/content/pm/IPreloadedAppManager;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lmiui/content/pm/IPreloadedAppManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/content/pm/IPreloadedAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "miui.content.pm.IPreloadedAppManager"

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 63
    packed-switch p1, :pswitch_data_58

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 59
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 81
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    .line 85
    .local v3, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 86
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v2, v3, v4}, Lmiui/content/pm/IPreloadedAppManager$Stub;->reinstallPreloadedApp2(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    goto :goto_50

    .line 68
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v4    # "_arg2":I
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    .line 72
    .restart local v3    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 73
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    invoke-virtual {p0, v2, v3, v4}, Lmiui/content/pm/IPreloadedAppManager$Stub;->reinstallPreloadedApp(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    nop

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v4    # "_arg2":I
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_36
        :pswitch_1c
    .end packed-switch
.end method
