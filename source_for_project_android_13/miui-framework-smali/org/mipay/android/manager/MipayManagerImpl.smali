.class public Lorg/mipay/android/manager/MipayManagerImpl;
.super Ljava/lang/Object;
.source "MipayManagerImpl.java"

# interfaces
.implements Lorg/mipay/android/manager/IMipayManager;


# static fields
.field private static blacklist CODE_CONTAINS:I

.field private static blacklist CODE_GEN_KEY_PAIR:I

.field private static blacklist CODE_GET_FP_IDS:I

.field private static blacklist CODE_RM_ALL_KEY:I

.field private static blacklist CODE_SIGN:I

.field private static blacklist CODE_SIGN_INIT:I

.field private static blacklist CODE_SIGN_UPDATE:I

.field private static blacklist DEBUG:Z

.field private static volatile blacklist INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

.field private static blacklist INTERFACE_DESCRIPTOR:Ljava/lang/String;

.field private static blacklist MIPAY_TYPE_FINGER:I

.field private static blacklist MIPAY_TYPE_IRIS:I

.field private static blacklist MIPAY_VERISON_1:I

.field private static blacklist SERVICE_NAME:Ljava/lang/String;

.field private static blacklist TAG:Ljava/lang/String;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static blacklist mPackName:Ljava/lang/String;

.field private static blacklist mService:Landroid/os/IBinder;

.field private static blacklist mTidaActName:Ljava/lang/String;

.field private static blacklist mTidaInterfaceDesc:Ljava/lang/String;

.field private static blacklist mipayconn:Landroid/content/ServiceConnection;


# instance fields
.field private blacklist mHwService:Landroid/os/IHwBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmPackName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmService()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmTidaActName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmipayconn()Landroid/content/ServiceConnection;
    .registers 1

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmService(Landroid/os/IBinder;)V
    .registers 1

    sput-object p0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smbindTidaService()V
    .registers 0

    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 29
    const-string v0, "MipayManagerImpl"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    .line 31
    const/4 v0, 0x1

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    .line 32
    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    .line 33
    const/4 v1, 0x2

    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_IRIS:I

    .line 34
    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    .line 35
    sput v1, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    .line 36
    const/4 v0, 0x3

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    .line 37
    const/4 v0, 0x4

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    .line 38
    const/4 v0, 0x5

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    .line 39
    const/4 v0, 0x6

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    .line 40
    const/4 v0, 0x7

    sput v0, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    .line 41
    const-string v0, "vendor.xiaomi.hardware.tidaservice@1.0::ITidaService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    .line 42
    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    .line 43
    const-string v0, "org.mipay.android.manager"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mPackName:Ljava/lang/String;

    .line 44
    const-string v0, "org.mipay.android.manager.MipayService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaActName:Ljava/lang/String;

    .line 45
    const-string v0, "org.mipay.android.manager.IMipayService"

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    .line 99
    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$2;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl$2;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 110
    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$3;

    invoke-direct {v0}, Lorg/mipay/android/manager/MipayManagerImpl$3;-><init>()V

    sput-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mipayconn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist bindTidaService()V
    .registers 2

    .line 58
    new-instance v0, Lorg/mipay/android/manager/MipayManagerImpl$1;

    const-string v1, "TidaThread"

    invoke-direct {v0, v1}, Lorg/mipay/android/manager/MipayManagerImpl$1;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "joinThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method

