.class public abstract Landroid/hardware/location/IContextHubService$Stub;
.super Landroid/os/Binder;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubService"

.field static final greylist-max-o TRANSACTION_createClient:I = 0x9

.field static final blacklist TRANSACTION_createPendingIntentClient:I = 0xa

.field static final greylist-max-o TRANSACTION_disableNanoApp:I = 0x10

.field static final greylist-max-o TRANSACTION_enableNanoApp:I = 0xf

.field static final blacklist TRANSACTION_findEndpoints:I = 0x14

.field static final blacklist TRANSACTION_findEndpointsWithService:I = 0x15

.field static final greylist-max-o TRANSACTION_findNanoAppOnHub:I = 0x7

.field static final greylist-max-o TRANSACTION_getContextHubHandles:I = 0x2

.field static final greylist-max-o TRANSACTION_getContextHubInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getContextHubs:I = 0xb

.field static final blacklist TRANSACTION_getHubs:I = 0xc

.field static final greylist-max-o TRANSACTION_getNanoAppInstanceInfo:I = 0x6

.field static final blacklist TRANSACTION_getPreloadedNanoAppIds:I = 0x12

.field static final greylist-max-o TRANSACTION_loadNanoApp:I = 0x4

.field static final greylist-max-o TRANSACTION_loadNanoAppOnHub:I = 0xd

.field static final blacklist TRANSACTION_onDiscoveryCallbackFinished:I = 0x1a

.field static final greylist-max-o TRANSACTION_queryNanoApps:I = 0x11

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_registerEndpoint:I = 0x16

.field static final blacklist TRANSACTION_registerEndpointDiscoveryCallbackDescriptor:I = 0x18

.field static final blacklist TRANSACTION_registerEndpointDiscoveryCallbackId:I = 0x17

.field static final greylist-max-o TRANSACTION_sendMessage:I = 0x8

.field static final blacklist TRANSACTION_setTestMode:I = 0x13

.field static final greylist-max-o TRANSACTION_unloadNanoApp:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadNanoAppFromHub:I = 0xe

.field static final blacklist TRANSACTION_unregisterEndpointDiscoveryCallback:I = 0x19


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    nop

    .line 159
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 160
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 148
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 149
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 150
    if-eqz p1, :cond_d

    .line 153
    iput-object p1, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 154
    return-void

    .line 151
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;
    .registers 3

    .line 167
    if-nez p0, :cond_4

    .line 168
    const/4 p0, 0x0

    return-object p0

    .line 170
    :cond_4
    const-string v0, "android.hardware.location.IContextHubService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/location/IContextHubService;

    if-eqz v1, :cond_13

    .line 172
    check-cast v0, Landroid/hardware/location/IContextHubService;

    return-object v0

    .line 174
    :cond_13
    new-instance v0, Landroid/hardware/location/IContextHubService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/location/IContextHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 183
    packed-switch p0, :pswitch_data_54

    .line 291
    const/4 p0, 0x0

    return-object p0

    .line 287
    :pswitch_5
    const-string p0, "onDiscoveryCallbackFinished"

    return-object p0

    .line 283
    :pswitch_8
    const-string p0, "unregisterEndpointDiscoveryCallback"

    return-object p0

    .line 279
    :pswitch_b
    const-string p0, "registerEndpointDiscoveryCallbackDescriptor"

    return-object p0

    .line 275
    :pswitch_e
    const-string p0, "registerEndpointDiscoveryCallbackId"

    return-object p0

    .line 271
    :pswitch_11
    const-string p0, "registerEndpoint"

    return-object p0

    .line 267
    :pswitch_14
    const-string p0, "findEndpointsWithService"

    return-object p0

    .line 263
    :pswitch_17
    const-string p0, "findEndpoints"

    return-object p0

    .line 259
    :pswitch_1a
    const-string p0, "setTestMode"

    return-object p0

    .line 255
    :pswitch_1d
    const-string p0, "getPreloadedNanoAppIds"

    return-object p0

    .line 251
    :pswitch_20
    const-string p0, "queryNanoApps"

    return-object p0

    .line 247
    :pswitch_23
    const-string p0, "disableNanoApp"

    return-object p0

    .line 243
    :pswitch_26
    const-string p0, "enableNanoApp"

    return-object p0

    .line 239
    :pswitch_29
    const-string p0, "unloadNanoAppFromHub"

    return-object p0

    .line 235
    :pswitch_2c
    const-string p0, "loadNanoAppOnHub"

    return-object p0

    .line 231
    :pswitch_2f
    const-string p0, "getHubs"

    return-object p0

    .line 227
    :pswitch_32
    const-string p0, "getContextHubs"

    return-object p0

    .line 223
    :pswitch_35
    const-string p0, "createPendingIntentClient"

    return-object p0

    .line 219
    :pswitch_38
    const-string p0, "createClient"

    return-object p0

    .line 215
    :pswitch_3b
    const-string p0, "sendMessage"

    return-object p0

    .line 211
    :pswitch_3e
    const-string p0, "findNanoAppOnHub"

    return-object p0

    .line 207
    :pswitch_41
    const-string p0, "getNanoAppInstanceInfo"

    return-object p0

    .line 203
    :pswitch_44
    const-string p0, "unloadNanoApp"

    return-object p0

    .line 199
    :pswitch_47
    const-string p0, "loadNanoApp"

    return-object p0

    .line 195
    :pswitch_4a
    const-string p0, "getContextHubInfo"

    return-object p0

    .line 191
    :pswitch_4d
    const-string p0, "getContextHubHandles"

    return-object p0

    .line 187
    :pswitch_50
    const-string p0, "registerCallback"

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
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

    .line 178
    return-object p0
