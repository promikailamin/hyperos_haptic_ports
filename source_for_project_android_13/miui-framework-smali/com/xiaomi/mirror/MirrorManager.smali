.class public Lcom/xiaomi/mirror/MirrorManager;
.super Ljava/lang/Object;
.source "MirrorManager.java"

# interfaces
.implements Lcom/xiaomi/mirror/IMirrorManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/MirrorManager$DragStateListener;,
        Lcom/xiaomi/mirror/MirrorManager$DragListener;,
        Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;,
        Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;,
        Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;,
        Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;
    }
.end annotation


# static fields
.field public static final blacklist APP_SERVICE_NAME:Ljava/lang/String; = "miui.mirror_app_service"

.field private static volatile blacklist INSTANCE:Lcom/xiaomi/mirror/MirrorManager; = null

.field private static final blacklist LARK_CHAT_COMPONENT:Landroid/content/ComponentName;

.field public static final blacklist MIRROR_INPUT_STATE:Ljava/lang/String; = "mirror_input_state"

.field private static final blacklist MIWORK_CHAT_COMPONENT:Landroid/content/ComponentName;

.field private static final blacklist MOBILEQQ_CHAT_COMPONENT:Landroid/content/ComponentName;

.field public static final blacklist PROVIDER_AUTHORITY:Ljava/lang/String; = "com.xiaomi.mirror.remoteprovider"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "miui.mirror_service"

.field public static final blacklist SYNERGY_MODE:Ljava/lang/String; = "synergy_mode"

.field private static final blacklist TAG:Ljava/lang/String; = "MirrorManager"

.field private static final blacklist TRANSACT_REQUEST_DIMMING_RIGHT_NOW:I = 0xfffffe

.field public static final blacklist VIRTUAL_DEVICE_ID:I = -0x64

.field private static final blacklist WECHAT_CHAT_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final blacklist CODE_ACCEPT_INPUT_STATUS:I

.field private final blacklist CODE_INPUT_REMOTE:I

.field private final blacklist CODE_INPUT_TEXT:I

.field private final blacklist CODE_REGISTER_MONITER:I

.field private final blacklist CODE_REG_SF_SECURE_WINDOW:I

.field private final blacklist CODE_SECURE_WINDOW:I

.field private final blacklist CODE_SYNERGY_OPERATE:I

.field private final blacklist CODE_UNREGISTER_MONITER:I

.field private final blacklist CODE_UNREG_SF_SECURE_WINDOW:I

.field private blacklist SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

.field private blacklist SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

.field private blacklist SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

.field private blacklist SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;

.field private blacklist mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

.field private blacklist mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

.field private blacklist mBinder:Landroid/os/Binder;

.field private blacklist mCursorPositionChangedListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;

.field private final blacklist mCursorPositionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

.field private final blacklist mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

.field private volatile blacklist mDelegating:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mDragListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDragStateListener:Lcom/xiaomi/mirror/MirrorManager$DragStateListener;

.field private blacklist mIPowerManager:Landroid/os/IBinder;

.field private volatile blacklist mInMouseShareMode:Z

.field private blacklist mIsSupport:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

.field private blacklist mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

.field private blacklist mService:Lcom/xiaomi/mirror/IMirrorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mTrackingEvent:Landroid/view/MotionEvent;


