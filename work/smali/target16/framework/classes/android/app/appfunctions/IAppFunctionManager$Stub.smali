.class public abstract Landroid/app/appfunctions/IAppFunctionManager$Stub;
.super Landroid/os/Binder;
.source "IAppFunctionManager.java"

# interfaces
.implements Landroid/app/appfunctions/IAppFunctionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/IAppFunctionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearAccessHistory:I = 0xa

.field static final blacklist TRANSACTION_createRequestAccessIntent:I = 0xb

.field static final blacklist TRANSACTION_executeAppFunction:I = 0x1

.field static final blacklist TRANSACTION_getAccessFlags:I = 0x4

.field static final blacklist TRANSACTION_getAccessRequestState:I = 0x3

.field static final blacklist TRANSACTION_getAgentAllowlist:I = 0x9

.field static final blacklist TRANSACTION_getValidAgents:I = 0x7

.field static final blacklist TRANSACTION_getValidTargets:I = 0x8

.field static final blacklist TRANSACTION_revokeSelfAccess:I = 0x6

.field static final blacklist TRANSACTION_setAppFunctionEnabled:I = 0x2

.field static final blacklist TRANSACTION_updateAccessFlags:I = 0x5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    nop

    .line 90
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 91
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    if-eqz p1, :cond_d

    .line 84
    iput-object p1, p0, Landroid/app/appfunctions/IAppFunctionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 85
    return-void

    .line 82
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionManager;
    .registers 3

    .line 98
    if-nez p0, :cond_4

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_4
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/appfunctions/IAppFunctionManager;

    if-eqz v1, :cond_13

    .line 103
    check-cast v0, Landroid/app/appfunctions/IAppFunctionManager;

    return-object v0

    .line 105
    :cond_13
    new-instance v0, Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 114
    packed-switch p0, :pswitch_data_2a

    .line 162
    const/4 p0, 0x0

    return-object p0

    .line 158
    :pswitch_5
    const-string p0, "createRequestAccessIntent"

    return-object p0

    .line 154
    :pswitch_8
    const-string p0, "clearAccessHistory"

    return-object p0

    .line 150
    :pswitch_b
    const-string p0, "getAgentAllowlist"

    return-object p0

    .line 146
    :pswitch_e
    const-string p0, "getValidTargets"

    return-object p0

    .line 142
    :pswitch_11
    const-string p0, "getValidAgents"

    return-object p0

    .line 138
    :pswitch_14
    const-string/jumbo p0, "revokeSelfAccess"

    return-object p0

    .line 134
    :pswitch_18
    const-string/jumbo p0, "updateAccessFlags"

    return-object p0

    .line 130
    :pswitch_1c
    const-string p0, "getAccessFlags"

    return-object p0

    .line 126
    :pswitch_1f
    const-string p0, "getAccessRequestState"

    return-object p0

    .line 122
    :pswitch_22
    const-string/jumbo p0, "setAppFunctionEnabled"

    return-object p0

    .line 118
    :pswitch_26
    const-string p0, "executeAppFunction"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
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

    .line 109
    return-object p0
.end method

.method protected blacklist clearAccessHistory_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Landroid/app/appfunctions/IAppFunctionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_FUNCTION_ACCESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 570
    return-void
.end method

.method protected blacklist getAgentAllowlist_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/app/appfunctions/IAppFunctionManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_APP_FUNCTION_ACCESS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 565
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 575
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 169
    invoke-static {p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    nop

    .line 174
    const-string v0, "android.app.appfunctions.IAppFunctionManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return v1

    .line 181
    :cond_17
    packed-switch p1, :pswitch_data_132

    .line 321
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 312
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->createRequestAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 317
    goto/16 :goto_130

    .line 303
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->clearAccessHistory(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_130

    .line 295
    :pswitch_42
    invoke-virtual {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getAgentAllowlist()Ljava/util/List;

    move-result-object p1

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 298
    goto/16 :goto_130

    .line 286
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getValidTargets(I)Ljava/util/List;

    move-result-object p1

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 291
    goto/16 :goto_130

    .line 276
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getValidAgents(I)Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 281
    goto/16 :goto_130

    .line 267
    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->revokeSelfAccess(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_130

    .line 247
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z

    move-result p1

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto/16 :goto_130

    .line 231
    :pswitch_ab
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getAccessFlags(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    goto :goto_130

    .line 215
    :pswitch_ca
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, p1, p4, v0, v3}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->getAccessRequestState(Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    goto :goto_130

    .line 198
    :pswitch_e9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 202
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/UserHandle;

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/appfunctions/IAppFunctionEnabledCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    move-result-object v7

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual/range {v2 .. v7}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_130

    .line 186
    :pswitch_111
    move-object v2, p0

    sget-object p1, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/appfunctions/IExecuteAppFunctionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/appfunctions/IExecuteAppFunctionCallback;

    move-result-object p4

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1, p4}, Landroid/app/appfunctions/IAppFunctionManager$Stub;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 193
    nop

    .line 324
    :goto_130
    return v1

    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_111
        :pswitch_e9
        :pswitch_ca
        :pswitch_ab
        :pswitch_83
        :pswitch_74
        :pswitch_61
        :pswitch_4e
        :pswitch_42
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method