.method private static blacklist connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 9
    .param p0, "cmd_id"    # I
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 76
    const/16 v0, 0xa

    .line 77
    .local v0, "retry_count":I
    const/4 v1, -0x1

    .line 78
    .local v1, "ret":I
    :goto_3
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "retry_count":I
    .local v2, "retry_count":I
    if-lez v0, :cond_73

    .line 79
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 81
    :try_start_11
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->mService:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, p0, p1, p2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_19

    .line 82
    const/4 v1, 0x0

    .line 83
    goto :goto_73

    .line 84
    :catch_19
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectService transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_71

    .line 88
    :cond_33
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectService waiting mipayService, remain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-wide/16 v3, 0x1e

    :try_start_53
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_56} :catch_57

    .line 93
    :goto_56
    goto :goto_71

    .line 91
    :catch_57
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectService InterruptedException while waiting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_56

    .line 78
    :goto_71
    move v0, v2

    goto :goto_3

    .line 96
    :cond_73
    :goto_73
    return v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lorg/mipay/android/manager/IMipayManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    if-nez v0, :cond_22

    .line 134
    const-class v0, Lorg/mipay/android/manager/MipayManagerImpl;

    monitor-enter v0

    .line 135
    :try_start_7
    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    if-nez v1, :cond_1d

    .line 136
    new-instance v1, Lorg/mipay/android/manager/MipayManagerImpl;

    invoke-direct {v1}, Lorg/mipay/android/manager/MipayManagerImpl;-><init>()V

    sput-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1d

    .line 138
    sput-object p0, Lorg/mipay/android/manager/MipayManagerImpl;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {}, Lorg/mipay/android/manager/MipayManagerImpl;->bindTidaService()V

    .line 142
    :cond_1d
    monitor-exit v0

    goto :goto_22

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v1

    .line 144
    :cond_22
    :goto_22
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->INSTANCE:Lorg/mipay/android/manager/MipayManagerImpl;

    return-object v0
.end method

.method private blacklist initService()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-nez v0, :cond_e

    .line 53
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    iput-object v0, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    .line 55
    :cond_e
    return-void
.end method

.method private blacklist signUpdate(Ljava/lang/String;)I
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    .line 149
    .local v0, "res":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_42

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 151
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 152
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 153
    .local v3, "reply":Landroid/os/Parcel;
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 157
    if-eqz v0, :cond_34

    .line 158
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_41

    .line 162
    :cond_34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 163
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 167
    .end local v1    # "uid":I
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :goto_41
    goto :goto_90

    .line 168
    :cond_42
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 170
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_47
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 171
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_6e

    .line 172
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 173
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_UPDATE:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 176
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 177
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 178
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_6d} :catch_75
    .catchall {:try_start_47 .. :try_end_6d} :catchall_73

    move v0, v3

    .line 183
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    :cond_6e
    nop

    :goto_6f
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 184
    goto :goto_90

    .line 183
    :catchall_73
    move-exception v2

    goto :goto_ad

    .line 180
    :catch_75
    move-exception v2

    .line 181
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_76
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_73

    .line 183
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_6f

    .line 186
    .end local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_90
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_ac

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signUpdate, res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_ac
    return v0

    .line 183
    .restart local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_ad
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 184
    throw v2
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/String;)Z
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "res":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_42

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 208
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 209
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 210
    .local v3, "reply":Landroid/os/Parcel;
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v4

    .line 214
    .local v4, "ret":I
    if-eqz v4, :cond_34

    .line 215
    sget-object v5, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "MipayService not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 217
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_41

    .line 219
    :cond_34
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 220
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 221
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 224
    .end local v1    # "uid":I
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "ret":I
    :goto_41
    goto :goto_90

    .line 225
    :cond_42
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 227
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_47
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 228
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_6e

    .line 229
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 230
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_CONTAINS:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 233
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 234
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 235
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v3
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_6d} :catch_75
    .catchall {:try_start_47 .. :try_end_6d} :catchall_73

    move v0, v3

    .line 240
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    :cond_6e
    nop

    :goto_6f
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 241
    goto :goto_90

    .line 240
    :catchall_73
    move-exception v2

    goto :goto_b7

    .line 237
    :catch_75
    move-exception v2

    .line 238
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_76
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_73

    .line 240
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_6f

    .line 243
    .end local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_90
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_b6

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contains, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_b6
    return v0

    .line 240
    .restart local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_b7
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 241
    throw v2
.end method