.end method

.method protected blacklist createClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1151
    return-void
.end method

.method protected blacklist createPendingIntentClient_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1156
    return-void
.end method

.method protected blacklist disableNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1186
    return-void
.end method

.method protected blacklist enableNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1180
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1181
    return-void
.end method

.method protected blacklist findEndpointsWithService_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1211
    return-void
.end method

.method protected blacklist findEndpoints_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1206
    return-void
.end method

.method protected blacklist findNanoAppOnHub_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1140
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1141
    return-void
.end method

.method protected blacklist getContextHubHandles_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1116
    return-void
.end method

.method protected blacklist getContextHubInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1121
    return-void
.end method

.method protected blacklist getContextHubs_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1161
    return-void
.end method

.method protected blacklist getHubs_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1166
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1240
    const/16 v0, 0x19

    return v0
.end method

.method protected blacklist getNanoAppInstanceInfo_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1136
    return-void
.end method

.method protected blacklist getPreloadedNanoAppIds_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1196
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 298
    invoke-static {p1}, Landroid/hardware/location/IContextHubService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist loadNanoAppOnHub_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1171
    return-void
.end method

.method protected blacklist loadNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1126
    return-void
.end method

.method protected blacklist onDiscoveryCallbackFinished_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1236
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    nop

    .line 303
    const-string v0, "android.hardware.location.IContextHubService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 304
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 307
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    return v1

    .line 310
    :cond_17
    packed-switch p1, :pswitch_data_27a

    .line 600
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 595
    :pswitch_20
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->onDiscoveryCallbackFinished()V

    .line 596
    goto/16 :goto_278

    .line 587
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object p1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto/16 :goto_278

    .line 576
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object p4

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackDescriptor(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_278

    .line 565
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object p1

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3, p1}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpointDiscoveryCallbackId(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    goto/16 :goto_278

    .line 549
    :pswitch_66
    sget-object p1, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpointCallback;

    move-result-object p4

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {p0, p1, p4, v0, v2}, Landroid/hardware/location/IContextHubService$Stub;->registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object p1

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 560
    goto/16 :goto_278

    .line 539
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 544
    goto/16 :goto_278

    .line 529
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->findEndpoints(J)Ljava/util/List;

    move-result-object p1

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 534
    goto/16 :goto_278

    .line 519
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->setTestMode(Z)Z

    move-result p1

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    goto/16 :goto_278

    .line 509
    :pswitch_c6
    sget-object p1, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/location/ContextHubInfo;

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J

    move-result-object p1

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 514
    goto/16 :goto_278

    .line 498
    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p4

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IContextHubService$Stub;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    goto/16 :goto_278

    .line 485
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p4

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {p0, p1, p4, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_278

    .line 472
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p4

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, p1, p4, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_278

    .line 459
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p4

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, p1, p4, v2, v3}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    goto/16 :goto_278

    .line 446
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object p4

    .line 450
    sget-object v0, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppBinary;

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    goto/16 :goto_278

    .line 438
    :pswitch_164
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getHubs()Ljava/util/List;

    move-result-object p1

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 441
    goto/16 :goto_278

    .line 431
    :pswitch_170
    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubs()Ljava/util/List;

    move-result-object p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 434
    goto/16 :goto_278

    .line 416
    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 418
    sget-object p1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/PendingIntent;

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/location/IContextHubService$Stub;->createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p1

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 427
    goto/16 :goto_278

    .line 400
    :pswitch_1a1
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/location/IContextHubClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object p4

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/hardware/location/IContextHubService$Stub;->createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object p1

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 411
    goto/16 :goto_278

    .line 386
    :pswitch_1c5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 390
    sget-object v0, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubMessage;

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    goto/16 :goto_278

    .line 374
    :pswitch_1e5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 376
    sget-object p4, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/location/NanoAppFilter;

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object p1

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 381
    goto/16 :goto_278

    .line 364
    :pswitch_201
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object p1

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    goto :goto_278

    .line 354
    :pswitch_214
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp(I)I

    move-result p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    goto :goto_278

    .line 342
    :pswitch_227
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 344
    sget-object p4, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/location/NanoApp;

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, p1, p4}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result p1

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    goto :goto_278

    .line 332
    :pswitch_242
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    goto :goto_278

    .line 324
    :pswitch_255
    move-object v2, p0

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles()[I

    move-result-object p1

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 327
    goto :goto_278

    .line 315
    :pswitch_261
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/location/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubCallback;

    move-result-object p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, p1}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I

    move-result p1

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    nop

    .line 603
    :goto_278
    return v1

    nop

    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_261
        :pswitch_255
        :pswitch_242
        :pswitch_227
        :pswitch_214
        :pswitch_201
        :pswitch_1e5
        :pswitch_1c5
        :pswitch_1a1
        :pswitch_17c
        :pswitch_170
        :pswitch_164
        :pswitch_145
        :pswitch_12a
        :pswitch_10f
        :pswitch_f4
        :pswitch_dd
        :pswitch_c6
        :pswitch_b3
        :pswitch_a0
        :pswitch_8d
        :pswitch_66
        :pswitch_4f
        :pswitch_38
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist queryNanoApps_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1191
    return-void
.end method

.method protected blacklist registerCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1110
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1111
    return-void
.end method

.method protected blacklist registerEndpointDiscoveryCallbackDescriptor_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1226
    return-void
.end method

.method protected blacklist registerEndpointDiscoveryCallbackId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1221
    return-void
.end method

.method protected blacklist registerEndpoint_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1216
    return-void
.end method

.method protected blacklist sendMessage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1146
    return-void
.end method

.method protected blacklist setTestMode_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1200
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1201
    return-void
.end method

.method protected blacklist unloadNanoAppFromHub_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1176
    return-void
.end method

.method protected blacklist unloadNanoApp_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1131
    return-void
.end method

.method protected blacklist unregisterEndpointDiscoveryCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Landroid/hardware/location/IContextHubService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/hardware/location/IContextHubService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1231
    return-void
.end method
