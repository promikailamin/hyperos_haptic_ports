.class public final Landroid/companion/CompanionDeviceManager;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;,
        Landroid/companion/CompanionDeviceManager$Callback;,
        Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;,
        Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;,
        Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;,
        Landroid/companion/CompanionDeviceManager$Transport;,
        Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;,
        Landroid/companion/CompanionDeviceManager$FeatureName;,
        Landroid/companion/CompanionDeviceManager$DataSyncTypes;,
        Landroid/companion/CompanionDeviceManager$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_ASSOCIATION:Ljava/lang/String; = "android.companion.extra.ASSOCIATION"

.field public static final whitelist EXTRA_DEVICE:Ljava/lang/String; = "android.companion.extra.DEVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FEATURE_AIRPLANE_MODE_SYNC:Ljava/lang/String; = "airplane_mode_sync"

.field public static final blacklist FEATURE_MODE_SYNC:Ljava/lang/String; = "mode_sync"

.field public static final blacklist FEATURE_TASK_CONTINUITY:Ljava/lang/String; = "task_continuity_manager"

.field public static final whitelist FLAG_CALL_METADATA:I = 0x1

.field public static final blacklist FLAG_TASK_CONTINUITY:I = 0x2

.field private static final blacklist ICON_TARGET_SIZE:I = 0x18

.field public static final blacklist MESSAGE_ONEWAY_FROM_WEARABLE:I = 0x43708287

.field public static final blacklist MESSAGE_ONEWAY_PING:I = 0x43807378

.field public static final blacklist MESSAGE_ONEWAY_TASK_CONTINUITY:I = 0x43678884

.field public static final blacklist MESSAGE_ONEWAY_TO_WEARABLE:I = 0x43847987

.field public static final blacklist MESSAGE_REQUEST_CONTEXT_SYNC:I = 0x63678883

.field public static final blacklist MESSAGE_REQUEST_METADATA_UPDATE:I = 0x63776885

.field public static final blacklist MESSAGE_REQUEST_PERMISSION_RESTORE:I = 0x63826983

.field public static final blacklist MESSAGE_REQUEST_PING:I = 0x63807378

.field public static final blacklist MESSAGE_REQUEST_REMOTE_AUTHENTICATION:I = 0x63827765

.field public static final blacklist REASON_CANCELED:Ljava/lang/String; = "canceled"

.field public static final blacklist REASON_DISCOVERY_TIMEOUT:Ljava/lang/String; = "discovery_timeout"

.field public static final blacklist REASON_INTERNAL_ERROR:Ljava/lang/String; = "internal_error"

.field public static final blacklist REASON_USER_REJECTED:Ljava/lang/String; = "user_rejected"

.field public static final whitelist RESULT_CANCELED:I = 0x0

.field public static final whitelist RESULT_DISCOVERY_TIMEOUT:I = 0x2

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x3

.field public static final whitelist RESULT_OK:I = -0x1

.field public static final whitelist RESULT_SECURITY_ERROR:I = 0x4

.field public static final whitelist RESULT_USER_REJECTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CDM_CompanionDeviceManager"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMessageReceivedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mService:Landroid/companion/ICompanionDeviceManager;

.field private final blacklist mTransportEventListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTransports:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/companion/CompanionDeviceManager$Transport;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/companion/CompanionDeviceManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;
    .registers 1

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/companion/ICompanionDeviceManager;Landroid/content/Context;)V
    .registers 4

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    .line 474
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    .line 478
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    .line 484
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 485
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 486
    return-void
.end method