.method public blacklist generateKeyPair(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;

    .line 249
    const/4 v0, -0x1

    .line 250
    .local v0, "res":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_45

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 252
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 253
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 254
    .local v3, "reply":Landroid/os/Parcel;
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 259
    if-eqz v0, :cond_37

    .line 260
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_44

    .line 264
    :cond_37
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 265
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 269
    .end local v1    # "uid":I
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :goto_44
    goto :goto_96

    .line 270
    :cond_45
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 272
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_4a
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 273
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_74

    .line 274
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 275
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GEN_KEY_PAIR:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 279
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 280
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 281
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_73} :catch_7b
    .catchall {:try_start_4a .. :try_end_73} :catchall_79

    move v0, v3

    .line 286
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    :cond_74
    nop

    :goto_75
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 287
    goto :goto_96

    .line 286
    :catchall_79
    move-exception v2

    goto :goto_c7

    .line 283
    :catch_7b
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7c
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_79

    .line 286
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_75

    .line 289
    .end local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_96
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_c6

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateKeyPair, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_c6
    return v0

    .line 286
    .restart local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_c7
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 287
    throw v2
.end method

.method public blacklist getFpIds()Ljava/lang/String;
    .registers 7

    .line 436
    const-string v0, ""

    .line 437
    .local v0, "fpIds":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_39

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 439
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 440
    .local v2, "reply":Landroid/os/Parcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    sget v3, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    invoke-static {v3, v1, v2}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    .line 442
    .local v3, "ret":I
    if-eqz v3, :cond_2b

    .line 443
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_38

    .line 447
    :cond_2b
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 448
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 452
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "ret":I
    :goto_38
    goto :goto_84

    .line 453
    :cond_39
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 455
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_3e
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 456
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_62

    .line 457
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 458
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_GET_FP_IDS:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 460
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 461
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 462
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_61} :catch_69
    .catchall {:try_start_3e .. :try_end_61} :catchall_67

    move-object v0, v3

    .line 467
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    :cond_62
    nop

    :goto_63
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 468
    goto :goto_84

    .line 467
    :catchall_67
    move-exception v2

    goto :goto_a1

    .line 464
    :catch_69
    move-exception v2

    .line 465
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6a
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_67

    .line 467
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_63

    .line 470
    .end local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_84
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a0

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFpIds, fpIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_a0
    return-object v0

    .line 467
    .restart local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_a1
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 468
    throw v2
.end method

.method public blacklist getSupportBIOTypes(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportBIOTypes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1e
    sget v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_TYPE_FINGER:I

    return v0
.end method

.method public blacklist getVersion()I
    .registers 4

    .line 192
    sget-boolean v0, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1e
    sget v0, Lorg/mipay/android/manager/MipayManagerImpl;->MIPAY_VERISON_1:I

    return v0
.end method

.method public blacklist removeAllKey()I
    .registers 7

    .line 394
    const/4 v0, -0x1

    .line 395
    .local v0, "res":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3f

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 397
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 398
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 399
    .local v3, "reply":Landroid/os/Parcel;
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 402
    if-eqz v0, :cond_31

    .line 403
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_3e

    .line 407
    :cond_31
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 408
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 412
    .end local v1    # "uid":I
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :goto_3e
    goto :goto_8a

    .line 413
    :cond_3f
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 415
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_44
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 416
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_68

    .line 417
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 418
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_RM_ALL_KEY:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 420
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 421
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 422
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_67} :catch_6f
    .catchall {:try_start_44 .. :try_end_67} :catchall_6d

    move v0, v3

    .line 427
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    :cond_68
    nop

    :goto_69
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 428
    goto :goto_8a

    .line 427
    :catchall_6d
    move-exception v2

    goto :goto_a7

    .line 424
    :catch_6f
    move-exception v2

    .line 425
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_70
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_6d

    .line 427
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_69

    .line 430
    .end local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_8a
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a6

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllKey, res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_a6
    return v0

    .line 427
    .restart local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_a7
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 428
    throw v2
.end method

