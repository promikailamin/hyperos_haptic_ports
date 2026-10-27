.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;,
        Landroid/media/projection/MediaProjectionManager$Callback;
    }
.end annotation


# static fields
.field public static final greylist-max-o EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final blacklist EXTRA_LAUNCH_COOKIE:Ljava/lang/String; = "android.media.projection.extra.EXTRA_LAUNCH_COOKIE"

.field public static final greylist-max-o EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field public static final blacklist EXTRA_MEDIA_PROJECTION_CONFIG:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION_CONFIG"

.field public static final blacklist OVERRIDE_DISABLE_MEDIA_PROJECTION_SINGLE_APP_OPTION:J = 0x12e3782aL

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final greylist-max-o TYPE_MIRRORING:I = 0x1

.field public static final greylist-max-o TYPE_PRESENTATION:I = 0x2

.field public static final greylist-max-o TYPE_SCREEN_CAPTURE:I


# instance fields
.field private greylist-max-o mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 131
    const-string p1, "media_projection"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object p1

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 133
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    .line 134
    return-void
.end method

.method private blacklist checkAppContentPrerequisites()V
    .registers 5

    .line 216
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.projection.AppContentProjectionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 220
    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResolveInfo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_2d

    const-string v3, "null"

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaProjectionManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v0, :cond_5c

    .line 230
    if-eqz v0, :cond_5b

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 232
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 233
    const-string v1, "Service declaring action %s must check %s"

    invoke-virtual {v1, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_5b
    return-void

    .line 224
    :cond_5c
    const-string v0, "Could not resolve service declaring an intent-filter with android.media.projection.AppContentProjectionService"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .registers 5

    .line 358
    const-string v0, "MediaProjectionManager"

    if-eqz p1, :cond_1b

    .line 362
    new-instance v1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    invoke-direct {v1, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    .line 363
    iget-object p2, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :try_start_e
    iget-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {p1, v1}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 368
    goto :goto_1a

    .line 366
    :catch_14
    move-exception p1

    .line 367
    const-string p2, "Unable to add callbacks to MediaProjection service"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    :goto_1a
    return-void

    .line 359
    :cond_1b
    const-string p1, "Content Recording: cannot add null callback"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createScreenCaptureIntent()Landroid/content/Intent;
    .registers 4

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 160
    return-object v0
.end method

.method public blacklist createScreenCaptureIntent(Landroid/app/ActivityOptions$LaunchCookie;)Landroid/content/Intent;
    .registers 4

    .line 251
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 252
    const-string v1, "android.media.projection.extra.EXTRA_LAUNCH_COOKIE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    return-object v0
.end method

.method public whitelist createScreenCaptureIntent(Landroid/media/projection/MediaProjectionConfig;)Landroid/content/Intent;
    .registers 4

    .line 205
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionConfig;->isOwnAppContentProvided()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager;->checkAppContentPrerequisites()V

    .line 210
    :cond_f
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 211
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION_CONFIG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    return-object v0
.end method

.method public greylist-max-o getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 333
    :catch_7
    move-exception v0

    .line 334
    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to get the active projection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .registers 5

    .line 314
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1c

    if-nez p2, :cond_7

    goto :goto_1c

    .line 317
    :cond_7
    const-string p1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 318
    if-nez p1, :cond_10

    .line 319
    return-object v1

    .line 323
    :cond_10
    new-instance p2, Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object p2

    .line 315
    :cond_1c
    :goto_1c
    return-object v1
.end method

.method public greylist-max-o removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .registers 4

    .line 376
    const-string v0, "MediaProjectionManager"

    if-eqz p1, :cond_1d

    .line 380
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    .line 382
    if-eqz p1, :cond_1b

    .line 383
    :try_start_e
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, p1}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_1b

    .line 385
    :catch_14
    move-exception p1

    .line 386
    const-string v1, "Unable to add callbacks to MediaProjection service"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 387
    :cond_1b
    :goto_1b
    nop

    .line 388
    :goto_1c
    return-void

    .line 377
    :cond_1d
    const-string p1, "ContentRecording: cannot remove null callback"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist stopActiveProjection(I)V
    .registers 4

    .line 345
    const-string v0, "MediaProjectionManager"

    :try_start_2
    const-string v1, "Content Recording: stopping active projection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, p1}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 349
    goto :goto_13

    .line 347
    :catch_d
    move-exception p1

    .line 348
    const-string v1, "Unable to stop the currently active media projection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    :goto_13
    return-void
.end method
