.class public abstract Landroid/app/IUiModeManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IUiModeManagerCallback.java"

# interfaces
.implements Landroid/app/IUiModeManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUiModeManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyContrastChanged:I = 0x1

.field static final blacklist TRANSACTION_notifyForceInvertOverrideStateChanged:I = 0x3

.field static final blacklist TRANSACTION_notifyForceInvertStateChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.app.IUiModeManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUiModeManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManagerCallback;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.app.IUiModeManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IUiModeManagerCallback;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/app/IUiModeManagerCallback;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/app/IUiModeManagerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IUiModeManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 66
    packed-switch p0, :pswitch_data_12

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 78
    :pswitch_5
    const-string/jumbo p0, "notifyForceInvertOverrideStateChanged"

    return-object p0

    .line 74
    :pswitch_9
    const-string/jumbo p0, "notifyForceInvertStateChanged"

    return-object p0

    .line 70
    :pswitch_d
    const-string/jumbo p0, "notifyContrastChanged"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 188
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 89
    invoke-static {p1}, Landroid/app/IUiModeManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    nop

    .line 94
    const-string v0, "android.app.IUiModeManagerCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 101
    :cond_17
    packed-switch p1, :pswitch_data_3a

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1f
    invoke-virtual {p0}, Landroid/app/IUiModeManagerCallback$Stub;->notifyForceInvertOverrideStateChanged()V

    .line 122
    goto :goto_39

    .line 114
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManagerCallback$Stub;->notifyForceInvertStateChanged(I)V

    .line 117
    goto :goto_39

    .line 106
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/IUiModeManagerCallback$Stub;->notifyContrastChanged(F)V

    .line 109
    nop

    .line 129
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
