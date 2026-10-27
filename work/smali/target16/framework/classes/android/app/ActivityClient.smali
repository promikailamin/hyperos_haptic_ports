.class public Landroid/app/ActivityClient;
.super Ljava/lang/Object;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityClient$ActivityClientControllerSingleton;
    }
.end annotation


# static fields
.field private static final blacklist INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 717
    new-instance v0, Landroid/app/ActivityClient$1;

    invoke-direct {v0}, Landroid/app/ActivityClient$1;-><init>()V

    sput-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    .line 724
    new-instance v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>(Landroid/app/ActivityClient-IA;)V

    sput-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityClient;-><init>()V

    return-void
.end method

.method private static blacklist getActivityClientController()Landroid/app/IActivityClientController;
    .registers 1

    .line 713
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iget-object v0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    .line 714
    if-eqz v0, :cond_7

    goto :goto_f

    :cond_7
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    invoke-virtual {v0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityClientController;

    :goto_f
    return-object v0
.end method

.method public static blacklist getInstance()Landroid/app/ActivityClient;
    .registers 1

    .line 698
    sget-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityClient;

    return-object v0
.end method

.method public static blacklist setActivityClientController(Landroid/app/IActivityClientController;)Landroid/app/IActivityClientController;
    .registers 2

    .line 709
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iput-object p0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    return-object p0
.end method


# virtual methods
.method public blacklist activityDestroyed(Landroid/os/IBinder;)V
    .registers 3

    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 118
    goto :goto_c

    .line 116
    :catch_8
    move-exception p1

    .line 117
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 119
    :goto_c
    return-void
.end method

.method public blacklist activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 5

    .line 52
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 55
    goto :goto_c

    .line 53
    :catch_8
    move-exception p1

    .line 54
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 56
    :goto_c
    return-void
.end method

.method public blacklist activityLocalRelaunch(Landroid/os/IBinder;)V
    .registers 3

    .line 124
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityLocalRelaunch(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 127
    goto :goto_c

    .line 125
    :catch_8
    move-exception p1

    .line 126
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
    :goto_c
    return-void
.end method

.method public blacklist activityPaused(Landroid/os/IBinder;)V
    .registers 3

    .line 91
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityPaused(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 94
    goto :goto_c

    .line 92
    :catch_8
    move-exception p1

    .line 93
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 95
    :goto_c
    return-void
.end method

.method public blacklist activityRefreshed(Landroid/os/IBinder;)V
    .registers 3

    .line 70
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRefreshed(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 73
    goto :goto_c

    .line 71
    :catch_8
    move-exception p1

    .line 72
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 74
    :goto_c
    return-void
.end method

.method public blacklist activityRelaunched(Landroid/os/IBinder;)V
    .registers 3

    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 136
    goto :goto_c

    .line 134
    :catch_8
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 137
    :goto_c
    return-void
.end method

.method public blacklist activityResumed(Landroid/os/IBinder;Z)V
    .registers 4

    .line 61
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->activityResumed(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 64
    goto :goto_c

    .line 62
    :catch_8
    move-exception p1

    .line 63
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 65
    :goto_c
    return-void
.end method

.method public blacklist activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Landroid/app/HandoffActivityData;Ljava/lang/CharSequence;)V
    .registers 7

    .line 101
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IActivityClientController;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Landroid/app/HandoffActivityData;Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 109
    goto :goto_e

    .line 107
    :catch_9
    move-exception v0

    move-object p1, v0

    .line 108
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 110
    :goto_e
    return-void
.end method

.method public blacklist activityTopResumedStateLost(Landroid/os/IBinder;)V
    .registers 3

    .line 82
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityTopResumedStateLost(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 85
    goto :goto_c

    .line 83
    :catch_8
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 86
    :goto_c
    return-void
.end method

.method public blacklist checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;I)I
    .registers 11

    .line 330
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    .line 331
    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 332
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {p3, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 330
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    return p1

    .line 333
    :catch_18
    move-exception v0

    move-object p1, v0

    .line 334
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    .registers 4

    .line 580
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 583
    goto :goto_c

    .line 581
    :catch_8
    move-exception p1

    .line 582
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 584
    :goto_c
    return-void
.end method

.method blacklist convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 3

    .line 356
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 357
    :catch_9
    move-exception p1

    .line 358
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 4

    .line 364
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 365
    :catch_9
    move-exception p1

    .line 366
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 5

    .line 622
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 625
    goto :goto_c

    .line 623
    :catch_8
    move-exception p1

    .line 624
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 626
    :goto_c
    return-void
.end method

.method blacklist enableTaskLocaleOverride(Landroid/os/IBinder;)V
    .registers 3

    .line 665
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->enableTaskLocaleOverride(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 668
    goto :goto_c

    .line 666
    :catch_8
    move-exception p1

    .line 667
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 669
    :goto_c
    return-void
.end method

.method blacklist enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 4

    .line 426
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 427
    :catch_9
    move-exception p1

    .line 428
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 6

    .line 184
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 186
    :catch_9
    move-exception p1

    .line 187
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 3

    .line 193
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 194
    :catch_9
    move-exception p1

    .line 195
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5

    .line 201
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 204
    goto :goto_c

    .line 202
    :catch_8
    move-exception p1

    .line 203
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 205
    :goto_c
    return-void
.end method

.method public blacklist getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4

    .line 319
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 321
    :catch_9
    move-exception p1

    .line 322
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I
    .registers 4

    .line 309
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 311
    :catch_9
    move-exception p1

    .line 312
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 3

    .line 268
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 269
    :catch_9
    move-exception p1

    .line 270
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 3

    .line 276
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 277
    :catch_9
    move-exception p1

    .line 278
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 284
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 285
    :catch_9
    move-exception p1

    .line 286
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getDisplayId(Landroid/os/IBinder;)I
    .registers 3

    .line 234
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getDisplayId(Landroid/os/IBinder;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 235
    :catch_9
    move-exception p1

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 300
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 301
    :catch_9
    move-exception p1

    .line 302
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 3

    .line 292
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 293
    :catch_9
    move-exception p1

    .line 294
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 3

    .line 348
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 349
    :catch_9
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 3

    .line 255
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 256
    :catch_9
    move-exception p1

    .line 257
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 4

    .line 242
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 243
    :catch_9
    move-exception p1

    .line 244
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .registers 3

    .line 613
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 616
    goto :goto_c

    .line 614
    :catch_8
    move-exception p1

    .line 615
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 617
    :goto_c
    return-void
.end method

.method blacklist isHandoffEnabled(Landroid/os/IBinder;)Z
    .registers 3

    .line 380
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isHandoffEnabled(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 381
    :catch_9
    move-exception p1

    .line 382
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist isHandoffFullTaskRecreationAllowed(Landroid/os/IBinder;)Z
    .registers 3

    .line 388
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isHandoffFullTaskRecreationAllowed(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 389
    :catch_9
    move-exception p1

    .line 390
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist isImmersive(Landroid/os/IBinder;)Z
    .registers 3

    .line 410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isImmersive(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 411
    :catch_9
    move-exception p1

    .line 412
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 4

    .line 681
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 683
    :catch_9
    move-exception p1

    .line 684
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 3

    .line 506
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 507
    :catch_9
    move-exception p1

    .line 508
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isTopOfTask(Landroid/os/IBinder;)Z
    .registers 3

    .line 218
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 219
    :catch_9
    move-exception p1

    .line 220
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 4

    .line 149
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 150
    :catch_9
    move-exception p1

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z
    .registers 7

    .line 166
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IActivityClientController;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    .line 168
    :catch_a
    move-exception v0

    move-object p1, v0

    .line 169
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .registers 4

    .line 646
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 649
    goto :goto_c

    .line 647
    :catch_8
    move-exception p1

    .line 648
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 650
    :goto_c
    return-void
.end method

.method blacklist overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    .registers 7

    .line 571
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IActivityClientController;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 575
    goto :goto_e

    .line 573
    :catch_9
    move-exception v0

    move-object p1, v0

    .line 574
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 576
    :goto_e
    return-void
.end method

.method blacklist overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 7

    .line 589
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IActivityClientController;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 593
    goto :goto_e

    .line 591
    :catch_9
    move-exception v0

    move-object p1, v0

    .line 592
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 594
    :goto_e
    return-void
.end method

.method blacklist registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 4

    .line 630
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 633
    goto :goto_c

    .line 631
    :catch_8
    move-exception p1

    .line 632
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 634
    :goto_c
    return-void
.end method

.method blacklist releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 3

    .line 175
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 176
    :catch_9
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 4

    .line 372
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 375
    goto :goto_c

    .line 373
    :catch_8
    move-exception p1

    .line 374
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 376
    :goto_c
    return-void
.end method

.method blacklist reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .registers 4

    .line 141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 144
    goto :goto_c

    .line 142
    :catch_8
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 145
    :goto_c
    return-void
.end method

.method blacklist reportSplashScreenAttached(Landroid/os/IBinder;)V
    .registers 3

    .line 657
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->splashScreenAttached(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 660
    goto :goto_c

    .line 658
    :catch_8
    move-exception p1

    .line 659
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 661
    :goto_c
    return-void
.end method

.method blacklist requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .registers 5

    .line 458
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 461
    goto :goto_c

    .line 459
    :catch_8
    move-exception p1

    .line 460
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 462
    :goto_c
    return-void
.end method

.method blacklist setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    .registers 4

    .line 691
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 694
    goto :goto_c

    .line 692
    :catch_8
    move-exception p1

    .line 693
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 695
    :goto_c
    return-void
.end method

.method blacklist setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    .registers 4

    .line 554
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 557
    goto :goto_c

    .line 555
    :catch_8
    move-exception p1

    .line 556
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 558
    :goto_c
    return-void
.end method

.method blacklist setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    .registers 3

    .line 210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_9
    move-exception p1

    .line 212
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist setHandoffEnabled(Landroid/os/IBinder;ZZ)V
    .registers 5

    .line 399
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->setHandoffEnabled(Landroid/os/IBinder;ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 405
    nop

    .line 406
    return-void

    .line 403
    :catch_9
    move-exception p1

    .line 404
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist setImmersive(Landroid/os/IBinder;Z)V
    .registers 4

    .line 418
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 421
    goto :goto_c

    .line 419
    :catch_8
    move-exception p1

    .line 420
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 422
    :goto_c
    return-void
.end method

.method blacklist setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 4

    .line 538
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 541
    goto :goto_c

    .line 539
    :catch_8
    move-exception p1

    .line 540
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 542
    :goto_c
    return-void
.end method

.method blacklist setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 4

    .line 434
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 437
    goto :goto_c

    .line 435
    :catch_8
    move-exception p1

    .line 436
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 438
    :goto_c
    return-void
.end method

.method blacklist setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .registers 4

    .line 598
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 601
    goto :goto_c

    .line 599
    :catch_8
    move-exception p1

    .line 600
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 602
    :goto_c
    return-void
.end method

.method public blacklist setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 4

    .line 340
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 343
    goto :goto_c

    .line 341
    :catch_8
    move-exception p1

    .line 342
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 344
    :goto_c
    return-void
.end method

.method blacklist setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .registers 4

    .line 442
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 445
    goto :goto_c

    .line 443
    :catch_8
    move-exception p1

    .line 444
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 446
    :goto_c
    return-void
.end method

.method blacklist setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 4

    .line 530
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 533
    goto :goto_c

    .line 531
    :catch_8
    move-exception p1

    .line 532
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 534
    :goto_c
    return-void
.end method

.method blacklist setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4

    .line 490
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 493
    goto :goto_c

    .line 491
    :catch_8
    move-exception p1

    .line 492
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 494
    :goto_c
    return-void
.end method

.method blacklist setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 4

    .line 546
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTurnScreenOn(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 549
    goto :goto_c

    .line 547
    :catch_8
    move-exception p1

    .line 548
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 550
    :goto_c
    return-void
.end method

.method blacklist setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 5

    .line 562
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 563
    :catch_9
    move-exception p1

    .line 564
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4

    .line 157
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 158
    :catch_9
    move-exception p1

    .line 159
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 4

    .line 498
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 499
    :catch_9
    move-exception p1

    .line 500
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method blacklist showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 3

    .line 482
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 485
    goto :goto_c

    .line 483
    :catch_8
    move-exception p1

    .line 484
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 486
    :goto_c
    return-void
.end method

.method blacklist startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    .line 514
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 517
    goto :goto_c

    .line 515
    :catch_8
    move-exception p1

    .line 516
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 518
    :goto_c
    return-void
.end method

.method blacklist startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 3

    .line 466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->startLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 469
    goto :goto_c

    .line 467
    :catch_8
    move-exception p1

    .line 468
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 470
    :goto_c
    return-void
.end method

.method blacklist stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 3

    .line 522
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 525
    goto :goto_c

    .line 523
    :catch_8
    move-exception p1

    .line 524
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 526
    :goto_c
    return-void
.end method

.method blacklist stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 3

    .line 474
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 477
    goto :goto_c

    .line 475
    :catch_8
    move-exception p1

    .line 476
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 478
    :goto_c
    return-void
.end method

.method blacklist toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 3

    .line 450
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 453
    goto :goto_c

    .line 451
    :catch_8
    move-exception p1

    .line 452
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 454
    :goto_c
    return-void
.end method

.method blacklist unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .registers 3

    .line 638
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->unregisterRemoteAnimations(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 641
    goto :goto_c

    .line 639
    :catch_8
    move-exception p1

    .line 640
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 642
    :goto_c
    return-void
.end method

.method blacklist willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 3

    .line 226
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 227
    :catch_9
    move-exception p1

    .line 228
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
