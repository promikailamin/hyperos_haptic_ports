.class public abstract Landroid/app/smartspace/ISmartspaceManager$Stub;
.super Landroid/os/Binder;
.source "ISmartspaceManager.java"

# interfaces
.implements Landroid/app/smartspace/ISmartspaceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/ISmartspaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSmartspaceSession:I = 0x1

.field static final blacklist TRANSACTION_destroySmartspaceSession:I = 0x6

.field static final blacklist TRANSACTION_notifySmartspaceEvent:I = 0x2

.field static final blacklist TRANSACTION_registerSmartspaceUpdates:I = 0x4

.field static final blacklist TRANSACTION_requestSmartspaceUpdate:I = 0x3

.field static final blacklist TRANSACTION_unregisterSmartspaceUpdates:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/smartspace/ISmartspaceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceManager;
    .registers 3

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/smartspace/ISmartspaceManager;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Landroid/app/smartspace/ISmartspaceManager;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/smartspace/ISmartspaceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 70
    packed-switch p0, :pswitch_data_1c

    .line 98
    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_5
    const-string p0, "destroySmartspaceSession"

    return-object p0

    .line 90
    :pswitch_8
    const-string/jumbo p0, "unregisterSmartspaceUpdates"

    return-object p0

    .line 86
    :pswitch_c
    const-string/jumbo p0, "registerSmartspaceUpdates"

    return-object p0

    .line 82
    :pswitch_10
    const-string/jumbo p0, "requestSmartspaceUpdate"

    return-object p0

    .line 78
    :pswitch_14
    const-string/jumbo p0, "notifySmartspaceEvent"

    return-object p0

    .line 74
    :pswitch_18
    const-string p0, "createSmartspaceSession"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 286
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 109
    nop

    .line 110
    const-string v0, "android.app.smartspace.ISmartspaceManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_17
    packed-switch p1, :pswitch_data_9e

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 172
    :pswitch_1f
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 175
    goto :goto_9d

    .line 162
    :pswitch_2e
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object p3

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, p1, p3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 167
    goto :goto_9d

    .line 152
    :pswitch_45
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/app/smartspace/ISmartspaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceCallback;

    move-result-object p3

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, p1, p3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 157
    goto :goto_9d

    .line 144
    :pswitch_5c
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 147
    goto :goto_9d

    .line 134
    :pswitch_6b
    sget-object p1, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceSessionId;

    .line 136
    sget-object p3, Landroid/app/smartspace/SmartspaceTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {p0, p1, p3}, Landroid/app/smartspace/ISmartspaceManager$Stub;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 139
    goto :goto_9d

    .line 122
    :pswitch_82
    sget-object p1, Landroid/app/smartspace/SmartspaceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceConfig;

    .line 124
    sget-object p3, Landroid/app/smartspace/SmartspaceSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/smartspace/SmartspaceSessionId;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, p1, p3, p4}, Landroid/app/smartspace/ISmartspaceManager$Stub;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 129
    nop

    .line 182
    :goto_9d
    return v1

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_82
        :pswitch_6b
        :pswitch_5c
        :pswitch_45
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
