.class public Lcom/miui/mishare/app/connect/MiShareConnectivity;
.super Ljava/lang/Object;
.source "MiShareConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CANCEL:Ljava/lang/String; = "com.miui.mishare.action.NOTIFICATION_CANCEL_CLICK"

.field public static final blacklist ACTION_SEND_TASK:Ljava/lang/String; = "com.miui.mishare.action.SEND_TASK"

.field public static final blacklist ACTION_TASK_STATE:Ljava/lang/String; = "com.miui.mishare.connectivity.TASK_STATE"

.field private static final blacklist ACTIVITY_NAME:Ljava/lang/String; = "com.miui.mishare.activity.TransActivity"

.field public static final blacklist EXTRA_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final blacklist EXTRA_MISHARE_DEVICE:Ljava/lang/String; = "device_id"

.field public static final blacklist EXTRA_MISHARE_TASK_STATE:Ljava/lang/String; = "state"

.field public static final blacklist EXTRA_SHOW_PROGRESS:Ljava/lang/String; = "showProgress"

.field public static final blacklist EXTRA_TASK:Ljava/lang/String; = "task"

.field public static final blacklist EXTRA_TASK_CURRENT:Ljava/lang/String; = "current"

.field public static final blacklist EXTRA_TASK_TOTAL:Ljava/lang/String; = "total"

.field public static final blacklist MISHARE_CONNECTED:I = 0x6

.field public static final blacklist MISHARE_CONNECTING:I = 0x5

.field public static final blacklist MISHARE_DISABLED:I = 0x1

.field public static final blacklist MISHARE_DISABLING:I = 0x7

.field public static final blacklist MISHARE_DISCOVERING:I = 0x4

.field public static final blacklist MISHARE_ENABLED:I = 0x3

.field public static final blacklist MISHARE_ENABLING:I = 0x2

.field private static final blacklist MISHARE_MAX_REBIND_LIMIT:I = 0x3

.field public static final blacklist MISHARE_UNAVAILABLE:I = 0x0

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.miui.mishare.connectivity"

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "com.miui.mishare.connectivity.MiShareService"

.field private static final blacklist TAG:Ljava/lang/String; = "MiShareConnectivity"

.field private static blacklist sInstance:Lcom/miui/mishare/app/connect/MiShareConnectivity;


# instance fields
.field private blacklist mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/app/Activity;

.field private blacklist mIsBound:Z

.field private blacklist mRebindCount:I

.field private blacklist mService:Lcom/miui/mishare/IMiShareService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Lcom/miui/mishare/app/connect/MiShareConnectivity;Lcom/miui/mishare/IMiShareService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mRebindCount:I

    .line 72
    new-instance v0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;-><init>(Lcom/miui/mishare/app/connect/MiShareConnectivity;)V

    iput-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mConnection:Landroid/content/ServiceConnection;

    .line 130
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    .line 131
    return-void
.end method