# direct methods
.method public static synthetic blacklist $r8$lambda$_L6mn_j8ShVWyC-ojcWXrhbQPxU(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->appServiceLost()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetSERVICE_mBinder_DESCRIPTOR(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDelegate(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDelegating(Lcom/xiaomi/mirror/MirrorManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInMouseShareMode(Lcom/xiaomi/mirror/MirrorManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mInMouseShareMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdeliverCursorPositionChanged(Lcom/xiaomi/mirror/MirrorManager;IFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorManager;->deliverCursorPositionChanged(IFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdeliverDragFinish(Lcom/xiaomi/mirror/MirrorManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->deliverDragFinish(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdeliverDragStart(Lcom/xiaomi/mirror/MirrorManager;Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mirror/MirrorManager;->deliverDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcceptInput(Lcom/xiaomi/mirror/MirrorManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->sendAcceptInput(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSecureWin(Lcom/xiaomi/mirror/MirrorManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->sendSecureWin(II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    .line 905
    nop

    .line 906
    const-string v0, "com.tencent.mobileqq/.activity.SplashActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->MOBILEQQ_CHAT_COMPONENT:Landroid/content/ComponentName;

    .line 908
    nop

    .line 909
    const-string v0, "com.tencent.mm/.ui.LauncherUI"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->WECHAT_CHAT_COMPONENT:Landroid/content/ComponentName;

    .line 911
    nop

    .line 912
    const-string v0, "com.ss.android.lark.kami/com.ss.android.lark.chatwindow.ChatWindowActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->MIWORK_CHAT_COMPONENT:Landroid/content/ComponentName;

    .line 914
    nop

    .line 915
    const-string v0, "com.ss.android.lark/.chatwindow.ChatWindowActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mirror/MirrorManager;->LARK_CHAT_COMPONENT:Landroid/content/ComponentName;

    .line 914
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda3;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIsSupport:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    .line 59
    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    .line 60
    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    .line 399
    const v0, 0xfffffe

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_INPUT_TEXT:I

    .line 400
    const v0, 0xfffffd

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_REGISTER_MONITER:I

    .line 401
    const v0, 0xfffffc

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_UNREGISTER_MONITER:I

    .line 402
    const v0, 0xfffffb

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_SYNERGY_OPERATE:I

    .line 403
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_ACCEPT_INPUT_STATUS:I

    .line 404
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_SECURE_WINDOW:I

    .line 405
    const-string v0, "com.android.internal.view.IInputMethodManager"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    .line 406
    const-string v0, "com.android.synergy.Callback"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_mBinder_DESCRIPTOR:Ljava/lang/String;

    .line 407
    const/16 v0, 0x79e0

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_REG_SF_SECURE_WINDOW:I

    .line 408
    const/16 v0, 0x79e1

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_UNREG_SF_SECURE_WINDOW:I

    .line 409
    const-string v0, "SurfaceFlinger"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

    .line 410
    const-string v0, "android.ui.ISurfaceComposer"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

    .line 411
    const v0, 0xfffffa

    iput v0, p0, Lcom/xiaomi/mirror/MirrorManager;->CODE_INPUT_REMOTE:I

    .line 413
    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/MirrorManager$1;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mBinder:Landroid/os/Binder;

    .line 577
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    .line 578
    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/MirrorManager$2;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->initService()V

    .line 96
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->isSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIsSupport:Z

    .line 97
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIPowerManager:Landroid/os/IBinder;

    .line 98
    return-void
.end method

.method private blacklist appServiceLost()V
    .registers 2

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    .line 379
    return-void
.end method

.method private blacklist binderRegAcceptInput()V
    .registers 6

    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, "service":Landroid/os/IBinder;
    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 460
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mBinder:Landroid/os/Binder;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 462
    const v3, 0xfffffd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 463
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 465
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 468
    .end local v1    # "request":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    goto :goto_48

    .line 466
    :catch_2b
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_REGISTER_MONITER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_48
    return-void
.end method

.method private blacklist binderRegSecureWin()V
    .registers 6

    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, "service":Landroid/os/IBinder;
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 493
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 494
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mBinder:Landroid/os/Binder;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 496
    const/16 v3, 0x79e0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 497
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2a

    .line 502
    .end local v1    # "request":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    goto :goto_47

    .line 500
    :catch_2a
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_REG_SF_SECURE_WINDOW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method private blacklist binderSendChineseText(Ljava/lang/String;)V
    .registers 7
    .param p1, "chineseText"    # Ljava/lang/String;

    .line 438
    const/4 v0, 0x0

    .line 440
    .local v0, "service":Landroid/os/IBinder;
    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 442
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 443
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 446
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    .line 451
    .end local v1    # "request":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    goto :goto_46

    .line 449
    :catch_29
    move-exception v1

    .line 450
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_INPUT_TEXT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private blacklist binderSendSynergyOperate(I)V
    .registers 7
    .param p1, "status"    # I

    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, "service":Landroid/os/IBinder;
    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 476
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 477
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const v3, 0xfffffb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 480
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29

    .line 485
    .end local v1    # "request":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    goto :goto_46

    .line 483
    :catch_29
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_SYNERGY_OPERATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private blacklist binderSetDisplayIDForInputMethod(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 522
    const-string v0, "MirrorManager"

    const/4 v1, 0x0

    .line 524
    .local v1, "service":Landroid/os/IBinder;
    :try_start_3
    const-string v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    move-object v1, v2

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 526
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 527
    .local v3, "reply":Landroid/os/Parcel;
    iget-object v4, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    const v4, 0xfffffa

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 530
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 531
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 533
    const-string v4, "try to call IMMS:CODE_INPUT_REMOTE"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_31

    .line 536
    nop

    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    goto :goto_4c

    .line 534
    :catch_31
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CODE_INPUT_REMOTE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method private blacklist binderUnregAcceptInput()V
    .registers 6

    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "service":Landroid/os/IBinder;
    :try_start_1
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 510
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 511
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_IInputMethodManager_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    const v3, 0xfffffc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 513
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    .line 518
    .end local v1    # "request":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    goto :goto_43

    .line 516
    :catch_26
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_UNREGISTER_MONITER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method private blacklist deliverCursorPositionChanged(IFF)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1048
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    monitor-enter v0

    .line 1049
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda2;-><init>(IFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1058
    monitor-exit v0

    .line 1059
    return-void

    .line 1058
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist deliverDragFinish(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dragResult"    # Z

    .line 1217
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    monitor-enter v0

    .line 1218
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    new-instance v2, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1226
    monitor-exit v0

    .line 1227
    return-void

    .line 1226
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist deliverDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V
    .registers 15
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "flag"    # I
    .param p5, "shadowImage"    # Landroid/graphics/Bitmap;

    .line 1201
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    monitor-enter v0

    .line 1202
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    new-instance v8, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p5

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/mirror/MirrorManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/ClipData;Landroid/graphics/Bitmap;III)V

    invoke-interface {v1, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1213
    monitor-exit v0

    .line 1214
    return-void

    .line 1213
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist findCursorPositionListenerLocked(Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;

    .line 1039
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 1040
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;

    iget-object v2, v2, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;

    if-ne v2, p1, :cond_16

    .line 1041
    return v0

    .line 1039
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1044
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findDragListenerLocked(Lcom/xiaomi/mirror/MirrorManager$DragListener;)I
    .registers 5
    .param p1, "listener"    # Lcom/xiaomi/mirror/MirrorManager$DragListener;

    .line 1192
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_19

    .line 1193
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    iget-object v2, v2, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$DragListener;

    if-ne v2, p1, :cond_16

    .line 1194
    return v0

    .line 1192
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1197
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findSendViewAndClick(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stringId"    # Ljava/lang/String;

    .line 950
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 951
    .local v0, "id":I
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 952
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 953
    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    .line 954
    const/4 v2, 0x1

    return v2

    .line 956
    :cond_1f
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist get()Lcom/xiaomi/mirror/MirrorManager;
    .registers 2

    .line 75
    sget-object v0, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    if-nez v0, :cond_17

    .line 76
    const-class v0, Lcom/xiaomi/mirror/MirrorManager;

    monitor-enter v0

    .line 77
    :try_start_7
    sget-object v1, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    if-nez v1, :cond_12

    .line 78
    new-instance v1, Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {v1}, Lcom/xiaomi/mirror/MirrorManager;-><init>()V

    sput-object v1, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    .line 80
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 82
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/mirror/MirrorManager;->INSTANCE:Lcom/xiaomi/mirror/MirrorManager;

    return-object v0
.end method

.method public static blacklist get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAppService()Lcom/xiaomi/mirror/IMirrorAppService;
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    if-nez v0, :cond_28

    .line 106
    const-string v0, "miui.mirror_app_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_28

    .line 108
    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorAppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    .line 110
    :try_start_12
    invoke-interface {v1}, Lcom/xiaomi/mirror/IMirrorAppService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d

    .line 114
    goto :goto_28

    .line 111
    :catch_1d
    move-exception v1

    .line 112
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MirrorManager"

    const-string v3, "getAppService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    .line 118
    .end local v0    # "service":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAppService:Lcom/xiaomi/mirror/IMirrorAppService;

    return-object v0
.end method

.method private blacklist isMirrorDevice(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .line 371
    const/16 v0, -0x64

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isSupport()Z
    .registers 6

    .line 245
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 247
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "com.xiaomi.mirror"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 248
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_17

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    move v1, v4

    :cond_16
    return v1

    .line 249
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_17
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MirrorManager"

    const-string v4, "this model don\'t Support"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method static synthetic blacklist lambda$deliverCursorPositionChanged$0(IFFLcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;)V
    .registers 6
    .param p0, "deviceId"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cursorPositionListenerDelegate"    # Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;

    .line 1050
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1051
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput p0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1052
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1053
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1054
    nop

    .line 1055
    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1056
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p3, v1}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1057
    return-void
.end method

.method static synthetic blacklist lambda$deliverDragFinish$2(Ljava/lang/String;ZLcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "dragResult"    # Z
    .param p2, "dragListenerDelegate"    # Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    .line 1219
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1220
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object p0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1222
    nop

    .line 1223
    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1224
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p2, v1}, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1225
    return-void
.end method

.method static synthetic blacklist lambda$deliverDragStart$1(Landroid/content/ClipData;Landroid/graphics/Bitmap;IIILcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;)V
    .registers 8
    .param p0, "data"    # Landroid/content/ClipData;
    .param p1, "shadowImage"    # Landroid/graphics/Bitmap;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "flag"    # I
    .param p5, "dragListenerDelegate"    # Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    .line 1203
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1204
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object p0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1205
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1206
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1207
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1208
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1209
    nop

    .line 1210
    const/4 v1, 0x1

    invoke-virtual {p5, v1, v0}, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1211
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p5, v1}, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1212
    return-void
.end method

.method private blacklist populateCursorPositionListenerLocked()V
    .registers 4

    .line 988
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionChangedListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;

    if-eqz v0, :cond_5

    .line 989
    return-void

    .line 991
    :cond_5
    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;-><init>(Lcom/xiaomi/mirror/MirrorManager;Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener-IA;)V

    .line 993
    .local v0, "listener":Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;
    :try_start_b
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v1, v0}, Lcom/xiaomi/mirror/IMirrorService;->registerCursorPositionChangedListener(Lcom/xiaomi/mirror/ICursorPositionChangedListener;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_1b

    .line 996
    nop

    .line 997
    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionChangedListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;

    .line 998
    const-string v1, "MirrorManager"

    const-string v2, "a cursor position listener register to service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void

    .line 994
    :catch_1b
    move-exception v1

    .line 995
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist populateDragListenerLocked()V
    .registers 4

    .line 1148
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragStateListener:Lcom/xiaomi/mirror/MirrorManager$DragStateListener;

    if-eqz v0, :cond_5

    .line 1149
    return-void

    .line 1151
    :cond_5
    new-instance v0, Lcom/xiaomi/mirror/MirrorManager$DragStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mirror/MirrorManager$DragStateListener;-><init>(Lcom/xiaomi/mirror/MirrorManager;Lcom/xiaomi/mirror/MirrorManager$DragStateListener-IA;)V

    .line 1153
    .local v0, "listener":Lcom/xiaomi/mirror/MirrorManager$DragStateListener;
    :try_start_b
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v1, v0}, Lcom/xiaomi/mirror/IMirrorService;->registerDragListener(Lcom/xiaomi/mirror/IDragListener;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14

    .line 1156
    nop

    .line 1157
    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragStateListener:Lcom/xiaomi/mirror/MirrorManager$DragStateListener;

    .line 1158
    return-void

    .line 1154
    :catch_14
    move-exception v1

    .line 1155
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist sendAcceptInput(II)V
    .registers 5
    .param p1, "acceptStatus"    # I
    .param p2, "displayId"    # I

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendAcceptInput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    if-eqz v0, :cond_29

    .line 394
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;->onAcceptInputStatus(II)V

    .line 396
    :cond_29
    return-void
.end method

.method private blacklist sendSecureWin(II)V
    .registers 5
    .param p1, "secureStatus"    # I
    .param p2, "displayId"    # I

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sendSecureWin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    if-eqz v0, :cond_29

    .line 387
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;->onSecureWinStatus(II)V

    .line 389
    :cond_29
    return-void
.end method

.method private blacklist unPopulateCursorPositionListenerLocked()V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionChangedListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;

    if-nez v0, :cond_5

    .line 1027
    return-void

    .line 1030
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v1, v0}, Lcom/xiaomi/mirror/IMirrorService;->unregisterCursorPositionChangedListener(Lcom/xiaomi/mirror/ICursorPositionChangedListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_16

    .line 1033
    nop

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionChangedListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionChangedListener;

    .line 1035
    const-string v0, "MirrorManager"

    const-string v1, "a cursor position listener unregister from service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return-void

    .line 1031
    :catch_16
    move-exception v0

    .line 1032
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist unPopulateDragListenerLocked()V
    .registers 3

    .line 1180
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragStateListener:Lcom/xiaomi/mirror/MirrorManager$DragStateListener;

    if-nez v0, :cond_5

    .line 1181
    return-void

    .line 1184
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v1, v0}, Lcom/xiaomi/mirror/IMirrorService;->unregisterDragListener(Lcom/xiaomi/mirror/IDragListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_f

    .line 1187
    nop

    .line 1188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragStateListener:Lcom/xiaomi/mirror/MirrorManager$DragStateListener;

    .line 1189
    return-void

    .line 1185
    :catch_f
    move-exception v0

    .line 1186
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist beginSynergy(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synergy_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist beginTrackingClickEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 197
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mTrackingEvent:Landroid/view/MotionEvent;

    .line 198
    return-void
.end method

.method public blacklist binderUnregSecureWin()V
    .registers 6

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "service":Landroid/os/IBinder;
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    move-object v0, v1

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 544
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 545
    .local v2, "reply":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->SERVICE_SURFACEFLINGER_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    const/16 v3, 0x79e1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 547
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    .line 553
    .end local v1    # "request":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    goto :goto_42

    .line 550
    :catch_25
    move-exception v1

    .line 551
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CODE_UNREG_SF_SECURE_WINDOW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method public blacklist cancelCurrentDrag()Z
    .registers 3

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorService;->cancelCurrentDrag()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1111
    :catch_7
    move-exception v0

    .line 1112
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "dragToken"    # Landroid/os/IBinder;

    .line 851
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const-string v1, "MirrorManager"

    if-nez v0, :cond_c

    .line 852
    const-string v0, "mirror service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void

    .line 856
    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->cancelDragAndDrop(Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 859
    goto :goto_16

    .line 857
    :catch_10
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "unable to cancel delegate drag"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public blacklist delegateMirrorDrag(Landroid/view/IWindow;Landroid/view/ViewRootImpl;IILandroid/view/View$DragShadowBuilder;Landroid/graphics/Point;Landroid/content/ClipData;)Landroid/os/IBinder;
    .registers 23
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "root"    # Landroid/view/ViewRootImpl;
    .param p3, "deviceId"    # I
    .param p4, "flags"    # I
    .param p5, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p6, "shadowSize"    # Landroid/graphics/Point;
    .param p7, "data"    # Landroid/content/ClipData;

    .line 769
    move-object v1, p0

    move-object/from16 v2, p6

    move/from16 v9, p4

    and-int/lit16 v0, v9, 0x100

    const/4 v10, 0x0

    const-string v11, "MirrorManager"

    if-nez v0, :cond_12

    .line 770
    const-string v0, "ignore local drag"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    return-object v10

    .line 773
    :cond_12
    move/from16 v12, p3

    invoke-direct {p0, v12}, Lcom/xiaomi/mirror/MirrorManager;->isMirrorDevice(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 774
    const-string v0, "ignore drag from phone"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-object v10

    .line 777
    :cond_20
    iget-object v0, v1, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-nez v0, :cond_2a

    .line 778
    const-string v0, "mirror service not found!"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-object v10

    .line 782
    :cond_2a
    :try_start_2a
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 784
    .local v0, "delegateShadow":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v13, v3

    .line 785
    .local v13, "delegateCanvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_59

    .line 786
    move-object/from16 v14, p5

    :try_start_42
    invoke-virtual {v14, v13}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 788
    iget-object v3, v1, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v6

    move-object/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-interface/range {v3 .. v8}, Lcom/xiaomi/mirror/IMirrorService;->performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;

    move-result-object v3
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_56} :catch_57

    return-object v3

    .line 789
    .end local v0    # "delegateShadow":Landroid/graphics/Bitmap;
    .end local v13    # "delegateCanvas":Landroid/graphics/Canvas;
    :catch_57
    move-exception v0

    goto :goto_5c

    :catch_59
    move-exception v0

    move-object/from16 v14, p5

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    :goto_5c
    const-string v3, "unable to delegate drag"

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-object v10
.end method

.method public blacklist endSynergy(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "synergy_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    return v2
.end method

.method public blacklist endTrackingEvent()V
    .registers 2

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mTrackingEvent:Landroid/view/MotionEvent;

    .line 203
    return-void
.end method

.method public blacklist getWorkingMasterName()Ljava/lang/String;
    .registers 4

    .line 275
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    .line 276
    .local v0, "appService":Lcom/xiaomi/mirror/IMirrorAppService;
    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isWorking()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_15

    .line 280
    :cond_e
    :try_start_e
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorAppService;->getMasterName()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_12} :catch_13

    return-object v1

    .line 281
    :catch_13
    move-exception v2

    .line 282
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1

    .line 277
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-object v1
.end method

.method public blacklist grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V
    .registers 12
    .param p2, "sourceUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 737
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_e

    .line 739
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService;->grantUriPermissionsToPackage(Ljava/util/List;ILjava/lang/String;II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 741
    goto :goto_e

    .line 740
    :catch_d
    move-exception v0

    .line 743
    :cond_e
    :goto_e
    return-void
.end method

.method public blacklist initService()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    const-string v0, "miui.mirror_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 677
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_9

    .line 678
    return-void

    .line 680
    :cond_9
    invoke-static {v0}, Lcom/xiaomi/mirror/IMirrorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/IMirrorService;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    .line 681
    if-eqz v1, :cond_2a

    .line 684
    :try_start_11
    new-instance v2, Lcom/xiaomi/mirror/MirrorManager$3;

    invoke-direct {v2, p0}, Lcom/xiaomi/mirror/MirrorManager$3;-><init>(Lcom/xiaomi/mirror/MirrorManager;)V

    invoke-interface {v1, v2}, Lcom/xiaomi/mirror/IMirrorService;->addMirrorStateListener(Lcom/xiaomi/mirror/IMirrorStateListener;)V

    .line 695
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v1}, Lcom/xiaomi/mirror/IMirrorService;->isInMouseShareMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mInMouseShareMode:Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_21} :catch_22

    .line 698
    goto :goto_2a

    .line 696
    :catch_22
    move-exception v1

    .line 697
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MirrorManager"

    const-string v3, "mirror service not found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public blacklist injectDragEvent(IIFF)V
    .registers 8
    .param p1, "action"    # I
    .param p2, "displayId"    # I
    .param p3, "newX"    # F
    .param p4, "newY"    # F

    .line 815
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const-string v1, "MirrorManager"

    if-nez v0, :cond_c

    .line 816
    const-string v0, "mirror service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void

    .line 820
    :cond_c
    :try_start_c
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/mirror/IMirrorService;->injectDragEvent(IIFF)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 823
    goto :goto_16

    .line 821
    :catch_10
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "unable to inject mirror drag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist isCurrentClickFromMirror()Z
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mTrackingEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mirror/MirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEventFromMirror(Landroid/view/InputEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 291
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mirror/MirrorManager;->isMirrorDevice(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isInMouseShareMode()Z
    .registers 2

    .line 1233
    iget-boolean v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mInMouseShareMode:Z

    return v0
.end method

.method public blacklist isMirrorDelegating()Z
    .registers 2

    .line 761
    iget-boolean v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegating:Z

    return v0
.end method

.method public blacklist isModelSupport()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIsSupport:Z

    return v0
.end method

.method public blacklist isWorking()Z
    .registers 4

    .line 262
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    .line 263
    .local v0, "appService":Lcom/xiaomi/mirror/IMirrorAppService;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 264
    return v1

    .line 267
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorAppService;->isWorking()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 268
    :catch_d
    move-exception v2

    .line 269
    .local v2, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist notifyInputTypeAndPos(III)V
    .registers 8
    .param p1, "inputType"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 218
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    .line 219
    .local v0, "appService":Lcom/xiaomi/mirror/IMirrorAppService;
    if-nez v0, :cond_7

    .line 220
    return-void

    .line 223
    :cond_7
    :try_start_7
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyInputTypeAndPos(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 226
    goto :goto_13

    .line 224
    :catch_b
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MirrorManager"

    const-string v3, "notifyInputTypeAndPos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public blacklist notifyLockScreen()V
    .registers 6

    .line 345
    nop

    .line 346
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 345
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 348
    .local v0, "window":Landroid/view/IWindowManager;
    const-string v1, "MirrorManager"

    if-nez v0, :cond_15

    .line 349
    const-string v2, "IWindowManager is null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 354
    :cond_15
    const/4 v2, 0x0

    :try_start_16
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 359
    goto :goto_34

    .line 355
    :catch_1a
    move-exception v2

    .line 356
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLockScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public blacklist notifyMouseShareModeState(Z)V
    .registers 4
    .param p1, "isInMouseShareMode"    # Z

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->notifyMouseShareModeState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1260
    nop

    .line 1261
    return-void

    .line 1258
    :catch_7
    move-exception v0

    .line 1259
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 231
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    .line 232
    .local v0, "appService":Lcom/xiaomi/mirror/IMirrorAppService;
    if-nez v0, :cond_7

    .line 233
    return-void

    .line 236
    :cond_7
    :try_start_7
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 239
    goto :goto_13

    .line 237
    :catch_b
    move-exception v1

    .line 238
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MirrorManager"

    const-string v3, "notifyMoveTaskToBack"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public blacklist notifyShadow(Landroid/view/View$DragShadowBuilder;Landroid/graphics/Point;)V
    .registers 7
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p2, "shadowSize"    # Landroid/graphics/Point;

    .line 1240
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1242
    .local v0, "dragShadowImage":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1243
    .local v1, "shadowCanvas":Landroid/graphics/Canvas;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1244
    invoke-virtual {p1, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 1246
    :try_start_18
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v2, v0}, Lcom/xiaomi/mirror/IMirrorService;->notifyShadowImage(Landroid/graphics/Bitmap;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 1249
    nop

    .line 1250
    return-void

    .line 1247
    :catch_1f
    move-exception v2

    .line 1248
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist notifyStartActivity(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 309
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    .line 310
    .local v0, "appService":Lcom/xiaomi/mirror/IMirrorAppService;
    if-eqz v0, :cond_1a

    if-nez p1, :cond_9

    goto :goto_1a

    .line 314
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isCurrentClickFromMirror()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyStartActivity(Landroid/content/Intent;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 317
    goto :goto_19

    .line 315
    :catch_11
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MirrorManager"

    const-string v3, "failed to notifyStartActivity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void

    .line 311
    :cond_1a
    :goto_1a
    return-void
.end method

.method public blacklist notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 322
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->getAppService()Lcom/xiaomi/mirror/IMirrorAppService;

    move-result-object v0

    .line 323
    .local v0, "appService":Lcom/xiaomi/mirror/IMirrorAppService;
    if-nez v0, :cond_7

    .line 324
    return-void

    .line 327
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->isCurrentClickFromMirror()Z

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaomi/mirror/IMirrorAppService;->notifyStartActivityFromRecents(ILandroid/os/Bundle;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 330
    goto :goto_17

    .line 328
    :catch_f
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MirrorManager"

    const-string v3, "failed to notifyStartActivityFromRecents"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public blacklist onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 6
    .param p1, "menu"    # Lcom/xiaomi/mirror/MirrorMenu;
    .param p2, "displayId"    # I

    .line 892
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 893
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "onRemoteMenuActionCall()"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    .line 897
    :cond_17
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_20

    .line 899
    :try_start_1b
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorService;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 901
    goto :goto_20

    .line 900
    :catch_1f
    move-exception v0

    .line 903
    :cond_20
    :goto_20
    return-void
.end method

.method public blacklist performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 207
    invoke-virtual {p0, p2}, Lcom/xiaomi/mirror/MirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 208
    return v1

    .line 210
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    if-eqz v0, :cond_11

    .line 211
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;->onMirrorMenuClick(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 213
    :cond_11
    return v1
.end method

.method public blacklist regAcceptInputCallback(Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;)I
    .registers 3
    .param p1, "acceptInput"    # Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    .line 168
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    .line 169
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderRegAcceptInput()V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist regSecureWinCallback(Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;)I
    .registers 3
    .param p1, "secureWin"    # Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    .line 182
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    .line 183
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderRegSecureWin()V

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCursorPositionListener(Landroid/os/Handler;Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;

    .line 974
    if-eqz p2, :cond_24

    .line 977
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    monitor-enter v0

    .line 978
    :try_start_5
    invoke-direct {p0, p2}, Lcom/xiaomi/mirror/MirrorManager;->findCursorPositionListenerLocked(Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;)I

    move-result v1

    .line 979
    .local v1, "index":I
    if-gez v1, :cond_1c

    .line 980
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    new-instance v3, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;

    invoke-direct {v3, p2, p1}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;-><init>(Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const-string v2, "MirrorManager"

    const-string v3, "a cursor position listener added"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_1c
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->populateCursorPositionListenerLocked()V

    .line 984
    .end local v1    # "index":I
    monitor-exit v0

    .line 985
    return-void

    .line 984
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1

    .line 975
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerDragListener(Landroid/os/Handler;Lcom/xiaomi/mirror/MirrorManager$DragListener;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/xiaomi/mirror/MirrorManager$DragListener;

    .line 1135
    if-eqz p2, :cond_1d

    .line 1138
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    monitor-enter v0

    .line 1139
    :try_start_5
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->populateDragListenerLocked()V

    .line 1140
    invoke-direct {p0, p2}, Lcom/xiaomi/mirror/MirrorManager;->findDragListenerLocked(Lcom/xiaomi/mirror/MirrorManager$DragListener;)I

    move-result v1

    .line 1141
    .local v1, "index":I
    if-gez v1, :cond_18

    .line 1142
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    new-instance v3, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    invoke-direct {v3, p2, p1}, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;-><init>(Lcom/xiaomi/mirror/MirrorManager$DragListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    .end local v1    # "index":I
    :cond_18
    monitor-exit v0

    .line 1145
    return-void

    .line 1144
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1

    .line 1136
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerMirrorDelegate(Lcom/xiaomi/mirror/MirrorDelegate;Ljava/lang/String;)V
    .registers 5
    .param p1, "delegate"    # Lcom/xiaomi/mirror/MirrorDelegate;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_17

    .line 707
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_7
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

    .line 709
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 711
    :try_start_a
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

    invoke-interface {v0, v1, p2}, Lcom/xiaomi/mirror/IMirrorService;->registerDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 713
    goto :goto_17

    .line 712
    :catch_12
    move-exception v0

    goto :goto_17

    .line 709
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1

    .line 715
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist reportDropResult(Landroid/view/IWindow;Z)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 878
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_10

    .line 880
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorService;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 883
    goto :goto_10

    .line 881
    :catch_8
    move-exception v0

    .line 882
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MirrorManager"

    const-string v2, "failed to report drop result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist revokePermissions(Landroid/content/ClipData;I)V
    .registers 4
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I

    .line 749
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_9

    .line 751
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorService;->revokePermissions(Landroid/content/ClipData;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 753
    goto :goto_9

    .line 752
    :catch_8
    move-exception v0

    .line 755
    :cond_9
    :goto_9
    return-void
.end method

.method public blacklist sendChineseText(Ljava/lang/String;)I
    .registers 3
    .param p1, "chineseText"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->binderSendChineseText(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendSynergyOperate(I)I
    .registers 3
    .param p1, "synergyOperate"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->binderSendSynergyOperate(I)V

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDisplayIdForInputMethod(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 340
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->binderSetDisplayIDForInputMethod(I)V

    .line 341
    return-void
.end method

.method public blacklist setDragAcceptable(Z)V
    .registers 3
    .param p1, "acceptable"    # Z

    .line 866
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_9

    .line 868
    :try_start_4
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->setDragAcceptable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 870
    goto :goto_9

    .line 869
    :catch_8
    move-exception v0

    .line 872
    :cond_9
    :goto_9
    return-void
.end method

.method public blacklist setDragSurfaceVisible(Z)Z
    .registers 4
    .param p1, "visible"    # Z

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->setDragSurfaceVisible(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1100
    :catch_7
    move-exception v0

    .line 1101
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFinishAnimatorNeeded(Z)V
    .registers 4
    .param p1, "needFinishAnimator"    # Z

    .line 1121
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorService;->setFinishAnimatorNeeded(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1124
    nop

    .line 1125
    return-void

    .line 1122
    :catch_7
    move-exception v0

    .line 1123
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMirrorInputMethodState(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mirror_input_state"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    return-void
.end method

.method public blacklist setOnMirrorMenuClickListener(Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    .line 304
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager;->mMirrorMenuClickListener:Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;

    .line 305
    return-void
.end method

.method public blacklist startMirrorDrag(Landroid/content/ClipData;II)Landroid/os/IBinder;
    .registers 12
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "flags"    # I
    .param p3, "displayId"    # I

    .line 799
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const/4 v6, 0x0

    const-string v7, "MirrorManager"

    if-nez v0, :cond_d

    .line 800
    const-string v0, "mirror service not found!"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-object v6

    .line 804
    :cond_d
    const/4 v1, 0x0

    const/4 v5, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p1

    :try_start_12
    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/mirror/IMirrorService;->performDrag(Landroid/view/IWindow;IILandroid/content/ClipData;Landroid/graphics/Bitmap;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 805
    :catch_17
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unable to perform mirror drag"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-object v6
.end method

.method public blacklist tryToTriggerSend(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 921
    invoke-virtual {p0, p2}, Lcom/xiaomi/mirror/MirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7c

    .line 924
    :cond_e
    :goto_e
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1f

    .line 925
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-nez v0, :cond_17

    .line 926
    return v1

    .line 928
    :cond_17
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_e

    .line 930
    :cond_1f
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 931
    .local v0, "componentName":Landroid/content/ComponentName;
    sget-object v2, Lcom/xiaomi/mirror/MirrorManager;->MOBILEQQ_CHAT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 932
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "fun_btn"

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->findSendViewAndClick(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 933
    :cond_38
    sget-object v2, Lcom/xiaomi/mirror/MirrorManager;->WECHAT_CHAT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 934
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "b8k"

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->findSendViewAndClick(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 935
    .local v1, "process":Z
    if-nez v1, :cond_54

    .line 936
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const-string v3, "ay5"

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mirror/MirrorManager;->findSendViewAndClick(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 938
    :cond_54
    return v1

    .line 939
    .end local v1    # "process":Z
    :cond_55
    sget-object v2, Lcom/xiaomi/mirror/MirrorManager;->MIWORK_CHAT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    sget-object v2, Lcom/xiaomi/mirror/MirrorManager;->LARK_CHAT_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    goto :goto_67

    .line 946
    :cond_66
    return v1

    .line 940
    :cond_67
    :goto_67
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const-string v2, "btn_send_region"

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->findSendViewAndClick(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 941
    .restart local v1    # "process":Z
    if-nez v1, :cond_7b

    .line 942
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const-string v3, "btn_send"

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/mirror/MirrorManager;->findSendViewAndClick(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 944
    :cond_7b
    return v1

    .line 922
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "process":Z
    :cond_7c
    :goto_7c
    return v1
.end method

.method public blacklist turnOffBacklight(Landroid/content/Context;)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mIPowerManager:Landroid/os/IBinder;

    if-eqz v0, :cond_3a

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 139
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "android.os.IPowerManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    :try_start_16
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mIPowerManager:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_29
    .catchall {:try_start_16 .. :try_end_1f} :catchall_27

    .line 147
    nop

    :goto_20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    goto :goto_3a

    .line 147
    :catchall_27
    move-exception v2

    goto :goto_33

    .line 144
    :catch_29
    move-exception v2

    .line 145
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_2a
    const-string v3, "MirrorManager"

    const-string v4, "Failed to request dimming..."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    .line 147
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_20

    :goto_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw v2

    .line 151
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unRegAcceptInputCallback()I
    .registers 2

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mAcceptInputCallBack:Lcom/xiaomi/mirror/IMirrorManager$AcceptInputCallback;

    .line 176
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderUnregAcceptInput()V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unRegSecureWinCallback()I
    .registers 2

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mSecureWinCallBack:Lcom/xiaomi/mirror/IMirrorManager$SecureWinCallback;

    .line 190
    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorManager;->binderUnregSecureWin()V

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterCursorPositionListener(Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;

    .line 1009
    if-eqz p1, :cond_2b

    .line 1013
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    monitor-enter v0

    .line 1014
    :try_start_5
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->findCursorPositionListenerLocked(Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;)I

    move-result v1

    .line 1015
    .local v1, "index":I
    if-ltz v1, :cond_23

    .line 1016
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;

    .line 1017
    .local v2, "d":Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1018
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mCursorPositionListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1019
    const-string v3, "MirrorManager"

    const-string v4, "a cursor position listener removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    .end local v2    # "d":Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;
    :cond_23
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->unPopulateCursorPositionListenerLocked()V

    .line 1022
    .end local v1    # "index":I
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v1

    .line 1010
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterDragListener(Lcom/xiaomi/mirror/MirrorManager$DragListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/xiaomi/mirror/MirrorManager$DragListener;

    .line 1164
    if-eqz p1, :cond_24

    .line 1168
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    monitor-enter v0

    .line 1169
    :try_start_5
    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/MirrorManager;->findDragListenerLocked(Lcom/xiaomi/mirror/MirrorManager$DragListener;)I

    move-result v1

    .line 1170
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 1171
    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;

    .line 1172
    .local v2, "d":Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1173
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mDragListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1175
    .end local v2    # "d":Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;
    :cond_1c
    invoke-direct {p0}, Lcom/xiaomi/mirror/MirrorManager;->unPopulateDragListenerLocked()V

    .line 1176
    .end local v1    # "index":I
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1

    .line 1165
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterMirrorDelegate()V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    if-eqz v0, :cond_18

    .line 722
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;

    .line 724
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    .line 726
    :try_start_b
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager;->mDelegateWrapper:Lcom/xiaomi/mirror/IMirrorDelegate;

    invoke-interface {v0, v1}, Lcom/xiaomi/mirror/IMirrorService;->unregisterDelegate(Lcom/xiaomi/mirror/IMirrorDelegate;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 728
    goto :goto_18

    .line 727
    :catch_13
    move-exception v0

    goto :goto_18

    .line 724
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1

    .line 730
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist updateShadow(Landroid/view/View$DragShadowBuilder;II)V
    .registers 9
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p2, "shadowX"    # I
    .param p3, "shadowY"    # I

    .line 830
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    const-string v1, "MirrorManager"

    if-nez v0, :cond_c

    .line 831
    const-string v0, "mirror service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 834
    :cond_c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 837
    .local v0, "delegateShadow":Landroid/graphics/Bitmap;
    :try_start_12
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 838
    .local v2, "delegateCanvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 839
    invoke-virtual {p1, v2}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 841
    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorManager;->mService:Lcom/xiaomi/mirror/IMirrorService;

    invoke-interface {v3, v0}, Lcom/xiaomi/mirror/IMirrorService;->updateShadow(Landroid/graphics/Bitmap;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_26

    .line 844
    .end local v2    # "delegateCanvas":Landroid/graphics/Canvas;
    goto :goto_2c

    .line 842
    :catch_26
    move-exception v2

    .line 843
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "unable to update delegate drag shadow"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method