.method public blacklist sign()[B
    .registers 8

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3a

    .line 348
    new-array v0, v1, [B

    .line 349
    .local v0, "res":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 350
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 351
    .local v2, "reply":Landroid/os/Parcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    sget v3, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    invoke-static {v3, v1, v2}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v3

    .line 353
    .local v3, "ret":I
    if-eqz v3, :cond_2c

    .line 354
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    .line 358
    :cond_2c
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 359
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 363
    :goto_39
    return-object v0

    .line 365
    .end local v0    # "res":[B
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    .end local v3    # "ret":I
    :cond_3a
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 367
    .local v0, "hidl_reply":Landroid/os/HwParcel;
    :try_start_3f
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 368
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_7e

    .line 369
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 370
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN:I

    invoke-interface {v3, v4, v2, v0, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 372
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 373
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 374
    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 375
    .local v1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 376
    .local v3, "n":I
    new-array v4, v3, [B

    .line 377
    .local v4, "array":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_68
    if-ge v5, v3, :cond_79

    .line 378
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_76} :catch_85
    .catchall {:try_start_3f .. :try_end_76} :catchall_83

    .line 377
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 380
    .end local v5    # "i":I
    :cond_79
    nop

    .line 385
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 380
    return-object v4

    .line 385
    .end local v1    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    .end local v3    # "n":I
    .end local v4    # "array":[B
    :cond_7e
    nop

    :goto_7f
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 386
    goto :goto_a0

    .line 385
    :catchall_83
    move-exception v1

    goto :goto_a9

    .line 382
    :catch_85
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_86
    sget-object v2, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_83

    .line 385
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_7f

    .line 388
    .end local v0    # "hidl_reply":Landroid/os/HwParcel;
    :goto_a0
    sget-object v0, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "sign fail, return null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 385
    .restart local v0    # "hidl_reply":Landroid/os/HwParcel;
    :goto_a9
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 386
    throw v1
.end method

.method public blacklist signInit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 295
    const/4 v0, -0x1

    .line 296
    .local v0, "res":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_45

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 298
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 299
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 300
    .local v3, "reply":Landroid/os/Parcel;
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->mTidaInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    invoke-static {v4, v2, v3}, Lorg/mipay/android/manager/MipayManagerImpl;->connectService(ILandroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 305
    if-eqz v0, :cond_37

    .line 306
    sget-object v4, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "MipayService not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 308
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_44

    .line 310
    :cond_37
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 311
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 315
    .end local v1    # "uid":I
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :goto_44
    goto :goto_96

    .line 316
    :cond_45
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 318
    .local v1, "hidl_reply":Landroid/os/HwParcel;
    :try_start_4a
    invoke-direct {p0}, Lorg/mipay/android/manager/MipayManagerImpl;->initService()V

    .line 319
    iget-object v2, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    if-eqz v2, :cond_74

    .line 320
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 321
    .local v2, "hidl_request":Landroid/os/HwParcel;
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lorg/mipay/android/manager/MipayManagerImpl;->mHwService:Landroid/os/IHwBinder;

    sget v4, Lorg/mipay/android/manager/MipayManagerImpl;->CODE_SIGN_INIT:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 325
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 326
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 327
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_73} :catch_7b
    .catchall {:try_start_4a .. :try_end_73} :catchall_79

    move v0, v3

    .line 332
    .end local v2    # "hidl_request":Landroid/os/HwParcel;
    :cond_74
    nop

    :goto_75
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 333
    goto :goto_96

    .line 332
    :catchall_79
    move-exception v2

    goto :goto_c7

    .line 329
    :catch_7b
    move-exception v2

    .line 330
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7c
    sget-object v3, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_79

    .line 332
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_75

    .line 335
    .end local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_96
    sget-boolean v1, Lorg/mipay/android/manager/MipayManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_c6

    sget-object v1, Lorg/mipay/android/manager/MipayManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signInit, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_c6
    return v0

    .line 332
    .restart local v1    # "hidl_reply":Landroid/os/HwParcel;
    :goto_c7
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 333
    throw v2
.end method

.method public blacklist signUpdate([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 341
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    .line 342
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/mipay/android/manager/MipayManagerImpl;->signUpdate(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
