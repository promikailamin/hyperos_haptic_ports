.class public abstract Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;
.super Landroid/os/Binder;
.source "IShoulderKeyManager.java"

# interfaces
.implements Lmiui/hardware/shoulderkey/IShoulderKeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/shoulderkey/IShoulderKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getShoulderKeySwitchStatus:I = 0x3

.field static final blacklist TRANSACTION_injectTouchMotionEvent:I = 0x5

.field static final blacklist TRANSACTION_loadLiftKeyMap:I = 0x1

.field static final blacklist TRANSACTION_registerTouchMotionEventListener:I = 0x6

.field static final blacklist TRANSACTION_setInjectMotionEventStatus:I = 0x4

.field static final blacklist TRANSACTION_unloadLiftKeyMap:I = 0x2

.field static final blacklist TRANSACTION_unregisterTouchMotionEventListener:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "miui.hardware.shoulderkey.IShoulderKeyManager"

    invoke-virtual {p0, p0, v0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/hardware/shoulderkey/IShoulderKeyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "miui.hardware.shoulderkey.IShoulderKeyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
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

    .line 67
    const-string v0, "miui.hardware.shoulderkey.IShoulderKeyManager"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_d
    packed-switch p1, :pswitch_data_86

    .line 79
    packed-switch p1, :pswitch_data_8c

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 136
    :pswitch_1c
    invoke-virtual {p0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->unregisterTouchMotionEventListener()V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_84

    .line 128
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/shoulderkey/ITouchMotionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/shoulderkey/ITouchMotionEventListener;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Lmiui/hardware/shoulderkey/ITouchMotionEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->registerTouchMotionEventListener(Lmiui/hardware/shoulderkey/ITouchMotionEventListener;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_84

    .line 119
    .end local v2    # "_arg0":Lmiui/hardware/shoulderkey/ITouchMotionEventListener;
    :pswitch_35
    sget-object v2, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 120
    .local v2, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->injectTouchMotionEvent(Landroid/view/MotionEvent;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_84

    .line 110
    .end local v2    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 111
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->setInjectMotionEventStatus(Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_84

    .line 100
    .end local v2    # "_arg0":Z
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->getShoulderKeySwitchStatus(I)Z

    move-result v3

    .line 103
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 105
    goto :goto_84

    .line 93
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_67
    invoke-virtual {p0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->unloadLiftKeyMap()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_84

    .line 84
    :pswitch_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 85
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 86
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 87
    invoke-virtual {p0, v3}, Lmiui/hardware/shoulderkey/IShoulderKeyManager$Stub;->loadLiftKeyMap(Ljava/util/Map;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    nop

    .line 145
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    :goto_84
    return v1

    nop

    :pswitch_data_86
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_67
        :pswitch_55
        :pswitch_47
        :pswitch_35
        :pswitch_23
        :pswitch_1c
    .end packed-switch
.end method
