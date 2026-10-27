.class public Lcom/android/server/contextualsearch/ContextualSearchManagerService;
.super Lcom/android/server/SystemService;
.source "ContextualSearchManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContextualSearchManagerService"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field public final mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

.field public mTemporaryHandler:Landroid/os/Handler;

.field public mTemporaryPackage:Ljava/lang/String;

.field public mTokenValidDurationMs:J

.field public final mUserManager:Landroid/os/UserManager;

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$k9b7eypSmzvUjeSGn7jNn--OxTU(ILjava/lang/String;I)Landroid/media/projection/IMediaProjection;
    .registers 10

    .line 423
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p0

    move-object v3, p1

    move v6, p2

    .line 426
    invoke-interface/range {v1 .. v6}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZI)Landroid/media/projection/IMediaProjection;

    move-result-object p0

    const/4 p1, 0x1

    .line 429
    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjection;->setRecordingOverlay(Z)V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAssistDataRequester(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/am/AssistDataRequester;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAtmInternal(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)Landroid/app/contextualsearch/IContextualSearchCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmStateCallback(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceForegroundApp(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceForegroundApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchIntent(ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetResolvedLaunchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;I)Landroid/content/Intent;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getResolvedLaunchIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTokenValidDurationMs(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getTokenValidDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$minvokeContextualSearchIntent(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/content/Intent;ILandroid/app/contextualsearch/ContextualSearchConfig;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->invokeContextualSearchIntent(Landroid/content/Intent;ILandroid/app/contextualsearch/ContextualSearchConfig;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v4, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    iput-object v4, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    const-wide/32 v0, 0x927c0

    .line 174
    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 183
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 184
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 185
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 184
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 186
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 187
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 186
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 188
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 189
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 190
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    .line 192
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 193
    new-instance v0, Lcom/android/server/am/AssistDataRequester;

    const-string/jumbo v1, "window"

    .line 195
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    const-class v1, Landroid/app/AppOpsManager;

    .line 196
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/AppOpsManager;

    const/16 v6, 0x31

    const/16 v7, 0x32

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 4

    .line 456
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    const-string v1, "android.permission.ACCESS_CONTEXTUAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 458
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->isCallerTemporary()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_42

    .line 459
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Cannot call "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 461
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    :goto_42
    return-void
.end method

.method public static getDisplayIdFromConfig(Landroid/app/contextualsearch/ContextualSearchConfig;)I
    .registers 3

    if-eqz p0, :cond_f

    .line 506
    invoke-virtual {p0}, Landroid/app/contextualsearch/ContextualSearchConfig;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_f

    .line 509
    :cond_a
    invoke-virtual {p0}, Landroid/app/contextualsearch/ContextualSearchConfig;->getDisplayId()I

    move-result p0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final enforceForegroundApp(Ljava/lang/String;)V
    .registers 5

    .line 472
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    const/4 v2, 0x2

    if-gt p0, v2, :cond_18

    return-void

    .line 478
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: Cannot call "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " without a foreground activity."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 481
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceOverridingPermission(Ljava/lang/String;)V
    .registers 3

    .line 486
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_46

    .line 487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_46

    .line 488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_17

    goto :goto_46

    .line 489
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: Cannot override Contextual Search. Called "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    :goto_46
    return-void
.end method

.method public final getContextualSearchIntent(ILandroid/app/contextualsearch/ContextualSearchConfig;ILjava/lang/String;Landroid/app/contextualsearch/CallbackToken;)Landroid/content/Intent;
    .registers 22

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 328
    invoke-virtual {v1, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getResolvedLaunchIntent(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return-object v3

    :cond_c
    const v4, 0x10058000

    .line 335
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_1b

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/app/contextualsearch/ContextualSearchConfig;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    :cond_1b
    const-string v4, "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 341
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 344
    const-string v4, "android.app.contextualsearch.extra.ENTRYPOINT"

    move/from16 v5, p1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v4, "android.app.contextualsearch.extra.TOKEN"

    move-object/from16 v5, p5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_3b

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/app/contextualsearch/ContextualSearchConfig;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 354
    :cond_3b
    const-string v4, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v5, p4

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v4, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isAssistDataAllowed()Z

    move-result v4

    .line 357
    iget-object v5, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v5

    .line 358
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_61
    :goto_61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityAssistInfo;

    if-eqz v4, :cond_81

    .line 364
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityAssistInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityAssistInfo;->getActivityToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_81
    iget-object v9, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityAssistInfo;->getUserId()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v8

    if-eqz v8, :cond_61

    const/4 v6, 0x1

    goto :goto_61

    .line 371
    :cond_8f
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v5, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v13, v8, v9, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    if-eqz v4, :cond_b5

    move v5, v6

    .line 375
    :try_start_a1
    iget-object v6, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ab} :catch_ac

    goto :goto_b6

    :catch_ac
    move-exception v0

    .line 385
    sget-object v6, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->TAG:Ljava/lang/String;

    const-string v7, "Could not request assist data"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b6

    :cond_b5
    move v5, v6

    .line 388
    :goto_b6
    invoke-static/range {p2 .. p2}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getDisplayIdFromConfig(Landroid/app/contextualsearch/ContextualSearchConfig;)I

    move-result v0

    .line 390
    iget-object v6, v1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 391
    invoke-virtual {v6, v12, v0}, Lcom/android/server/wm/WindowManagerInternal;->takeContextualSearchScreenshot(II)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object v6

    if-eqz v6, :cond_c6

    .line 392
    invoke-virtual {v6}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_c6
    if-eqz v3, :cond_dc

    .line 395
    const-string v7, "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"

    .line 396
    invoke-virtual {v6}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v6

    .line 395
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v4, :cond_dc

    .line 399
    const-string v6, "android.app.contextualsearch.extra.SCREENSHOT"

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    :cond_dc
    invoke-virtual {v1, v12, v13, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getMediaProjection(ILjava/lang/String;I)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 405
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    .line 406
    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 405
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 409
    :cond_eb
    const-string v0, "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v4, :cond_f7

    .line 413
    const-string v0, "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_f7
    return-object v2
.end method

.method public final getContextualSearchPackageName()Ljava/lang/String;
    .registers 3

    .line 217
    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_13

    .line 219
    :cond_6
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    .line 220
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final getMediaProjection(ILjava/lang/String;I)Landroid/media/projection/IMediaProjection;
    .registers 4

    .line 422
    new-instance p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;I)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/projection/IMediaProjection;

    return-object p0
.end method

.method public final getResolvedLaunchIntent(I)Landroid/content/Intent;
    .registers 6

    .line 292
    monitor-enter p0

    .line 295
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 299
    monitor-exit p0

    return-object v2

    :catchall_e
    move-exception p1

    goto :goto_3b

    .line 301
    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0xc0000

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 308
    monitor-exit p0

    return-object v2

    .line 310
    :cond_2a
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_36

    .line 313
    monitor-exit p0

    return-object v2

    .line 315
    :cond_36
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    monitor-exit p0

    return-object v1

    .line 317
    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_e

    throw p1
.end method

.method public final getTokenValidDurationMs()J
    .registers 3

    .line 285
    monitor-enter p0

    .line 286
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 287
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final invokeContextualSearchIntent(Landroid/content/Intent;ILandroid/app/contextualsearch/ContextualSearchConfig;)I
    .registers 14

    .line 442
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V

    .line 445
    invoke-static {p3}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getDisplayIdFromConfig(Landroid/app/contextualsearch/ContextualSearchConfig;)I

    move-result p3

    .line 446
    invoke-virtual {v0, p3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 447
    sget-object p3, Landroid/window/DesktopExperienceFlags;->ENABLE_FREEFORM_DISPLAY_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p3}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 448
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 450
    :cond_21
    iget-object v2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/4 v7, 0x0

    .line 452
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    move-object v3, p1

    move v9, p2

    .line 450
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityWithScreenshot(Landroid/content/Intent;Ljava/lang/String;IILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result p0

    return p0
.end method

.method public final isCallerTemporary()Z
    .registers 4

    .line 498
    monitor-enter p0

    .line 499
    :try_start_1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 501
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :catchall_1d
    move-exception v0

    goto :goto_22

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    monitor-exit p0

    return v0

    .line 502
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_1d

    throw v0
.end method

.method public onStart()V
    .registers 3

    .line 204
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Lcom/android/server/contextualsearch/ContextualSearchManagerService-IA;)V

    const-string v1, "contextual_search"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public resetTemporaryPackage()V
    .registers 4

    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    const-string/jumbo v0, "resetTemporaryPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_1c

    .line 231
    :cond_15
    :goto_15
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 233
    monitor-exit p0

    return-void

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_13

    throw v0
.end method

.method public resetTokenValidDurationMs()V
    .registers 2

    const v0, 0x927c0

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->setTokenValidDurationMs(I)V

    return-void
.end method

.method public setTemporaryPackage(Ljava/lang/String;I)V
    .registers 8

    .line 237
    monitor-enter p0

    .line 238
    :try_start_1
    const-string/jumbo v0, "setTemporaryPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    const v0, 0x1d4c0

    if-gt p2, v0, :cond_31

    .line 244
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 245
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    goto :goto_24

    :catchall_1f
    move-exception p1

    goto :goto_4d

    .line 258
    :cond_21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    :goto_24
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->updateSecureSetting()V

    .line 262
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    monitor-exit p0

    return-void

    .line 241
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max duration is 120000 (called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :goto_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_1f

    throw p1
.end method

.method public setTokenValidDurationMs(I)V
    .registers 5

    .line 272
    monitor-enter p0

    .line 273
    :try_start_1
    const-string/jumbo v0, "setTokenValidDurationMs"

    invoke-virtual {p0, v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    const v0, 0x927c0

    if-gt p1, v0, :cond_13

    int-to-long v0, p1

    .line 279
    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 281
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    goto :goto_2f

    .line 275
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Token max duration is 600000 (called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_11

    throw p1
.end method

.method public final updateSecureSetting()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contextual_search_package"

    .line 213
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
