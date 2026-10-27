.class public abstract Lmiui/fbo/IFboManager$Stub;
.super Landroid/os/Binder;
.source "IFboManager.java"

# interfaces
.implements Lmiui/fbo/IFboManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/fbo/IFboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/fbo/IFboManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_FBO_isSupport:I = 0x1

.field static final blacklist TRANSACTION_FBO_new_isSupport:I = 0x2

.field static final blacklist TRANSACTION_FBO_new_trigger:I = 0x4

.field static final blacklist TRANSACTION_FBO_notifyFragStatus:I = 0x5

.field static final blacklist TRANSACTION_FBO_trigger:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "miui.fbo.IFboManager"

    invoke-virtual {p0, p0, v0}, Lmiui/fbo/IFboManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/fbo/IFboManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "miui.fbo.IFboManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/fbo/IFboManager;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Lmiui/fbo/IFboManager;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Lmiui/fbo/IFboManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/fbo/IFboManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "miui.fbo.IFboManager"

    .line 63
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    :cond_d
    packed-switch p1, :pswitch_data_62

    .line 74
    packed-switch p1, :pswitch_data_68

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 115
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/fbo/IFboManager$Stub;->FBO_notifyFragStatus()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    goto :goto_60

    .line 105
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 108
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Lmiui/fbo/IFboManager$Stub;->FBO_new_trigger(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    goto :goto_60

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2}, Lmiui/fbo/IFboManager$Stub;->FBO_trigger(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    goto :goto_60

    .line 86
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, v2}, Lmiui/fbo/IFboManager$Stub;->FBO_new_isSupport(Ljava/lang/String;)Z

    move-result v3

    .line 89
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    goto :goto_60

    .line 78
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_55
    invoke-virtual {p0}, Lmiui/fbo/IFboManager$Stub;->FBO_isSupport()Z

    move-result v2

    .line 79
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 81
    nop

    .line 124
    .end local v2    # "_result":Z
    :goto_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_55
        :pswitch_43
        :pswitch_35
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
