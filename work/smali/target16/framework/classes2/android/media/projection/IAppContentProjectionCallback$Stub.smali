.class public abstract Landroid/media/projection/IAppContentProjectionCallback$Stub;
.super Landroid/os/Binder;
.source "IAppContentProjectionCallback.java"

# interfaces
.implements Landroid/media/projection/IAppContentProjectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IAppContentProjectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IAppContentProjectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_onContentRequest:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_onContentRequestCanceled:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_onLoopbackProjectionStarted:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_onSessionStopped:[Ljava/lang/String;

.field static final blacklist TRANSACTION_onContentRequest:I = 0x1

.field static final blacklist TRANSACTION_onContentRequestCanceled:I = 0x4

.field static final blacklist TRANSACTION_onLoopbackProjectionStarted:I = 0x2

.field static final blacklist TRANSACTION_onSessionStopped:I = 0x3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 272
    const-string v0, "android.permission.MANAGE_MEDIA_PROJECTION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onContentRequest:[Ljava/lang/String;

    .line 278
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onLoopbackProjectionStarted:[Ljava/lang/String;

    .line 284
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onSessionStopped:[Ljava/lang/String;

    .line 290
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onContentRequestCanceled:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    nop

    .line 76
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/projection/IAppContentProjectionCallback$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.media.projection.IAppContentProjectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    if-eqz p1, :cond_d

    .line 70
    iput-object p1, p0, Landroid/media/projection/IAppContentProjectionCallback$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 71
    return-void

    .line 68
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/projection/IAppContentProjectionCallback;
    .registers 3

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    const-string v0, "android.media.projection.IAppContentProjectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/projection/IAppContentProjectionCallback;

    if-eqz v1, :cond_13

    .line 89
    check-cast v0, Landroid/media/projection/IAppContentProjectionCallback;

    return-object v0

    .line 91
    :cond_13
    new-instance v0, Landroid/media/projection/IAppContentProjectionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/projection/IAppContentProjectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 100
    packed-switch p0, :pswitch_data_12

    .line 120
    const/4 p0, 0x0

    return-object p0

    .line 116
    :pswitch_5
    const-string p0, "onContentRequestCanceled"

    return-object p0

    .line 112
    :pswitch_8
    const-string p0, "onSessionStopped"

    return-object p0

    .line 108
    :pswitch_b
    const-string p0, "onLoopbackProjectionStarted"

    return-object p0

    .line 104
    :pswitch_e
    const-string p0, "onContentRequest"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 298
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 127
    invoke-static {p1}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onContentRequestCanceled_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/media/projection/IAppContentProjectionCallback$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onContentRequestCanceled:[Ljava/lang/String;

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 294
    return-void
.end method

.method protected blacklist onContentRequest_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroid/media/projection/IAppContentProjectionCallback$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onContentRequest:[Ljava/lang/String;

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 276
    return-void
.end method

.method protected blacklist onLoopbackProjectionStarted_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/media/projection/IAppContentProjectionCallback$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onLoopbackProjectionStarted:[Ljava/lang/String;

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 282
    return-void
.end method

.method protected blacklist onSessionStopped_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/media/projection/IAppContentProjectionCallback$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/projection/IAppContentProjectionCallback$Stub;->PERMISSIONS_onSessionStopped:[Ljava/lang/String;

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 288
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    nop

    .line 132
    const-string v0, "android.media.projection.IAppContentProjectionCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 139
    :cond_17
    packed-switch p1, :pswitch_data_52

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 170
    :pswitch_1f
    invoke-virtual {p0}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->onContentRequestCanceled()V

    .line 171
    goto :goto_51

    .line 165
    :pswitch_23
    invoke-virtual {p0}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->onSessionStopped()V

    .line 166
    goto :goto_51

    .line 156
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/projection/IAppContentProjectionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IAppContentProjectionSession;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, p1, p3}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->onLoopbackProjectionStarted(Landroid/media/projection/IAppContentProjectionSession;I)V

    .line 161
    goto :goto_51

    .line 144
    :pswitch_3a
    sget-object p1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p3, p4}, Landroid/media/projection/IAppContentProjectionCallback$Stub;->onContentRequest(Landroid/os/RemoteCallback;II)V

    .line 151
    nop

    .line 178
    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