.method private blacklist ensureServiceBound()V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v0, :cond_5

    .line 460
    return-void

    .line 458
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "service not bound"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getClipData(Ljava/util/List;)Landroid/content/ClipData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    .line 415
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p1, :cond_42

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_42

    .line 418
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 419
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 421
    .local v1, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipDescription;

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mishare data"

    invoke-direct {v2, v4, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 422
    .local v2, "des":Landroid/content/ClipDescription;
    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 424
    .local v3, "data":Landroid/content/ClipData;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 425
    .local v4, "count":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2c
    if-ge v5, v4, :cond_41

    .line 426
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 427
    .local v6, "uriItem":Landroid/net/Uri;
    if-eqz v6, :cond_3e

    .line 428
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 425
    .end local v6    # "uriItem":Landroid/net/Uri;
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 431
    .end local v5    # "i":I
    :cond_41
    return-object v3

    .line 416
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "des":Landroid/content/ClipDescription;
    .end local v3    # "data":Landroid/content/ClipData;
    .end local v4    # "count":I
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist isAvailable(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_a

    .line 116
    return v1

    .line 118
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.mishare.connectivity"

    const-string v3, "com.miui.mishare.connectivity.MiShareService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 122
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1d

    .line 123
    return v1

    .line 125
    :cond_1d
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 126
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_28

    const/4 v1, 0x1

    :cond_28
    return v1
.end method


# virtual methods
.method public blacklist bind(Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;)Z
    .registers 6
    .param p1, "callback"    # Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    .line 140
    iput-object p1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.mishare.connectivity"

    const-string v2, "com.miui.mishare.connectivity.MiShareService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mIsBound:Z

    .line 144
    return v1
.end method

.method public blacklist cancel(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 7
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 439
    new-instance v0, Lcom/miui/mishare/MiShareTask;

    invoke-direct {v0}, Lcom/miui/mishare/MiShareTask;-><init>()V

    .line 440
    .local v0, "task":Lcom/miui/mishare/MiShareTask;
    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->device:Lcom/miui/mishare/RemoteDevice;

    .line 441
    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->taskId:Ljava/lang/String;

    .line 442
    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->files:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/mishare/MiShareTask;->clipData:Landroid/content/ClipData;

    .line 443
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.mishare.action.NOTIFICATION_CANCEL_CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "task"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 446
    iget-object v3, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    const-string v4, "device_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 448
    const-string v3, "com.miui.mishare.connectivity"

    const-string v4, "com.miui.mishare.connectivity.MiShareService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v3, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 450
    return-void
.end method

.method public blacklist checkServiceBound()Z
    .registers 2

    .line 453
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist closeScreenThrow()V
    .registers 4

    .line 360
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 361
    invoke-interface {v1}, Lcom/miui/mishare/IMiShareService;->closeScreenThrow()V

    goto :goto_f

    .line 363
    :cond_a
    const-string v1, "closeScreenThrow service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 367
    :goto_f
    goto :goto_16

    .line 365
    :catch_10
    move-exception v1

    .line 366
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "closeScreenThrow: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist enable()V
    .registers 4

    .line 231
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 232
    invoke-interface {v1}, Lcom/miui/mishare/IMiShareService;->enable()V

    goto :goto_f

    .line 234
    :cond_a
    const-string v1, "enable service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 238
    :goto_f
    goto :goto_16

    .line 236
    :catch_10
    move-exception v1

    .line 237
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "enable: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist getServiceState()I
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 216
    return v1

    .line 219
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/miui/mishare/IMiShareService;->getState()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 220
    :catch_b
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MiShareConnectivity"

    const-string v3, "getServiceState: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist openScreenThrow()V
    .registers 4

    .line 348
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 349
    invoke-interface {v1}, Lcom/miui/mishare/IMiShareService;->openScreenThrow()V

    goto :goto_f

    .line 351
    :cond_a
    const-string v1, "openScreenThrow service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 355
    :goto_f
    goto :goto_16

    .line 353
    :catch_10
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "openScreenThrow: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist reBindService()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    if-eqz v0, :cond_10

    .line 102
    iget v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mRebindCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    .line 103
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mRebindCount:I

    .line 104
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->bind(Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;)Z

    .line 107
    :cond_10
    return-void
.end method

.method public blacklist registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/miui/mishare/IScreenThrowListener;

    .line 324
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 325
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V

    goto :goto_f

    .line 327
    :cond_a
    const-string v1, "registerScreenThrowListener service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 331
    :goto_f
    goto :goto_16

    .line 329
    :catch_10
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "registerScreenThrowListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/miui/mishare/IMiShareStateListener;

    .line 170
    const-string v0, "MiShareConnectivity"

    if-eqz p1, :cond_19

    .line 174
    :try_start_4
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_c

    .line 175
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    goto :goto_11

    .line 177
    :cond_c
    const-string v1, "registerStateListener service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 181
    :goto_11
    goto :goto_18

    .line 179
    :catch_12
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "registerStateListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 171
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/miui/mishare/IMiShareTaskStateListener;

    .line 297
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 298
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    goto :goto_f

    .line 300
    :cond_a
    const-string v1, "registerTaskStateListener service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 304
    :goto_f
    goto :goto_16

    .line 302
    :catch_10
    move-exception v1

    .line 303
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "registerTaskStateListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist resetReBindCount()V
    .registers 2

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mRebindCount:I

    .line 149
    return-void
.end method

.method public blacklist resetRebindData()V
    .registers 3

    .line 91
    iget-boolean v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mIsBound:Z

    if-eqz v0, :cond_12

    .line 92
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mIsBound:Z

    .line 97
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    .line 98
    return-void
.end method

.method public blacklist sendData(Lcom/miui/mishare/MiShareTask;)V
    .registers 7
    .param p1, "task"    # Lcom/miui/mishare/MiShareTask;

    .line 374
    if-eqz p1, :cond_75

    .line 377
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-nez v0, :cond_e

    .line 378
    const-string v0, "MiShareConnectivity"

    const-string v1, "sendData service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 381
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p1, Lcom/miui/mishare/MiShareTask;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 383
    iget-object v2, p1, Lcom/miui/mishare/MiShareTask;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-nez v2, :cond_25

    .line 384
    goto :goto_41

    .line 386
    :cond_25
    iget-object v2, p1, Lcom/miui/mishare/MiShareTask;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 387
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_32

    .line 388
    goto :goto_41

    .line 390
    :cond_32
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 391
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 394
    .end local v1    # "i":I
    :cond_44
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.mishare.action.SEND_TASK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.mishare.connectivity"

    const-string v3, "com.miui.mishare.activity.TransActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_63

    .line 397
    invoke-direct {p0, v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->getClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 398
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    :cond_63
    const-string v2, "task"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    if-eqz v2, :cond_74

    .line 402
    new-instance v3, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;

    invoke-direct {v3, p0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity$2;-><init>(Lcom/miui/mishare/app/connect/MiShareConnectivity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 412
    :cond_74
    return-void

    .line 375
    .end local v0    # "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null task"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)Z
    .registers 6
    .param p1, "callback"    # Lcom/miui/mishare/IMiShareDiscoverCallback;

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_9

    .line 250
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->discover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    .line 251
    const/4 v0, 0x1

    .line 255
    :cond_9
    goto :goto_12

    .line 253
    :catch_a
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MiShareConnectivity"

    const-string v3, "startDiscover: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return v0
.end method

.method public blacklist startDiscoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)Z
    .registers 7
    .param p1, "callback"    # Lcom/miui/mishare/IMiShareDiscoverCallback;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "result":Z
    :try_start_1
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_9

    .line 268
    invoke-interface {v1, p1, p2}, Lcom/miui/mishare/IMiShareService;->discoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    .line 269
    const/4 v0, 0x1

    .line 273
    :cond_9
    goto :goto_12

    .line 271
    :catch_a
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MiShareConnectivity"

    const-string v3, "discoverWithIntent: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    return v0
.end method

.method public blacklist stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/miui/mishare/IMiShareDiscoverCallback;

    .line 282
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 283
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    goto :goto_f

    .line 285
    :cond_a
    const-string v1, "stopDiscover service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 289
    :goto_f
    goto :goto_16

    .line 287
    :catch_10
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "startDiscover: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist unbind()V
    .registers 3

    .line 156
    invoke-virtual {p0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->resetReBindCount()V

    .line 157
    iget-boolean v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mIsBound:Z

    if-eqz v0, :cond_18

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    .line 159
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v0, :cond_15

    .line 160
    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mIsBound:Z

    .line 164
    :cond_18
    return-void
.end method

.method public blacklist unregisterScreenThrowListener()V
    .registers 4

    .line 336
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 337
    invoke-interface {v1}, Lcom/miui/mishare/IMiShareService;->unregisterScreenThrowListener()V

    goto :goto_f

    .line 339
    :cond_a
    const-string v1, "unregisterScreenThrowListener service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 343
    :goto_f
    goto :goto_16

    .line 341
    :catch_10
    move-exception v1

    .line 342
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "unregisterScreenThrowListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method public blacklist unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/miui/mishare/IMiShareStateListener;

    .line 188
    const-string v0, "MiShareConnectivity"

    if-eqz p1, :cond_19

    .line 192
    :try_start_4
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_c

    .line 193
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    goto :goto_11

    .line 195
    :cond_c
    const-string v1, "unregisterStateListener service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 199
    :goto_11
    goto :goto_18

    .line 197
    :catch_12
    move-exception v1

    .line 198
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "unregisterStateListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void

    .line 189
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/miui/mishare/IMiShareTaskStateListener;

    .line 312
    const-string v0, "MiShareConnectivity"

    :try_start_2
    iget-object v1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_a

    .line 313
    invoke-interface {v1, p1}, Lcom/miui/mishare/IMiShareService;->unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    goto :goto_f

    .line 315
    :cond_a
    const-string v1, "unregisterTaskStateListener service not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 319
    :goto_f
    goto :goto_16

    .line 317
    :catch_10
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "unregisterTaskStateListener: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method
