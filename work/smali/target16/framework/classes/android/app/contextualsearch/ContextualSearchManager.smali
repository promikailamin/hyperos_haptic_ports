.class public final Landroid/app/contextualsearch/ContextualSearchManager;
.super Ljava/lang/Object;
.source "ContextualSearchManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/ContextualSearchManager$Entrypoint;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_LAUNCH_CONTEXTUAL_SEARCH:Ljava/lang/String; = "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ENTRYPOINT_LONG_PRESS_HOME:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_LONG_PRESS_META:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_LONG_PRESS_NAV_HANDLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_LONG_PRESS_OVERVIEW:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_OVERVIEW_ACTION:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_OVERVIEW_MENU:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ENTRYPOINT_SYSTEM_ACTION:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ENTRYPOINT:Ljava/lang/String; = "android.app.contextualsearch.extra.ENTRYPOINT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FLAG_SECURE_FOUND:Ljava/lang/String; = "android.app.contextualsearch.extra.FLAG_SECURE_FOUND"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_INVOCATION_TIME_MS:Ljava/lang/String; = "android.app.contextualsearch.extra.INVOCATION_TIME_MS"

.field public static final blacklist EXTRA_IS_AUDIO_PLAYING:Ljava/lang/String; = "android.app.contextualsearch.extra.IS_AUDIO_PLAYING"

.field public static final whitelist EXTRA_IS_MANAGED_PROFILE_VISIBLE:Ljava/lang/String; = "android.app.contextualsearch.extra.IS_MANAGED_PROFILE_VISIBLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SCREENSHOT:Ljava/lang/String; = "android.app.contextualsearch.extra.SCREENSHOT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_TOKEN:Ljava/lang/String; = "android.app.contextualsearch.extra.TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VISIBLE_PACKAGE_NAMES:Ljava/lang/String; = "android.app.contextualsearch.extra.VISIBLE_PACKAGE_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FEATURE_CONTEXTUAL_SEARCH:Ljava/lang/String; = "com.google.android.feature.CONTEXTUAL_SEARCH"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VALID_ENTRYPOINT_VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mService:Landroid/app/contextualsearch/IContextualSearchManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 240
    new-instance v0, Ljava/util/HashSet;

    .line 241
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 242
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 243
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 244
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 245
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 246
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 247
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Integer;

    move-result-object v1

    .line 240
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->VALID_ENTRYPOINT_VALUES:Ljava/util/Set;

    .line 250
    const-class v0, Landroid/app/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    .line 260
    return-void
.end method

.method private blacklist startContextualSearchInternal(ILandroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 5

    .line 350
    sget-object v0, Landroid/app/contextualsearch/ContextualSearchManager;->VALID_ENTRYPOINT_VALUES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 357
    :try_start_c
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    invoke-interface {v0, p1, p2}, Landroid/app/contextualsearch/IContextualSearchManager;->startContextualSearch(ILandroid/app/contextualsearch/ContextualSearchConfig;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 361
    goto :goto_16

    .line 358
    :catch_12
    move-exception p1

    .line 360
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 362
    :goto_16
    return-void

    .line 351
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid entrypoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public whitelist isContextualSearchAvailable()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 279
    :try_start_0
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    invoke-interface {v0}, Landroid/app/contextualsearch/IContextualSearchManager;->isContextualSearchAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 280
    :catch_7
    move-exception v0

    .line 282
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist startContextualSearch(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/contextualsearch/ContextualSearchManager;->startContextualSearchInternal(ILandroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 312
    return-void
.end method

.method public whitelist startContextualSearch(ILandroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 341
    invoke-direct {p0, p1, p2}, Landroid/app/contextualsearch/ContextualSearchManager;->startContextualSearchInternal(ILandroid/app/contextualsearch/ContextualSearchConfig;)V

    .line 342
    return-void
.end method

.method public whitelist startContextualSearch(Landroid/app/Activity;Landroid/app/contextualsearch/ContextualSearchConfig;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 392
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :try_start_3
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchManager;->mService:Landroid/app/contextualsearch/IContextualSearchManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/app/contextualsearch/IContextualSearchManager;->startContextualSearchForActivity(Landroid/os/IBinder;Landroid/app/contextualsearch/ContextualSearchConfig;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    .line 399
    goto :goto_11

    .line 396
    :catch_d
    move-exception p1

    .line 398
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 400
    :goto_11
    return-void
.end method
