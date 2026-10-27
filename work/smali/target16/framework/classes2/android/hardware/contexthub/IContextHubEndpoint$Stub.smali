.class public abstract Landroid/hardware/contexthub/IContextHubEndpoint$Stub;
.super Landroid/os/Binder;
.source "IContextHubEndpoint.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHubEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/IContextHubEndpoint$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSession:I = 0x3

.field static final blacklist TRANSACTION_getAssignedHubEndpointInfo:I = 0x1

.field static final blacklist TRANSACTION_onCallbackFinished:I = 0x8

.field static final blacklist TRANSACTION_openSession:I = 0x2

.field static final blacklist TRANSACTION_openSessionRequestComplete:I = 0x4

.field static final blacklist TRANSACTION_sendMessage:I = 0x6

.field static final blacklist TRANSACTION_sendMessageDeliveryStatus:I = 0x7

.field static final blacklist TRANSACTION_unregister:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    nop

    .line 110
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.hardware.contexthub.IContextHubEndpoint"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_d

    .line 104
    iput-object p1, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 105
    return-void

    .line 102
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .registers 3

    .line 118
    if-nez p0, :cond_4

    .line 119
    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_4
    const-string v0, "android.hardware.contexthub.IContextHubEndpoint"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/contexthub/IContextHubEndpoint;

    if-eqz v1, :cond_13

    .line 123
    check-cast v0, Landroid/hardware/contexthub/IContextHubEndpoint;

    return-object v0

    .line 125
    :cond_13
    new-instance v0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 134
    packed-switch p0, :pswitch_data_1e

    .line 170
    const/4 p0, 0x0

    return-object p0

    .line 166
    :pswitch_5
    const-string p0, "onCallbackFinished"

    return-object p0

    .line 162
    :pswitch_8
    const-string p0, "sendMessageDeliveryStatus"

    return-object p0

    .line 158
    :pswitch_b
    const-string p0, "sendMessage"

    return-object p0

    .line 154
    :pswitch_e
    const-string p0, "unregister"

    return-object p0

    .line 150
    :pswitch_11
    const-string p0, "openSessionRequestComplete"

    return-object p0

    .line 146
    :pswitch_14
    const-string p0, "closeSession"

    return-object p0

    .line 142
    :pswitch_17
    const-string p0, "openSession"

    return-object p0

    .line 138
    :pswitch_1a
    const-string p0, "getAssignedHubEndpointInfo"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 129
    return-object p0
.end method

.method protected blacklist closeSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 472
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 501
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 177
    invoke-static {p1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onCallbackFinished_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 497
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    nop

    .line 182
    const-string v0, "android.hardware.contexthub.IContextHubEndpoint"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 189
    :cond_17
    packed-switch p1, :pswitch_data_a6

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 264
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->onCallbackFinished()V

    .line 265
    goto/16 :goto_a4

    .line 252
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessageDeliveryStatus(IIB)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto :goto_a4

    .line 239
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    sget-object p4, Landroid/hardware/contexthub/HubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/contexthub/HubMessage;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v0

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_a4

    .line 232
    :pswitch_58
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->unregister()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_a4

    .line 224
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSessionRequestComplete(I)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_a4

    .line 213
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, p1, p4}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->closeSession(II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_a4

    .line 201
    :pswitch_7f
    sget-object p1, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, p1, p4}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_a4

    .line 193
    :pswitch_99
    invoke-virtual {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 196
    nop

    .line 272
    :goto_a4
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_99
        :pswitch_7f
        :pswitch_6d
        :pswitch_5f
        :pswitch_58
        :pswitch_3a
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method

.method protected blacklist openSessionRequestComplete_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 477
    return-void
.end method

.method protected blacklist openSession_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 467
    return-void
.end method

.method protected blacklist sendMessageDeliveryStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 492
    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 487
    return-void
.end method

.method protected blacklist unregister_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 482
    return-void
.end method
