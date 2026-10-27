.class public Lmiui/security/StorageRestrictedPathManager;
.super Ljava/lang/Object;
.source "StorageRestrictedPathManager.java"


# static fields
.field private static final blacklist KEY_ISOLATED_GALLERY_PATH:Ljava/lang/String; = "key_isolated_gallery_path"

.field private static final blacklist KEY_ISOLATED_SOCIALITY_PATH:Ljava/lang/String; = "key_isolated_sociality_path"

.field public static final blacklist SPLIT_MULTI_PATH:Ljava/lang/String; = ";"

.field private static final blacklist TAG:Ljava/lang/String; = "StorageRestrictedPathManager"

.field private static final blacklist URI_ISOLATED_GALLERY_PATH:Landroid/net/Uri;

.field private static final blacklist URI_ISOLATED_SOCIALITY_PATH:Landroid/net/Uri;

.field private static blacklist sInstance:Lmiui/security/StorageRestrictedPathManager;


# instance fields
.field private final blacklist mGalleryPathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSocialityPathSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGalleryPathSet(Lmiui/security/StorageRestrictedPathManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lmiui/security/StorageRestrictedPathManager;->mGalleryPathSet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSocialityPathSet(Lmiui/security/StorageRestrictedPathManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lmiui/security/StorageRestrictedPathManager;->mSocialityPathSet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePolicy(Lmiui/security/StorageRestrictedPathManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/security/StorageRestrictedPathManager;->updatePolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetURI_ISOLATED_GALLERY_PATH()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lmiui/security/StorageRestrictedPathManager;->URI_ISOLATED_GALLERY_PATH:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetURI_ISOLATED_SOCIALITY_PATH()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lmiui/security/StorageRestrictedPathManager;->URI_ISOLATED_SOCIALITY_PATH:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "key_isolated_gallery_path"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/security/StorageRestrictedPathManager;->URI_ISOLATED_GALLERY_PATH:Landroid/net/Uri;

    .line 33
    const-string v0, "key_isolated_sociality_path"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/security/StorageRestrictedPathManager;->URI_ISOLATED_SOCIALITY_PATH:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/security/StorageRestrictedPathManager;->mGalleryPathSet:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/security/StorageRestrictedPathManager;->mSocialityPathSet:Ljava/util/Set;

    .line 45
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/security/StorageRestrictedPathManager;
    .registers 2

    const-class v0, Lmiui/security/StorageRestrictedPathManager;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lmiui/security/StorageRestrictedPathManager;->sInstance:Lmiui/security/StorageRestrictedPathManager;

    if-nez v1, :cond_e

    .line 39
    new-instance v1, Lmiui/security/StorageRestrictedPathManager;

    invoke-direct {v1}, Lmiui/security/StorageRestrictedPathManager;-><init>()V

    sput-object v1, Lmiui/security/StorageRestrictedPathManager;->sInstance:Lmiui/security/StorageRestrictedPathManager;

    .line 41
    :cond_e
    sget-object v1, Lmiui/security/StorageRestrictedPathManager;->sInstance:Lmiui/security/StorageRestrictedPathManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist updatePolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p3, "targetSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 67
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "rawPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 69
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "galleryPathArray":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy has filled with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StorageRestrictedPathManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v1    # "galleryPathArray":[Ljava/lang/String;
    :cond_3c
    return-void
.end method


# virtual methods
.method public blacklist getRestrictedPathSet(I)Ljava/util/Set;
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    packed-switch p1, :pswitch_data_10

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 80
    :pswitch_9
    iget-object v0, p0, Lmiui/security/StorageRestrictedPathManager;->mSocialityPathSet:Ljava/util/Set;

    return-object v0

    .line 78
    :pswitch_c
    iget-object v0, p0, Lmiui/security/StorageRestrictedPathManager;->mGalleryPathSet:Ljava/util/Set;

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x2732
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lmiui/security/StorageRestrictedPathManager$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lmiui/security/StorageRestrictedPathManager$1;-><init>(Lmiui/security/StorageRestrictedPathManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 59
    .local v1, "observer":Landroid/database/ContentObserver;
    sget-object v2, Lmiui/security/StorageRestrictedPathManager;->URI_ISOLATED_GALLERY_PATH:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    sget-object v2, Lmiui/security/StorageRestrictedPathManager;->URI_ISOLATED_SOCIALITY_PATH:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    iget-object v2, p0, Lmiui/security/StorageRestrictedPathManager;->mGalleryPathSet:Ljava/util/Set;

    const-string v3, "key_isolated_gallery_path"

    invoke-direct {p0, v0, v3, v2}, Lmiui/security/StorageRestrictedPathManager;->updatePolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V

    .line 62
    iget-object v2, p0, Lmiui/security/StorageRestrictedPathManager;->mSocialityPathSet:Ljava/util/Set;

    const-string v3, "key_isolated_sociality_path"

    invoke-direct {p0, v0, v3, v2}, Lmiui/security/StorageRestrictedPathManager;->updatePolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Set;)V

    .line 63
    return-void
.end method