.method static synthetic blacklist lambda$getAssociations$0(Landroid/companion/AssociationInfo;)Ljava/lang/String;
    .registers 2

    .line 766
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method private blacklist scaleIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .registers 7

    .line 2587
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 2588
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4f

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4f

    .line 2593
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2594
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-eqz v0, :cond_28

    .line 2595
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2596
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2595
    invoke-static {p1, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_4a

    .line 2599
    :cond_28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2601
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2602
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2603
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p1, p2

    .line 2606
    :goto_4a
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 2589
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The URI based Icon is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1027
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V

    .line 1028
    return-void
.end method

.method public blacklist addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V
    .registers 7

    .line 1040
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1041
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    return-void

    .line 1045
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1046
    :try_start_f
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;Landroid/companion/CompanionDeviceManager-IA;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_28

    .line 1049
    :try_start_15
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {p1, v1, p3}, Landroid/companion/ICompanionDeviceManager;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_22
    .catchall {:try_start_15 .. :try_end_1a} :catchall_28

    .line 1052
    nop

    .line 1053
    :try_start_1b
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    monitor-exit v0

    .line 1055
    return-void

    .line 1050
    :catch_22
    move-exception p1

    .line 1051
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1054
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist addOnMessageReceivedListener(Ljava/util/concurrent/Executor;ILjava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1209
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return-void

    .line 1213
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1214
    :try_start_f
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/companion/CompanionDeviceManager-IA;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_40

    .line 1217
    :try_start_15
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {p1, p2, v1}, Landroid/companion/ICompanionDeviceManager;->addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_3a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_40

    .line 1220
    nop

    .line 1222
    :try_start_1b
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1223
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1225
    :cond_2d
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1226
    monitor-exit v0

    .line 1227
    return-void

    .line 1218
    :catch_3a
    move-exception p1

    .line 1219
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1226
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_40

    throw p1
.end method

.method public blacklist addOnTransportEventListener(Ljava/util/concurrent/Executor;ILjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1279
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return-void

    .line 1283
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1284
    :try_start_f
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2}, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_40

    .line 1287
    :try_start_15
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {p1, p2, v1}, Landroid/companion/ICompanionDeviceManager;->addOnTransportEventListener(ILandroid/companion/IOnTransportEventListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_3a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_40

    .line 1290
    nop

    .line 1291
    :try_start_1b
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 1292
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1294
    :cond_2d
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    monitor-exit v0

    .line 1296
    return-void

    .line 1288
    :catch_3a
    move-exception p1

    .line 1289
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1295
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_40

    throw p1
.end method

.method public blacklist addOnTransportsChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1105
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1109
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1110
    :try_start_f
    new-instance v1, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_28

    .line 1113
    :try_start_15
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {p1, v1}, Landroid/companion/ICompanionDeviceManager;->addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_22
    .catchall {:try_start_15 .. :try_end_1a} :catchall_28

    .line 1116
    nop

    .line 1117
    :try_start_1b
    iget-object p1, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    monitor-exit v0

    .line 1119
    return-void

    .line 1114
    :catch_22
    move-exception p1

    .line 1115
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1118
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public whitelist associate(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .registers 7

    .line 531
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 532
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 536
    :cond_c
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 538
    invoke-static {p3}, Landroid/os/Handler;->mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p3

    .line 540
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 541
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_2f

    .line 543
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager;->scaleIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/companion/AssociationRequest;->setDeviceIcon(Landroid/graphics/drawable/Icon;)V

    .line 548
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p2, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V

    iget-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    .line 548
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_46} :catch_48

    .line 552
    nop

    .line 553
    return-void

    .line 550
    :catch_48
    move-exception p1

    .line 551
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist associate(Landroid/companion/AssociationRequest;Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 7

    .line 603
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 604
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void

    .line 608
    :cond_c
    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 609
    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->associationDeviceIcon()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 613
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_30

    .line 615
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroid/companion/CompanionDeviceManager;->scaleIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/companion/AssociationRequest;->setDeviceIcon(Landroid/graphics/drawable/Icon;)V

    .line 620
    :cond_30
    :try_start_30
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager-IA;)V

    iget-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 621
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    .line 620
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_47} :catch_49

    .line 624
    nop

    .line 625
    return-void

    .line 622
    :catch_49
    move-exception p1

    .line 623
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist associate(Ljava/lang/String;Landroid/net/MacAddress;[B)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1821
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1822
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return-void

    .line 1826
    :cond_c
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1827
    const-string/jumbo v0, "mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1829
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1831
    :try_start_1c
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 1832
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1831
    invoke-interface {v1, p1, p2, v0, p3}, Landroid/companion/ICompanionDeviceManager;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_2b

    .line 1835
    nop

    .line 1836
    return-void

    .line 1833
    :catch_2b
    move-exception p1

    .line 1834
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist attachSystemDataTransport(ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1759
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1760
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    return-void

    .line 1764
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1765
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1766
    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceManager;->detachSystemDataTransport(I)V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_33

    .line 1770
    :cond_1a
    :try_start_1a
    new-instance v1, Landroid/companion/CompanionDeviceManager$Transport;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/CompanionDeviceManager$Transport;-><init>(Landroid/companion/CompanionDeviceManager;ILjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1771
    iget-object p2, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1772
    invoke-virtual {v1}, Landroid/companion/CompanionDeviceManager$Transport;->start()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_2a
    .catchall {:try_start_1a .. :try_end_27} :catchall_33

    .line 1775
    nop

    .line 1776
    :try_start_28
    monitor-exit v0

    .line 1777
    return-void

    .line 1773
    :catch_2a
    move-exception p1

    .line 1774
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to attach transport"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1776
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public whitelist buildAssociationCancellationIntent()Landroid/content/IntentSender;
    .registers 4

    .line 643
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 644
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 650
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 649
    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_23} :catch_24

    return-object v0

    .line 652
    :catch_24
    move-exception v0

    .line 653
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist buildPermissionTransferUserConsentIntent(I)Landroid/content/IntentSender;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1985
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1986
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    return-object v1

    .line 1991
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1992
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1993
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1991
    invoke-interface {v0, v2, v3, p1}, Landroid/companion/ICompanionDeviceManager;->buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1995
    if-nez p1, :cond_22

    .line 1996
    return-object v1

    .line 1998
    :cond_22
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_26} :catch_27

    return-object p1

    .line 1999
    :catch_27
    move-exception p1

    .line 2000
    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 2001
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1485
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 1486
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 p1, 0x0

    return p1

    .line 1490
    :cond_d
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1491
    const-string v0, "device mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1492
    const-string/jumbo v0, "user handle cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1494
    :try_start_1e
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 1495
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 1494
    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return p1

    .line 1496
    :catch_29
    move-exception p1

    .line 1497
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist createAndSetDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;
    .registers 4

    .line 2207
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 2208
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const/4 p1, 0x0

    return-object p1

    .line 2213
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->setDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object p1

    .line 2214
    :catch_14
    move-exception p1

    .line 2215
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist detachSystemDataTransport(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 1792
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1793
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return-void

    .line 1797
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1798
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/CompanionDeviceManager$Transport;

    .line 1799
    if-eqz v1, :cond_21

    .line 1800
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mTransports:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1801
    invoke-virtual {v1}, Landroid/companion/CompanionDeviceManager$Transport;->stop()V

    .line 1803
    :cond_21
    monitor-exit v0

    .line 1804
    return-void

    .line 1803
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_23

    throw p1
.end method

.method public blacklist disablePermissionsSync(I)V
    .registers 3

    .line 723
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 724
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void

    .line 729
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->disablePermissionsSync(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 732
    nop

    .line 733
    return-void

    .line 730
    :catch_13
    move-exception p1

    .line 731
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist disableSystemDataSyncForTypes(II)V
    .registers 4

    .line 691
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 692
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 697
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->disableSystemDataSync(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 700
    nop

    .line 701
    return-void

    .line 698
    :catch_13
    move-exception p1

    .line 699
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist disassociate(I)V
    .registers 3

    .line 838
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 839
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void

    .line 844
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->disassociate(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 847
    nop

    .line 848
    return-void

    .line 845
    :catch_13
    move-exception p1

    .line 846
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist disassociate(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 811
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 816
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 816
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 820
    nop

    .line 821
    return-void

    .line 818
    :catch_1f
    move-exception p1

    .line 819
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist dispatchMessage(II[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1737
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "dispatchMessage replaced by attachSystemDataTransport"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void
.end method

.method public blacklist enablePermissionsSync(I)V
    .registers 3

    .line 707
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 708
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void

    .line 713
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->enablePermissionsSync(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 716
    nop

    .line 717
    return-void

    .line 714
    :catch_13
    move-exception p1

    .line 715
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist enableSystemDataSyncForTypes(II)V
    .registers 4

    .line 668
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 669
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 674
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->enableSystemDataSync(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 677
    nop

    .line 678
    return-void

    .line 675
    :catch_13
    move-exception p1

    .line 676
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAllAssociations()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceManager;->getAllAssociations(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllAssociations(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_10

    .line 989
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 994
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object p1

    .line 995
    :catch_17
    move-exception p1

    .line 996
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAllAssociationsWithTransports()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_10

    .line 1162
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1167
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0}, Landroid/companion/ICompanionDeviceManager;->getAllAssociationsWithTransports()Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    .line 1168
    :catch_17
    move-exception v0

    .line 1169
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAssociationByDeviceId(Landroid/companion/DeviceId;)Landroid/companion/AssociationInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2234
    const-string v0, "DeviceId can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2237
    :try_start_5
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/companion/ICompanionDeviceManager;->getAssociationByDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/AssociationInfo;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return-object p1

    .line 2238
    :catch_12
    move-exception p1

    .line 2239
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAssociations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 765
    invoke-virtual {p0}, Landroid/companion/CompanionDeviceManager;->getMyAssociations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/companion/CompanionDeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/companion/CompanionDeviceManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->mapNotNull(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMyAssociations()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_10

    .line 779
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 784
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_23

    return-object v0

    .line 785
    :catch_23
    move-exception v0

    .line 786
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .registers 3

    .line 739
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 740
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 p1, 0x0

    return-object p1

    .line 745
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return-object p1

    .line 746
    :catch_14
    move-exception p1

    .line 747
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 908
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 909
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 p1, 0x0

    return p1

    .line 914
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return p1

    .line 915
    :catch_14
    move-exception p1

    .line 916
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isCompanionApplicationBound()Z
    .registers 4

    .line 2117
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 2118
    const-string v0, "CDM_CompanionDeviceManager"

    const-string v1, "CompanionDeviceManager service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    const/4 v0, 0x0

    return v0

    .line 2123
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 2124
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2123
    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->isCompanionApplicationBound(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return v0

    .line 2125
    :catch_20
    move-exception v0

    .line 2126
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isDeviceAssociatedForWifiConnection(Ljava/lang/String;Landroid/net/MacAddress;Landroid/os/UserHandle;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 948
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 949
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 p1, 0x0

    return p1

    .line 953
    :cond_d
    const-string/jumbo v0, "package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 954
    const-string/jumbo v0, "mac address cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v0, "user cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 957
    :try_start_1f
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 958
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 957
    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2d} :catch_2e

    return p1

    .line 959
    :catch_2e
    move-exception p1

    .line 960
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isPermissionTransferUserConsented(I)Z
    .registers 5

    .line 2027
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 2028
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/4 p1, 0x0

    return p1

    .line 2033
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 2034
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2033
    invoke-interface {v0, v1, v2, p1}, Landroid/companion/ICompanionDeviceManager;->isPermissionTransferUserConsented(Ljava/lang/String;II)Z

    move-result p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return p1

    .line 2035
    :catch_20
    move-exception p1

    .line 2036
    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 2037
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyActionResult(ILandroid/companion/ActionResult;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1944
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1945
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return-void

    .line 1948
    :cond_c
    const-string v0, "ActionResult cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1951
    :try_start_11
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->notifyActionResult(ILandroid/companion/ActionResult;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    .line 1954
    nop

    .line 1955
    return-void

    .line 1952
    :catch_18
    move-exception p1

    .line 1953
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist notifyDeviceAppeared(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1856
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1857
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    return-void

    .line 1862
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->notifySelfManagedDeviceAppeared(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1865
    nop

    .line 1866
    return-void

    .line 1863
    :catch_13
    move-exception p1

    .line 1864
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist notifyDeviceDisappeared(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1885
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1886
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return-void

    .line 1891
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->notifySelfManagedDeviceDisappeared(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1894
    nop

    .line 1895
    return-void

    .line 1892
    :catch_13
    move-exception p1

    .line 1893
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist notifyDevicePresence(ILandroid/companion/DevicePresenceEvent;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1917
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1918
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return-void

    .line 1923
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->notifyDevicePresence(ILandroid/companion/DevicePresenceEvent;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1926
    nop

    .line 1927
    return-void

    .line 1924
    :catch_13
    move-exception p1

    .line 1925
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist overrideTransportType(I)V
    .registers 3

    .line 2143
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 2144
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    return-void

    .line 2149
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->overrideTransportType(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 2152
    nop

    .line 2153
    return-void

    .line 2150
    :catch_13
    move-exception p1

    .line 2151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeBond(I)Z
    .registers 5

    .line 1520
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_d

    .line 1521
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 p1, 0x0

    return p1

    .line 1526
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1527
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1526
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->removeBond(ILjava/lang/String;I)Z

    move-result p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20

    return p1

    .line 1528
    :catch_20
    move-exception p1

    .line 1529
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeOnActionResultListener(Ljava/lang/String;)V
    .registers 4

    .line 1457
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1458
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    return-void

    .line 1461
    :cond_c
    const-string/jumbo v0, "serviceName cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1463
    :try_start_12
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->removeOnActionResultListener(Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1f

    .line 1466
    nop

    .line 1467
    return-void

    .line 1464
    :catch_1f
    move-exception p1

    .line 1465
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeOnAssociationsChangedListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1068
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1069
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void

    .line 1073
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1074
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1075
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1076
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;

    .line 1077
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListenerProxy;)Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_40

    if-ne v3, p1, :cond_3d

    .line 1079
    :try_start_27
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v4, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/companion/ICompanionDeviceManager;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_37
    .catchall {:try_start_27 .. :try_end_32} :catchall_40

    .line 1082
    nop

    .line 1083
    :try_start_33
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3d

    .line 1080
    :catch_37
    move-exception p1

    .line 1081
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1085
    :cond_3d
    :goto_3d
    goto :goto_15

    .line 1086
    :cond_3e
    monitor-exit v0

    .line 1087
    return-void

    .line 1086
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public blacklist removeOnDevicePresenceEventListener(Ljava/lang/String;)V
    .registers 4

    .line 1387
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1388
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void

    .line 1391
    :cond_c
    const-string/jumbo v0, "serviceName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1394
    :try_start_12
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->removeOnDevicePresenceEventListener(Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1f

    .line 1397
    nop

    .line 1398
    return-void

    .line 1395
    :catch_1f
    move-exception p1

    .line 1396
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeOnMessageReceivedListener(ILjava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1238
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1242
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1243
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1244
    const-string p2, "CDM_CompanionDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t remove OnMessageReceivedListener. messageType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not being listened."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    monitor-exit v0

    return-void

    .line 1249
    :cond_37
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mMessageReceivedListeners:Landroid/util/SparseArray;

    .line 1250
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1251
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;

    .line 1253
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnMessageReceivedListenerProxy;)Ljava/util/function/BiConsumer;

    move-result-object v3
    :try_end_53
    .catchall {:try_start_f .. :try_end_53} :catchall_68

    if-ne v3, p2, :cond_65

    .line 1255
    :try_start_55
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v3, p1, v2}, Landroid/companion/ICompanionDeviceManager;->removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5a} :catch_5f
    .catchall {:try_start_55 .. :try_end_5a} :catchall_68

    .line 1258
    nop

    .line 1259
    :try_start_5b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_65

    .line 1256
    :catch_5f
    move-exception p1

    .line 1257
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1261
    :cond_65
    :goto_65
    goto :goto_43

    .line 1262
    :cond_66
    monitor-exit v0

    .line 1263
    return-void

    .line 1262
    :catchall_68
    move-exception p1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public blacklist removeOnTransportEventListener(ILjava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1306
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1307
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return-void

    .line 1311
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1312
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1316
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransportEventListeners:Landroid/util/SparseArray;

    .line 1317
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1318
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1319
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;

    .line 1320
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnTransportEventListenerProxy;)Ljava/util/function/Consumer;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_67

    if-ne v3, p2, :cond_45

    .line 1322
    :try_start_35
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v3, p1, v2}, Landroid/companion/ICompanionDeviceManager;->removeOnTransportEventListener(ILandroid/companion/IOnTransportEventListener;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3f
    .catchall {:try_start_35 .. :try_end_3a} :catchall_67

    .line 1325
    nop

    .line 1326
    :try_start_3b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_45

    .line 1323
    :catch_3f
    move-exception p1

    .line 1324
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1328
    :cond_45
    :goto_45
    goto :goto_23

    .line 1329
    :cond_46
    monitor-exit v0

    .line 1330
    return-void

    .line 1313
    :cond_48
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association id=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] doesn\'t have any registered event listener."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1329
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3b .. :try_end_69} :catchall_67

    throw p1
.end method

.method public blacklist removeOnTransportsChangedListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1132
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    return-void

    .line 1136
    :cond_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1137
    :try_start_f
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mTransportsChangedListeners:Ljava/util/ArrayList;

    .line 1138
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1139
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;

    .line 1141
    invoke-static {v2}, Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;->-$$Nest$fgetmListener(Landroid/companion/CompanionDeviceManager$OnTransportsChangedListenerProxy;)Ljava/util/function/Consumer;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_3a

    if-ne v3, p1, :cond_37

    .line 1143
    :try_start_27
    iget-object v3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v3, v2}, Landroid/companion/ICompanionDeviceManager;->removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_31
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3a

    .line 1146
    nop

    .line 1147
    :try_start_2d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 1144
    :catch_31
    move-exception p1

    .line 1145
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1149
    :cond_37
    :goto_37
    goto :goto_15

    .line 1150
    :cond_38
    monitor-exit v0

    .line 1151
    return-void

    .line 1150
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public blacklist requestAction(Landroid/companion/ActionRequest;Ljava/lang/String;[I)V
    .registers 5

    .line 2296
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 2297
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    return-void

    .line 2301
    :cond_c
    const-string v0, "ActionRequest can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2302
    const-string/jumbo v0, "serviceName can not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2305
    :try_start_17
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->requestAction(Landroid/companion/ActionRequest;Ljava/lang/String;[I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1e

    .line 2308
    nop

    .line 2309
    return-void

    .line 2306
    :catch_1e
    move-exception p1

    .line 2307
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist requestNotificationAccess(Landroid/content/ComponentName;)V
    .registers 9

    .line 867
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 868
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    .line 873
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 874
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 873
    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 876
    if-nez p1, :cond_1b

    .line 877
    return-void

    .line 879
    :cond_1b
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 881
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 882
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 883
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 881
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_35} :catch_3f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_35} :catch_37

    .line 888
    nop

    .line 889
    return-void

    .line 886
    :catch_37
    move-exception v0

    move-object p1, v0

    .line 887
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 884
    :catch_3f
    move-exception v0

    move-object p1, v0

    .line 885
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist sendMessage(I[B[I)V
    .registers 5

    .line 1183
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1184
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    return-void

    .line 1189
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->sendMessage(I[B[I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 1192
    nop

    .line 1193
    return-void

    .line 1190
    :catch_13
    move-exception p1

    .line 1191
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDeviceId(ILandroid/companion/DeviceId;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2170
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 2171
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return-void

    .line 2176
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/ICompanionDeviceManager;->setDeviceId(ILandroid/companion/DeviceId;)Landroid/companion/DeviceId;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 2179
    nop

    .line 2180
    return-void

    .line 2177
    :catch_13
    move-exception p1

    .line 2178
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 2257
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 2258
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    return-void

    .line 2262
    :cond_c
    const-string v0, "_timestamp_"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2267
    :try_start_14
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/ICompanionDeviceManager;->setLocalMetadata(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 2270
    nop

    .line 2271
    return-void

    .line 2268
    :catch_1b
    move-exception p1

    .line 2269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2263
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set metadata timestamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setOnActionResultListener([ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/companion/ActionResult;",
            ">;)V"
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1422
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-void

    .line 1426
    :cond_c
    const-string v0, "associationIds cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1427
    const-string/jumbo v0, "serviceName cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1428
    const-string v0, "Executor cannot be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1429
    const-string v0, "Listener cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1431
    array-length v0, p1

    if-eqz v0, :cond_3d

    .line 1435
    new-instance v0, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Landroid/companion/CompanionDeviceManager$OnActionResultListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;Landroid/companion/CompanionDeviceManager-IA;)V

    .line 1438
    :try_start_2a
    iget-object p3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object p4, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1439
    invoke-virtual {p4}, Landroid/content/Context;->getUserId()I

    move-result p4

    .line 1438
    invoke-interface {p3, p1, p2, v0, p4}, Landroid/companion/ICompanionDeviceManager;->setOnActionResultListener([ILjava/lang/String;Landroid/companion/IOnActionResultListener;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_37

    .line 1442
    nop

    .line 1443
    return-void

    .line 1440
    :catch_37
    move-exception p1

    .line 1441
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1432
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "associationIds cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setOnDevicePresenceEventListener([ILjava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/companion/DevicePresenceEvent;",
            ">;)V"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1353
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return-void

    .line 1356
    :cond_c
    const-string v0, "associationIds cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1357
    const-string/jumbo v0, "serviceName cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1358
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1359
    const-string v0, "Listener cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1361
    array-length v0, p1

    if-eqz v0, :cond_3d

    .line 1365
    new-instance v0, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Landroid/companion/CompanionDeviceManager$OnDevicePresenceEventListenerProxy;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/companion/CompanionDeviceManager-IA;)V

    .line 1368
    :try_start_2a
    iget-object p3, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object p4, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1369
    invoke-virtual {p4}, Landroid/content/Context;->getUserId()I

    move-result p4

    .line 1368
    invoke-interface {p3, p1, p2, v0, p4}, Landroid/companion/ICompanionDeviceManager;->setOnDevicePresenceEventListener([ILjava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_35} :catch_37

    .line 1372
    nop

    .line 1373
    return-void

    .line 1370
    :catch_37
    move-exception p1

    .line 1371
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1362
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "associationIds cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;)V
    .registers 5

    .line 1677
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1678
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    return-void

    .line 1682
    :cond_c
    const-string/jumbo v0, "request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1685
    :try_start_12
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1686
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1685
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_25

    .line 1689
    nop

    .line 1690
    return-void

    .line 1687
    :catch_25
    move-exception p1

    .line 1688
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startObservingDevicePresence(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1572
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1573
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void

    .line 1577
    :cond_c
    const-string v0, "address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1579
    :try_start_11
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1580
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1579
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_3c

    .line 1584
    nop

    .line 1585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1586
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1587
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 1588
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1589
    if-eqz v1, :cond_3b

    .line 1590
    nop

    .line 1591
    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    .line 1594
    :cond_3b
    return-void

    .line 1581
    :catch_3c
    move-exception p1

    .line 1582
    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1583
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist startSystemDataTransfer(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2058
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 2059
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    return-void

    .line 2064
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/companion/ICompanionDeviceManager;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_20

    .line 2069
    nop

    .line 2070
    return-void

    .line 2066
    :catch_20
    move-exception p1

    .line 2067
    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 2068
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startSystemDataTransfer(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/companion/CompanionException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .line 2095
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 2096
    const-string p1, "CDM_CompanionDeviceManager"

    const-string p2, "CompanionDeviceManager service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-void

    .line 2101
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    new-instance v3, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Landroid/companion/CompanionDeviceManager$SystemDataTransferCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/companion/CompanionDeviceManager-IA;)V

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/companion/ICompanionDeviceManager;->startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_25

    .line 2106
    nop

    .line 2107
    return-void

    .line 2103
    :catch_25
    move-exception p1

    .line 2104
    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    const-class p3, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {p2, p3}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 2105
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;)V
    .registers 5

    .line 1702
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1703
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return-void

    .line 1707
    :cond_c
    const-string/jumbo v0, "request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1710
    :try_start_12
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1711
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1710
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_23} :catch_25

    .line 1714
    nop

    .line 1715
    return-void

    .line 1712
    :catch_25
    move-exception p1

    .line 1713
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist stopObservingDevicePresence(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/companion/DeviceNotAssociatedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1620
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_c

    .line 1621
    const-string p1, "CDM_CompanionDeviceManager"

    const-string v0, "CompanionDeviceManager service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return-void

    .line 1625
    :cond_c
    const-string v0, "address cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1627
    :try_start_11
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 1628
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1627
    invoke-interface {v0, p1, v1, v2}, Landroid/companion/ICompanionDeviceManager;->legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_22} :catch_23

    .line 1631
    goto :goto_2d

    .line 1629
    :catch_23
    move-exception p1

    .line 1630
    invoke-virtual {p1}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-class v0, Landroid/companion/DeviceNotAssociatedException;

    invoke-static {p1, v0}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1632
    :goto_2d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1633
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1634
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 1635
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1636
    if-eqz v1, :cond_45

    .line 1637
    nop

    .line 1638
    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 1641
    :cond_45
    return-void
.end method
