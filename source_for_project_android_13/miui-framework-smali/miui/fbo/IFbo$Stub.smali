.class public abstract Lmiui/fbo/IFbo$Stub;
.super Landroid/os/Binder;
.source "IFbo.java"

# interfaces
.implements Lmiui/fbo/IFbo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/fbo/IFbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/fbo/IFbo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_EUA_CheckPinFileLba:I = 0x5

.field static final blacklist TRANSACTION_EUA_ReserveSpace:I = 0x4

.field static final blacklist TRANSACTION_FBO_isSupport:I = 0x1

.field static final blacklist TRANSACTION_FBO_stateCtl:I = 0x3

.field static final blacklist TRANSACTION_FBO_trigger:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "miui.fbo.IFbo"

    invoke-virtual {p0, p0, v0}, Lmiui/fbo/IFbo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/fbo/IFbo;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "miui.fbo.IFbo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/fbo/IFbo;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lmiui/fbo/IFbo;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lmiui/fbo/IFbo$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/fbo/IFbo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
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

    .line 64
    const-string v0, "miui.fbo.IFbo"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    :cond_d
    packed-switch p1, :pswitch_data_6e

    .line 76
    packed-switch p1, :pswitch_data_74

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 121
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/fbo/IFbo$Stub;->EUA_CheckPinFileLba()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    goto :goto_6d

    .line 110
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2, v3}, Lmiui/fbo/IFbo$Stub;->EUA_ReserveSpace(II)Z

    move-result v4

    .line 115
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    goto :goto_6d

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Lmiui/fbo/IFbo$Stub;->FBO_stateCtl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    goto :goto_6d

    .line 88
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 92
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2, v3, v4}, Lmiui/fbo/IFbo$Stub;->FBO_trigger(Ljava/lang/String;ZLjava/lang/String;)V

    .line 95
    goto :goto_6d

    .line 80
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_62
    invoke-virtual {p0}, Lmiui/fbo/IFbo$Stub;->FBO_isSupport()Z

    move-result v2

    .line 81
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 83
    nop

    .line 131
    .end local v2    # "_result":Z
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_62
        :pswitch_4f
        :pswitch_3d
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
