.class Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutPackage.java"


# static fields
.field private static final ATTR_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTR_BITMAP_PATH:Ljava/lang/String; = "bitmap-path"

.field private static final ATTR_CALL_COUNT:Ljava/lang/String; = "call-count"

.field private static final ATTR_DISABLED_MESSAGE:Ljava/lang/String; = "dmessage"

.field private static final ATTR_DISABLED_MESSAGE_RES_ID:Ljava/lang/String; = "dmessageid"

.field private static final ATTR_DISABLED_MESSAGE_RES_NAME:Ljava/lang/String; = "dmessagename"

.field private static final ATTR_DISABLED_REASON:Ljava/lang/String; = "disabled-reason"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ICON_RES_ID:Ljava/lang/String; = "icon-res"

.field private static final ATTR_ICON_RES_NAME:Ljava/lang/String; = "icon-resname"

.field private static final ATTR_ICON_URI:Ljava/lang/String; = "icon-uri"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INTENT_LEGACY:Ljava/lang/String; = "intent"

.field private static final ATTR_INTENT_NO_EXTRA:Ljava/lang/String; = "intent-base"

.field private static final ATTR_LAST_RESET:Ljava/lang/String; = "last-reset"

.field private static final ATTR_LOCUS_ID:Ljava/lang/String; = "locus-id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NAME_XMLUTILS:Ljava/lang/String; = "name"

.field private static final ATTR_PERSON_IS_BOT:Ljava/lang/String; = "is-bot"

.field private static final ATTR_PERSON_IS_IMPORTANT:Ljava/lang/String; = "is-important"

.field private static final ATTR_PERSON_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_PERSON_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PERSON_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_RANK:Ljava/lang/String; = "rank"

.field private static final ATTR_SCHEMA_VERSON:Ljava/lang/String; = "schema-version"

.field private static final ATTR_SPLASH_SCREEN_THEME_NAME:Ljava/lang/String; = "splash-screen-theme-name"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final ATTR_TEXT_RES_ID:Ljava/lang/String; = "textid"

.field private static final ATTR_TEXT_RES_NAME:Ljava/lang/String; = "textname"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleid"

.field private static final ATTR_TITLE_RES_NAME:Ljava/lang/String; = "titlename"

.field private static final KEY_BITMAPS:Ljava/lang/String; = "bitmaps"

.field private static final KEY_BITMAP_BYTES:Ljava/lang/String; = "bitmapBytes"

.field private static final KEY_DYNAMIC:Ljava/lang/String; = "dynamic"

.field private static final KEY_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final KEY_PINNED:Ljava/lang/String; = "pinned"

.field private static final NAME_CAPABILITY:Ljava/lang/String; = "capability"

.field private static final NAME_CATEGORIES:Ljava/lang/String; = "categories"

.field public static final REPORT_USAGE_BUFFER_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_INTENT_EXTRAS_LEGACY:Ljava/lang/String; = "intent-extras"

.field private static final TAG_MAP_XMLUTILS:Ljava/lang/String; = "map"

.field private static final TAG_PERSON:Ljava/lang/String; = "person"

.field static final TAG_ROOT:Ljava/lang/String; = "package"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_STRING_ARRAY_XMLUTILS:Ljava/lang/String; = "string-array"

.field private static final TAG_VERIFY:Ljava/lang/String; = "ShortcutService.verify"


# instance fields
.field private mApiCallCount:I

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mIsAppSearchSchemaUpToDate:Z

.field private mLastKnownForegroundElapsedTime:J

.field private mLastReportedTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResetTime:J

.field private final mPackageUid:I

.field private final mShareTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeAndRankComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mShortcutTypeRankAndTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransientShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JkO4sj9VCYtuY-BJgBDA7ldenrE(Lcom/android/server/pm/ShortcutPackage;Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->setupSchema(Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .registers 5
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 220
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .registers 7
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "packageUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .line 211
    nop

    .line 212
    if-eqz p4, :cond_5

    move-object v0, p4

    goto :goto_9

    :cond_5
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    .line 211
    :goto_9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    .line 1388
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda18;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    .line 1410
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda19;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Ljava/util/Comparator;

    .line 1593
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    .line 214
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 215
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    .line 216
    return-void
.end method

.method private areAllActivitiesStillEnabled()Z
    .registers 6

    .line 1067
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1071
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1072
    .local v1, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 1074
    .local v3, "reject":[Z
    new-instance v4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[Z)V

    invoke-direct {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 1089
    const/4 v4, 0x0

    aget-boolean v4, v3, v4

    xor-int/2addr v2, v4

    return v2
.end method

.method private deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;
    .registers 12
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disable"    # Z
    .param p3, "overrideImmutable"    # Z
    .param p4, "ignoreInvisible"    # Z
    .param p5, "disabledReason"    # I
    .param p6, "ignorePersistedShortcuts"    # Z

    .line 660
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-ne p2, v2, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    move v2, v0

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable and disabledReason disagree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 665
    .local v2, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_42

    if-eqz p4, :cond_42

    .line 666
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_6e

    .line 669
    :cond_42
    if-nez p3, :cond_47

    .line 670
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 672
    :cond_47
    if-nez p6, :cond_50

    .line 673
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->removeShortcutAsync([Ljava/lang/String;)V

    .line 675
    :cond_50
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_61

    .line 695
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 696
    return-object v2

    .line 676
    :cond_61
    :goto_61
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p2, p5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/pm/ShortcutPackage;ZI)V

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 693
    return-object v3

    .line 667
    :cond_6e
    :goto_6e
    return-object v3
.end method

.method private disableDynamicWithId(Ljava/lang/String;ZIZ)Landroid/content/pm/ShortcutInfo;
    .registers 12
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z
    .param p3, "disabledReason"    # I
    .param p4, "ignorePersistedShortcuts"    # Z

    .line 607
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method private ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V
    .registers 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "ignoreInvisible"    # Z

    .line 302
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p2, :cond_11

    .line 303
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_34

    .line 304
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manifest shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may not be manipulated via APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_34
    :goto_34
    return-void
.end method

.method private ensureShortcutCountBeforePush()V
    .registers 9

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 515
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxAppShortcuts()I

    move-result v1

    .line 516
    .local v1, "maxShortcutPerApp":I
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 517
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda50;

    invoke-direct {v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda50;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 518
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 519
    .local v3, "appShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_7f

    .line 522
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 524
    :goto_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_7f

    .line 525
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 526
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v5

    if-nez v5, :cond_54

    .line 532
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 533
    nop

    .end local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    goto :goto_33

    .line 528
    .restart local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_54
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has published "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 529
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " manifest shortcuts across different activities."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v1    # "maxShortcutPerApp":I
    .end local p0    # "this":Lcom/android/server/pm/ShortcutPackage;
    throw v5

    .line 535
    .end local v3    # "appShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    .restart local v0    # "service":Lcom/android/server/pm/ShortcutService;
    .restart local v1    # "maxShortcutPerApp":I
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutPackage;
    :cond_7f
    monitor-exit v2

    .line 536
    return-void

    .line 535
    :catchall_81
    move-exception v3

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_b .. :try_end_83} :catchall_81

    throw v3
.end method

.method private filter(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V
    .registers 12
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p6, "getPinnedByAnyLauncher"    # Z
    .param p7, "si"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/content/pm/ShortcutInfo;",
            ")V"
        }
    .end annotation

    .line 881
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "query":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    .local p5, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p4, :cond_11

    if-eqz p5, :cond_f

    .line 882
    invoke-virtual {p7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 884
    .local v0, "isPinnedByCaller":Z
    :goto_12
    if-nez p6, :cond_23

    .line 885
    invoke-virtual {p7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p7}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v1

    if-nez v1, :cond_23

    .line 886
    if-nez v0, :cond_23

    .line 887
    return-void

    .line 891
    :cond_23
    invoke-virtual {p7, p3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 896
    .local v1, "clone":Landroid/content/pm/ShortcutInfo;
    const/4 v2, 0x2

    if-nez p6, :cond_2f

    .line 897
    if-nez v0, :cond_2f

    .line 898
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 901
    :cond_2f
    if-eqz p2, :cond_37

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 902
    :cond_37
    if-nez v0, :cond_3c

    .line 903
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 905
    :cond_3c
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_3f
    return-void
.end method

.method private forEachShortcut(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2451
    .local p1, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda58;

    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda58;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 2455
    return-void
.end method

.method private forEachShortcutMutate(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2458
    .local p1, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2459
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 2460
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2458
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2462
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method private forEachShortcutStopWhen(Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2466
    .local p1, "cb":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/pm/ShortcutInfo;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2467
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_26

    .line 2468
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 2469
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2470
    monitor-exit v0

    return-void

    .line 2467
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2473
    .end local v1    # "i":I
    :cond_26
    monitor-exit v0

    .line 2474
    return-void

    .line 2473
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 366
    .local v1, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_16

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 368
    const v2, 0x60004023

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 371
    :cond_16
    monitor-exit v0

    .line 372
    return-object v1

    .line 371
    .end local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 382
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 385
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    .line 386
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 387
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->ensureShortcutCountBeforePush()V

    .line 388
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/pm/ShortcutInfo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    .line 389
    return-void
.end method

.method private fromAppSearch()Lcom/android/internal/infra/AndroidFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 2685
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2686
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 2687
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    .line 2688
    .local v1, "searchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    const/4 v2, 0x0

    .line 2690
    .local v2, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    :try_start_12
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 2691
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 2692
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    .line 2693
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 2690
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2694
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutUser;->getAppSearch(Landroid/app/appsearch/AppSearchManager$SearchContext;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    move-object v2, v3

    .line 2695
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_4c
    .catchall {:try_start_12 .. :try_end_30} :catchall_4a

    .line 2696
    :try_start_30
    iget-boolean v4, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    if-nez v4, :cond_3e

    .line 2697
    new-instance v4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;

    invoke-direct {v4, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v4

    move-object v2, v4

    .line 2699
    :cond_3e
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 2700
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_47

    .line 2706
    nop

    :goto_43
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2707
    goto :goto_84

    .line 2700
    :catchall_47
    move-exception v4

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "searchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    .end local p0    # "this":Lcom/android/server/pm/ShortcutPackage;
    :try_start_49
    throw v4
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4a} :catch_4c
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 2706
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "searchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .restart local v2    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutPackage;
    :catchall_4a
    move-exception v3

    goto :goto_8b

    .line 2701
    :catch_4c
    move-exception v3

    .line 2702
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4d
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create app search session. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2703
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2702
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v4, v3}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_82
    .catchall {:try_start_4d .. :try_end_82} :catchall_4a

    .line 2706
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_43

    .line 2708
    :goto_84
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    return-object v3

    .line 2706
    :goto_8b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2707
    throw v3
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 1055
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1056
    .local v0, "sep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1057
    return-object p0

    .line 1059
    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSearchSpec()Landroid/app/appsearch/SearchSpec;
    .registers 6

    .line 2509
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "Shortcut"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2510
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 2512
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setTermMatch(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2513
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 2509
    return-object v0
.end method

.method private getUsedBitmapFilesLocked()Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1025
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1026
    .local v0, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1031
    return-object v0
.end method

.method private hasNoShortcut()Z
    .registers 5

    .line 1823
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 1824
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result v0

    if-nez v0, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 1826
    :cond_10
    new-array v0, v2, [Z

    .line 1827
    .local v0, "hasAnyShortcut":[Z
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda12;-><init>([Z)V

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 1831
    aget-boolean v1, v0, v1

    xor-int/2addr v1, v2

    return v1
.end method

.method private incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 6
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/ComponentName;",
            "I)V"
        }
    .end annotation

    .line 1482
    .local p1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1483
    .local v0, "oldValue":Ljava/lang/Integer;
    if-nez v0, :cond_d

    .line 1484
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1487
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    return-void
.end method

.method private isAppSearchEnabled()Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->isAppSearchEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$adjustRanks$26(JLandroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p0, "now"    # J
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1628
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    if-eqz v0, :cond_13

    .line 1629
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1630
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1632
    :cond_13
    return-void
.end method

.method static synthetic lambda$adjustRanks$27(JILandroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p0, "now"    # J
    .param p2, "thisRank"    # I
    .param p3, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1663
    invoke-virtual {p3, p0, p1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1664
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 1665
    return-void
.end method

.method static synthetic lambda$deleteLongLivedWithId$6(Landroid/content/pm/ShortcutInfo;)V
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 620
    const v0, 0x60004000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void
.end method

.method static synthetic lambda$dump$29(Ljava/io/PrintWriter;Ljava/lang/String;[JLandroid/content/pm/ShortcutInfo;)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "totalBitmapSize"    # [J
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1749
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1750
    .local v0, "len":J
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1751
    const-string v2, "      "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    const-string v2, "bitmap size="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1755
    const/4 v2, 0x0

    aget-wide v3, p2, v2

    add-long/2addr v3, v0

    aput-wide v3, p2, v2

    .line 1757
    .end local v0    # "len":J
    :cond_43
    return-void
.end method

.method static synthetic lambda$dumpCheckin$31([I[I[I[I[JLandroid/content/pm/ShortcutInfo;)V
    .registers 12
    .param p0, "numDynamic"    # [I
    .param p1, "numManifest"    # [I
    .param p2, "numPinned"    # [I
    .param p3, "numBitmaps"    # [I
    .param p4, "totalBitmapSize"    # [J
    .param p5, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1801
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    aget v0, p0, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, v1

    .line 1802
    :cond_d
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_19

    aget v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v1

    .line 1803
    :cond_19
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_25

    aget v0, p2, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v1

    .line 1805
    :cond_25
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1806
    aget v0, p3, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, v1

    .line 1807
    aget-wide v2, p4, v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 1809
    :cond_43
    return-void
.end method

.method static synthetic lambda$dumpShortcuts$30(ILjava/io/PrintWriter;Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p0, "shortcutFlags"    # I
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1784
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_10

    .line 1785
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    :cond_10
    return-void
.end method

.method static synthetic lambda$ensureShortcutCountBeforePush$4(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 518
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$forEachShortcut$37(Ljava/util/function/Consumer;Landroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "cb"    # Ljava/util/function/Consumer;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2452
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2453
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getUsedBitmapFilesLocked$14(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p0, "usedFiles"    # Landroid/util/ArraySet;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1027
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1028
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ShortcutPackage;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1030
    :cond_11
    return-void
.end method

.method static synthetic lambda$hasNoShortcut$32([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "hasAnyShortcut"    # [Z
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1828
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    .line 1829
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hasNonManifestShortcuts$28([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "condition"    # [Z
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1675
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 1676
    const/4 v0, 0x1

    aput-boolean v0, p0, v1

    .line 1677
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1679
    :cond_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$19(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1390
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1391
    const/4 v0, -0x1

    return v0

    .line 1393
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1394
    const/4 v0, 0x1

    return v0

    .line 1396
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$20(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 6
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1412
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1413
    return v1

    .line 1415
    :cond_e
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1416
    return v2

    .line 1418
    :cond_1c
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1419
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 1421
    :cond_35
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1422
    return v1

    .line 1424
    :cond_3c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1425
    return v2

    .line 1427
    :cond_43
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1429
    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1430
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 1431
    return v1

    .line 1432
    :cond_5e
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 1433
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1434
    return v2

    .line 1437
    :cond_6b
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1438
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 1439
    return v1

    .line 1440
    :cond_7a
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_87

    .line 1441
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1442
    return v2

    .line 1445
    :cond_87
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1446
    return v1

    .line 1448
    :cond_8e
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1449
    return v2

    .line 1451
    :cond_95
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$25(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 5
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 1595
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1596
    .local v0, "ret":I
    if-eqz v0, :cond_f

    .line 1597
    return v0

    .line 1604
    :cond_f
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v2

    if-eq v1, v2, :cond_23

    .line 1605
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isRankChanged()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, -0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    return v1

    .line 1609
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1610
    if-eqz v0, :cond_32

    .line 1611
    return v0

    .line 1616
    :cond_32
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static synthetic lambda$onRestored$0(ILandroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p0, "restoreBlockReason"    # I
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 263
    const/16 v0, 0x1000

    if-nez p0, :cond_11

    .line 264
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 265
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    if-ne v1, p0, :cond_11

    .line 266
    return-void

    .line 268
    :cond_11
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 270
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 271
    if-eqz p0, :cond_1e

    .line 272
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 274
    :cond_1e
    return-void
.end method

.method static synthetic lambda$publishManifestShortcuts$18(Landroid/util/ArraySet;Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p0, "toDisableList"    # Landroid/util/ArraySet;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1264
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1265
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_d
    return-void
.end method

.method static synthetic lambda$pushDynamicShortcut$1(Landroid/app/appsearch/AppSearchResult;)V
    .registers 3
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 503
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_22

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report usage via AppSearch. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_22
    return-void
.end method

.method static synthetic lambda$refreshPinnedFlags$11(Landroid/content/pm/ShortcutInfo;)V
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 743
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_a

    .line 744
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 746
    :cond_a
    return-void
.end method

.method static synthetic lambda$refreshPinnedFlags$12(Ljava/util/Set;Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p0, "pinnedShortcuts"    # Ljava/util/Set;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 749
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 750
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 752
    :cond_14
    return-void
.end method

.method static synthetic lambda$removeAllShortcutsAsync$39(Landroid/app/appsearch/AppSearchResult;)V
    .registers 3
    .param p0, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 2542
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove shortcuts from AppSearch. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2544
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2543
    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_22
    return-void
.end method

.method static synthetic lambda$removeOrphans$5(Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p0, "removeList"    # Ljava/util/List;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 546
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 547
    :cond_7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    return-void
.end method

.method static synthetic lambda$resolveResourceStrings$24(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/pm/ShortcutInfo;)V
    .registers 6
    .param p0, "publisherRes"    # Landroid/content/res/Resources;
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "changedShortcuts"    # Ljava/util/List;
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1574
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1575
    :cond_7
    invoke-virtual {p3, p0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 1576
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1577
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    return-void
.end method

.method static synthetic lambda$setupSchema$38(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/AppSearchResult;)V
    .registers 5
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "session"    # Landroid/app/appsearch/AppSearchSession;
    .param p2, "result"    # Landroid/app/appsearch/AppSearchResult;

    .line 2497
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2499
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2500
    return-void

    .line 2502
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 2503
    return-void
.end method

.method static synthetic lambda$sortShortcutsToActivities$21(Landroid/content/ComponentName;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "k"    # Landroid/content/ComponentName;

    .line 1473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$verifyStates$33(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .registers 4
    .param p0, "a"    # Landroid/content/pm/ShortcutInfo;
    .param p1, "b"    # Landroid/content/pm/ShortcutInfo;

    .line 2320
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$verifyStates$34(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2324
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$verifyStates$35(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2327
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static loadFromFile(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 13
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "fromBackup"    # Z

    .line 2001
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2004
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_a} :catch_67

    .line 2010
    .local v2, "in":Ljava/io/FileInputStream;
    nop

    .line 2013
    const/4 v3, 0x0

    .line 2014
    .local v3, "ret":Lcom/android/server/pm/ShortcutPackage;
    :try_start_c
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 2017
    .local v4, "parser":Landroid/util/TypedXmlPullParser;
    :goto_10
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_3a

    .line 2018
    const/4 v5, 0x2

    if-eq v6, v5, :cond_1c

    .line 2019
    goto :goto_10

    .line 2021
    :cond_1c
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 2023
    .local v5, "depth":I
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2027
    .local v8, "tag":Ljava/lang/String;
    if-ne v5, v7, :cond_35

    const-string/jumbo v7, "package"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 2028
    invoke-static {p0, p1, v4, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v7

    move-object v3, v7

    .line 2029
    goto :goto_10

    .line 2031
    :cond_35
    invoke-static {v5, v8}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_38} :catch_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_38} :catch_41
    .catchall {:try_start_c .. :try_end_38} :catchall_3f

    .line 2032
    nop

    .end local v5    # "depth":I
    .end local v8    # "tag":Ljava/lang/String;
    goto :goto_10

    .line 2033
    :cond_3a
    nop

    .line 2038
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2033
    return-object v3

    .line 2038
    .end local v3    # "ret":Lcom/android/server/pm/ShortcutPackage;
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v6    # "type":I
    :catchall_3f
    move-exception v1

    goto :goto_63

    .line 2034
    :catch_41
    move-exception v3

    .line 2035
    .local v3, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_3f

    .line 2036
    nop

    .line 2038
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2036
    return-object v1

    .line 2038
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_63
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2039
    throw v1

    .line 2005
    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_67
    move-exception v2

    .line 2009
    .local v2, "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Landroid/util/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 20
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2046
    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string/jumbo v0, "name"

    invoke-static {v1, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2049
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    .line 2050
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v4

    move-object/from16 v5, p1

    invoke-direct {v0, v5, v4, v3}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    move-object v4, v0

    .line 2051
    .local v4, "ret":Lcom/android/server/pm/ShortcutPackage;
    iget-object v6, v4, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2052
    :try_start_1a
    const-string/jumbo v0, "schema-version"

    const/4 v7, 0x0

    invoke-static {v1, v0, v7}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ne v0, v8, :cond_28

    move v0, v9

    goto :goto_29

    :cond_28
    move v0, v7

    :goto_29
    iput-boolean v0, v4, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    .line 2055
    const-string v0, "call-count"

    invoke-static {v1, v0}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 2056
    const-string v0, "last-reset"

    invoke-static {v1, v0}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 2058
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    move v10, v0

    .line 2060
    .local v10, "outerDepth":I
    :goto_40
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v11, v0

    .local v11, "type":I
    if-eq v0, v9, :cond_c0

    if-ne v11, v8, :cond_4f

    .line 2061
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v10, :cond_c0

    .line 2062
    :cond_4f
    const/4 v0, 0x2

    if-eq v11, v0, :cond_53

    .line 2063
    goto :goto_40

    .line 2065
    :cond_53
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    .line 2066
    .local v12, "depth":I
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2067
    .local v13, "tag":Ljava/lang/String;
    add-int/lit8 v14, v10, 0x1

    if-ne v12, v14, :cond_bc

    .line 2068
    const/4 v14, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_c6

    :cond_67
    goto :goto_88

    :sswitch_68
    const-string/jumbo v0, "shortcut"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    move v0, v9

    goto :goto_89

    :sswitch_73
    const-string/jumbo v15, "share-target"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_67

    goto :goto_89

    :sswitch_7d
    const-string/jumbo v0, "package-info"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    move v0, v7

    goto :goto_89

    :goto_88
    move v0, v14

    :goto_89
    packed-switch v0, :pswitch_data_d4

    goto :goto_bc

    .line 2085
    :pswitch_8d
    iget-object v0, v4, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catchall {:try_start_1a .. :try_end_96} :catchall_c2

    .line 2086
    goto :goto_40

    .line 2075
    :pswitch_97
    nop

    .line 2076
    :try_start_98
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    .line 2075
    invoke-static {v1, v3, v0, v2}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Landroid/util/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 2078
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v14, v4, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a9} :catch_aa
    .catchall {:try_start_98 .. :try_end_a9} :catchall_c2

    .line 2082
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    goto :goto_40

    .line 2079
    :catch_aa
    move-exception v0

    .line 2081
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ab
    const-string v14, "ShortcutService"

    const-string v15, "Failed parsing shortcut."

    invoke-static {v14, v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_40

    .line 2070
    :pswitch_b4
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Landroid/util/TypedXmlPullParser;Z)V

    .line 2072
    goto :goto_40

    .line 2089
    :cond_bc
    :goto_bc
    invoke-static {v12, v13}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 2090
    .end local v12    # "depth":I
    .end local v13    # "tag":Ljava/lang/String;
    goto :goto_40

    .line 2091
    .end local v10    # "outerDepth":I
    .end local v11    # "type":I
    :cond_c0
    monitor-exit v6

    .line 2092
    return-object v4

    .line 2091
    :catchall_c2
    move-exception v0

    monitor-exit v6
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_c2

    throw v0

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x72a5f22b -> :sswitch_7d
        -0x642f3cc1 -> :sswitch_73
        -0x146a23ba -> :sswitch_68
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_97
        :pswitch_8d
    .end packed-switch
.end method

.method private static parseIntent(Landroid/util/TypedXmlPullParser;)Landroid/content/Intent;
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2244
    const-string v0, "intent-base"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseIntentAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2247
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 2249
    .local v1, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4a

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1b

    .line 2250
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_4a

    .line 2251
    :cond_1b
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1f

    .line 2252
    goto :goto_a

    .line 2254
    :cond_1f
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 2255
    .local v2, "depth":I
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2260
    .local v4, "tag":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_4c

    :cond_2f
    goto :goto_39

    :pswitch_30
    const-string v6, "extras"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v5, 0x0

    :goto_39
    packed-switch v5, :pswitch_data_52

    .line 2266
    invoke-static {v2, v4}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 2262
    :pswitch_41
    nop

    .line 2263
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2262
    invoke-static {v0, v5}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 2264
    goto :goto_a

    .line 2268
    .end local v2    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_4a
    return-object v0

    nop

    :pswitch_data_4c
    .packed-switch -0x4cd5119d
        :pswitch_30
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_41
    .end packed-switch
.end method

.method private static parsePerson(Landroid/util/TypedXmlPullParser;)Landroid/app/Person;
    .registers 8
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2273
    const-string/jumbo v0, "name"

    invoke-static {p0, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2274
    .local v0, "name":Ljava/lang/CharSequence;
    const-string/jumbo v1, "uri"

    invoke-static {p0, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "key"

    invoke-static {p0, v2}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2276
    .local v2, "key":Ljava/lang/String;
    const-string v3, "is-bot"

    invoke-static {p0, v3}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 2277
    .local v3, "isBot":Z
    const-string v4, "is-important"

    invoke-static {p0, v4}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 2280
    .local v4, "isImportant":Z
    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 2281
    .local v5, "builder":Landroid/app/Person$Builder;
    invoke-virtual {v5, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    .line 2282
    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v6

    return-object v6
.end method

.method private static parseShortcut(Landroid/util/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 68
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2112
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2113
    .local v1, "intentPersistableExtrasLegacy":Landroid/os/PersistableBundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v3, 0x0

    .line 2125
    .local v3, "extras":Landroid/os/PersistableBundle;
    const/4 v4, 0x0

    .line 2126
    .local v4, "categories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2127
    .local v5, "persons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    const/4 v6, 0x0

    .line 2129
    .local v6, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const-string v7, "id"

    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2130
    .local v7, "id":Ljava/lang/String;
    const-string v8, "activity"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v39

    .line 2132
    .local v39, "activityComponent":Landroid/content/ComponentName;
    const-string/jumbo v8, "title"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2133
    .local v40, "title":Ljava/lang/String;
    const-string/jumbo v8, "titleid"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v41

    .line 2134
    .local v41, "titleResId":I
    const-string/jumbo v8, "titlename"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2135
    .local v42, "titleResName":Ljava/lang/String;
    const-string/jumbo v8, "splash-screen-theme-name"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2137
    .local v43, "splashScreenThemeResName":Ljava/lang/String;
    const-string/jumbo v8, "text"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2138
    .local v44, "text":Ljava/lang/String;
    const-string/jumbo v8, "textid"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v45

    .line 2139
    .local v45, "textResId":I
    const-string/jumbo v8, "textname"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 2140
    .local v46, "textResName":Ljava/lang/String;
    const-string v8, "dmessage"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2141
    .local v47, "disabledMessage":Ljava/lang/String;
    const-string v8, "dmessageid"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v48

    .line 2143
    .local v48, "disabledMessageResId":I
    const-string v8, "dmessagename"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2145
    .local v49, "disabledMessageResName":Ljava/lang/String;
    const-string v8, "disabled-reason"

    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v8

    .line 2146
    .local v8, "disabledReason":I
    const-string v9, "intent"

    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseIntentAttributeNoDefault(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 2147
    .local v15, "intentLegacy":Landroid/content/Intent;
    const-string/jumbo v10, "rank"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v14, v10

    .line 2148
    .local v14, "rank":I
    const-string/jumbo v10, "timestamp"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v50

    .line 2149
    .local v50, "lastChangedTimestamp":J
    const-string v10, "flags"

    invoke-static {v0, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 2150
    .local v10, "flags":I
    const-string v11, "icon-res"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v11

    long-to-int v12, v11

    .line 2151
    .local v12, "iconResId":I
    const-string v11, "icon-resname"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2152
    .local v52, "iconResName":Ljava/lang/String;
    const-string v11, "bitmap-path"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2153
    .local v53, "bitmapPath":Ljava/lang/String;
    const-string v11, "icon-uri"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2154
    .local v54, "iconUri":Ljava/lang/String;
    const-string v11, "locus-id"

    invoke-static {v0, v11}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2156
    .local v11, "locusIdString":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    .line 2158
    .local v13, "outerDepth":I
    :goto_a4
    move/from16 v16, v12

    .end local v12    # "iconResId":I
    .local v16, "iconResId":I
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v12

    move/from16 v55, v12

    move/from16 v17, v14

    .end local v14    # "rank":I
    .local v17, "rank":I
    .local v55, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_1eb

    const/4 v12, 0x3

    move/from16 v14, v55

    .end local v55    # "type":I
    .local v14, "type":I
    if-ne v14, v12, :cond_c8

    .line 2159
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v13, :cond_bd

    goto :goto_c8

    :cond_bd
    move-object/from16 v56, v3

    move-object/from16 v55, v6

    move/from16 v22, v13

    move/from16 v25, v14

    const/4 v9, 0x0

    goto/16 :goto_1f4

    .line 2160
    :cond_c8
    :goto_c8
    const/4 v12, 0x2

    if-eq v14, v12, :cond_d5

    .line 2161
    move-object/from16 v56, v3

    move-object/from16 v55, v6

    move-object/from16 v20, v9

    move/from16 v22, v13

    goto/16 :goto_1cb

    .line 2163
    :cond_d5
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    .line 2164
    .local v12, "depth":I
    move/from16 v22, v13

    .end local v13    # "outerDepth":I
    .local v22, "outerDepth":I
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2169
    .local v13, "tag":Ljava/lang/String;
    const/16 v23, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v24

    move/from16 v25, v14

    .end local v14    # "type":I
    .local v25, "type":I
    const-string v14, "categories"

    move-object/from16 v55, v6

    .end local v6    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .local v55, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const-string/jumbo v6, "string-array"

    sparse-switch v24, :sswitch_data_27e

    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .local v56, "extras":Landroid/os/PersistableBundle;
    goto :goto_144

    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    :sswitch_f4
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v56, v3

    if-eqz v21, :cond_144

    const/4 v3, 0x3

    goto :goto_146

    :sswitch_fe
    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    const-string/jumbo v3, "map"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v3, 0x6

    goto :goto_146

    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    :sswitch_10b
    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    const-string/jumbo v3, "person"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v3, 0x4

    goto :goto_146

    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    :sswitch_118
    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v3, 0x5

    goto :goto_146

    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    :sswitch_122
    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    const-string v3, "intent-extras"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v3, 0x0

    goto :goto_146

    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    :sswitch_12e
    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v3, 0x1

    goto :goto_146

    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    :sswitch_138
    move-object/from16 v56, v3

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    const-string v3, "extras"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v3, 0x2

    goto :goto_146

    :cond_144
    :goto_144
    move/from16 v3, v23

    :goto_146
    move-object/from16 v20, v9

    const-string/jumbo v9, "name"

    packed-switch v3, :pswitch_data_29c

    .line 2204
    invoke-static {v12, v13}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 2197
    :pswitch_153
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "capability"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 2199
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 2200
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readValueXml(Landroid/util/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/Map;

    move/from16 v12, v16

    move/from16 v14, v17

    move-object/from16 v9, v20

    move/from16 v13, v22

    move-object/from16 v3, v56

    .end local v55    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v6    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    goto/16 :goto_a4

    .line 2186
    .end local v6    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v55    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :pswitch_175
    invoke-static {v0, v9}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 2188
    nop

    .line 2189
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 2188
    const/4 v9, 0x0

    invoke-static {v3, v6, v9}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2190
    .local v3, "ar":[Ljava/lang/String;
    new-instance v6, Landroid/util/ArraySet;

    array-length v9, v3

    invoke-direct {v6, v9}, Landroid/util/ArraySet;-><init>(I)V

    move-object v4, v6

    .line 2191
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_191
    array-length v9, v3

    if-ge v6, v9, :cond_19c

    .line 2192
    aget-object v9, v3, v6

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2191
    add-int/lit8 v6, v6, 0x1

    goto :goto_191

    .line 2194
    .end local v3    # "ar":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_19c
    move/from16 v12, v16

    move/from16 v14, v17

    move-object/from16 v9, v20

    move/from16 v13, v22

    move-object/from16 v6, v55

    move-object/from16 v3, v56

    goto/16 :goto_a4

    .line 2183
    :pswitch_1aa
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parsePerson(Landroid/util/TypedXmlPullParser;)Landroid/app/Person;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2184
    goto :goto_1cb

    .line 2181
    :pswitch_1b2
    goto :goto_1cb

    .line 2177
    :pswitch_1b3
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 2178
    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .local v3, "extras":Landroid/os/PersistableBundle;
    move/from16 v12, v16

    move/from16 v14, v17

    move-object/from16 v9, v20

    move/from16 v13, v22

    move-object/from16 v6, v55

    goto/16 :goto_a4

    .line 2174
    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    :pswitch_1c3
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->parseIntent(Landroid/util/TypedXmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    nop

    .line 2158
    .end local v12    # "depth":I
    .end local v22    # "outerDepth":I
    .end local v25    # "type":I
    .end local v55    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    .local v6, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .local v13, "outerDepth":I
    :cond_1cb
    :goto_1cb
    move/from16 v12, v16

    move/from16 v14, v17

    move-object/from16 v9, v20

    move/from16 v13, v22

    move-object/from16 v6, v55

    move-object/from16 v3, v56

    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .end local v6    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v13    # "outerDepth":I
    .restart local v22    # "outerDepth":I
    .restart local v55    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    goto/16 :goto_a4

    .line 2171
    .restart local v12    # "depth":I
    .local v13, "tag":Ljava/lang/String;
    .restart local v25    # "type":I
    :pswitch_1d9
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 2172
    move/from16 v12, v16

    move/from16 v14, v17

    move-object/from16 v9, v20

    move/from16 v13, v22

    move-object/from16 v6, v55

    move-object/from16 v3, v56

    goto/16 :goto_a4

    .line 2158
    .end local v12    # "depth":I
    .end local v22    # "outerDepth":I
    .end local v25    # "type":I
    .end local v56    # "extras":Landroid/os/PersistableBundle;
    .restart local v3    # "extras":Landroid/os/PersistableBundle;
    .restart local v6    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .local v13, "outerDepth":I
    .local v55, "type":I
    :cond_1eb
    move-object/from16 v56, v3

    move/from16 v22, v13

    move/from16 v25, v55

    const/4 v9, 0x0

    move-object/from16 v55, v6

    .line 2207
    .end local v3    # "extras":Landroid/os/PersistableBundle;
    .end local v6    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .end local v13    # "outerDepth":I
    .restart local v22    # "outerDepth":I
    .restart local v25    # "type":I
    .local v55, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    .restart local v56    # "extras":Landroid/os/PersistableBundle;
    :goto_1f4
    if-eqz v15, :cond_1ff

    .line 2209
    invoke-static {v15, v1}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    .line 2210
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2211
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    :cond_1ff
    if-nez v8, :cond_208

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_208

    .line 2219
    const/4 v8, 0x1

    move v3, v8

    goto :goto_209

    .line 2223
    :cond_208
    move v3, v8

    .end local v8    # "disabledReason":I
    .local v3, "disabledReason":I
    :goto_209
    if-eqz p3, :cond_20f

    .line 2224
    or-int/lit16 v10, v10, 0x1000

    move v6, v10

    goto :goto_210

    .line 2223
    :cond_20f
    move v6, v10

    .line 2227
    .end local v10    # "flags":I
    .local v6, "flags":I
    :goto_210
    if-nez v11, :cond_215

    move-object/from16 v36, v9

    goto :goto_21c

    :cond_215
    new-instance v8, Landroid/content/LocusId;

    invoke-direct {v8, v11}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    move-object/from16 v36, v8

    .line 2229
    .local v36, "locusId":Landroid/content/LocusId;
    :goto_21c
    new-instance v57, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v8, v57

    const/4 v13, 0x0

    move/from16 v58, v22

    .line 2234
    .end local v22    # "outerDepth":I
    .local v58, "outerDepth":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/content/Intent;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, [Landroid/content/Intent;

    .line 2237
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/app/Person;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v35, v9

    check-cast v35, [Landroid/app/Person;

    move/from16 v9, p2

    move-object v10, v7

    move-object/from16 v59, v11

    .end local v11    # "locusIdString":Ljava/lang/String;
    .local v59, "locusIdString":Ljava/lang/String;
    move-object/from16 v11, p1

    move/from16 v60, v16

    .end local v16    # "iconResId":I
    .local v60, "iconResId":I
    move-object/from16 v12, v39

    move/from16 v61, v17

    move/from16 v62, v25

    .end local v17    # "rank":I
    .end local v25    # "type":I
    .local v61, "rank":I
    .local v62, "type":I
    move-object/from16 v14, v40

    move-object/from16 v63, v15

    .end local v15    # "intentLegacy":Landroid/content/Intent;
    .local v63, "intentLegacy":Landroid/content/Intent;
    move/from16 v15, v41

    move-object/from16 v16, v42

    move-object/from16 v17, v44

    move/from16 v18, v45

    move-object/from16 v19, v46

    move-object/from16 v20, v47

    move/from16 v21, v48

    move-object/from16 v22, v49

    move-object/from16 v23, v4

    move/from16 v25, v61

    move-object/from16 v26, v56

    move-wide/from16 v27, v50

    move/from16 v29, v6

    move/from16 v30, v60

    move-object/from16 v31, v52

    move-object/from16 v32, v53

    move-object/from16 v33, v54

    move/from16 v34, v3

    move-object/from16 v37, v43

    move-object/from16 v38, v55

    invoke-direct/range {v8 .. v38}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    .line 2229
    return-object v57

    :sswitch_data_27e
    .sparse-switch
        -0x4cd5119d -> :sswitch_138
        -0x468ec964 -> :sswitch_12e
        -0x3e3f454c -> :sswitch_122
        -0x3d122a63 -> :sswitch_118
        -0x3b1c64ab -> :sswitch_10b
        0x1a55c -> :sswitch_fe
        0x4d47461c -> :sswitch_f4
    .end sparse-switch

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_1c3
        :pswitch_1b3
        :pswitch_1b2
        :pswitch_1aa
        :pswitch_175
        :pswitch_153
    .end packed-switch
.end method

.method private publishManifestShortcuts(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1259
    .local p1, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 1262
    .local v0, "changed":Z
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1263
    .local v1, "toDisableList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1270
    if-eqz p1, :cond_79

    .line 1271
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1273
    .local v3, "newListSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v3, :cond_79

    .line 1274
    const/4 v0, 0x1

    .line 1276
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 1277
    .local v5, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    xor-int/2addr v6, v2

    .line 1279
    .local v6, "newDisabled":Z
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 1280
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    .line 1282
    .local v8, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v9, 0x0

    .line 1284
    .local v9, "wasPinned":Z
    if-eqz v8, :cond_63

    .line 1285
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v10

    if-nez v10, :cond_58

    .line 1286
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Shortcut with ID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ShortcutService"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    goto :goto_76

    .line 1291
    :cond_58
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v10

    if-eqz v10, :cond_63

    .line 1292
    const/4 v9, 0x1

    .line 1293
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 1296
    :cond_63
    if-eqz v6, :cond_68

    if-nez v9, :cond_68

    .line 1300
    goto :goto_76

    .line 1305
    :cond_68
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 1307
    if-nez v6, :cond_76

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_76

    .line 1309
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1273
    .end local v5    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "newDisabled":Z
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "oldShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v9    # "wasPinned":Z
    :cond_76
    :goto_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1315
    .end local v3    # "newListSize":I
    .end local v4    # "i":I
    :cond_79
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 1321
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_84
    if-ltz v3, :cond_9a

    .line 1322
    const/4 v0, 0x1

    .line 1324
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1326
    .local v2, "id":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ShortcutPackage;->disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;

    .line 1321
    .end local v2    # "id":Ljava/lang/String;
    add-int/lit8 v3, v3, -0x1

    goto :goto_84

    .line 1331
    .end local v3    # "i":I
    :cond_9a
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 1334
    :cond_9d
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 1335
    return v0
.end method

.method private pushOutExcessShortcuts()Z
    .registers 11

    .line 1343
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1344
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v1

    .line 1346
    .local v1, "maxShortcuts":I
    const/4 v2, 0x0

    .line 1348
    .local v2, "changed":Z
    nop

    .line 1349
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1350
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "outer":I
    :goto_14
    if-ltz v4, :cond_4e

    .line 1351
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1352
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v1, :cond_23

    .line 1353
    goto :goto_4b

    .line 1356
    :cond_23
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1359
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .local v7, "inner":I
    :goto_2d
    if-lt v7, v1, :cond_4b

    .line 1360
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 1362
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 1365
    const-string v9, "Found manifest shortcuts in excess list."

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1366
    goto :goto_48

    .line 1368
    :cond_41
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v5, v5}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    .line 1359
    .end local v8    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :goto_48
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 1350
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "inner":I
    :cond_4b
    :goto_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 1373
    .end local v4    # "outer":I
    :cond_4e
    return v2
.end method

.method private removeOrphans()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v0, "removeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda35;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda35;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 549
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_2b

    .line 551
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 550
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 554
    .end local v2    # "i":I
    :cond_2b
    return-object v0
.end method

.method private removeShortcutAsync(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2584
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2585
    return-void

    .line 2587
    :cond_7
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 2609
    return-void
.end method

.method private varargs removeShortcutAsync([Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # [Ljava/lang/String;

    .line 2579
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2580
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->removeShortcutAsync(Ljava/util/Collection;)V

    .line 2581
    return-void
.end method

.method private runAsSystem(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "fn"    # Ljava/lang/Runnable;

    .line 2712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2714
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 2716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2717
    nop

    .line 2718
    return-void

    .line 2716
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2717
    throw v2
.end method

.method private saveShortcut(Landroid/util/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 21
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "forBackup"    # Z
    .param p4, "appSupportsBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1875
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1877
    .local v2, "s":Lcom/android/server/pm/ShortcutService;
    if-eqz p3, :cond_17

    .line 1878
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1882
    :cond_16
    return-void

    .line 1885
    :cond_17
    if-eqz p3, :cond_1e

    if-eqz p4, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    .line 1891
    .local v3, "shouldBackupDetails":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1892
    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutPackage;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_2d

    .line 1891
    :cond_2b
    move-object/from16 v4, p2

    .line 1894
    :goto_2d
    const/4 v5, 0x0

    const-string/jumbo v6, "shortcut"

    invoke-interface {v1, v5, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v7

    const-string v8, "activity"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "title"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1900
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v7

    int-to-long v7, v7

    const-string/jumbo v9, "titleid"

    invoke-static {v1, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "titlename"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "splash-screen-theme-name"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1903
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "text"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v7

    int-to-long v7, v7

    const-string/jumbo v9, "textid"

    invoke-static {v1, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1905
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "textname"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1906
    if-eqz v3, :cond_ae

    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "dmessage"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1908
    nop

    .line 1909
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v7

    int-to-long v7, v7

    .line 1908
    const-string v9, "dmessageid"

    invoke-static {v1, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1910
    nop

    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v7

    .line 1910
    const-string v8, "dmessagename"

    invoke-static {v1, v8, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1913
    :cond_ae
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v7

    int-to-long v7, v7

    const-string v9, "disabled-reason"

    invoke-static {v1, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1914
    nop

    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v7

    .line 1914
    const-string/jumbo v9, "timestamp"

    invoke-static {v1, v9, v7, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v7

    .line 1917
    .local v7, "locusId":Landroid/content/LocusId;
    if-eqz v7, :cond_d6

    .line 1918
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "locus-id"

    invoke-static {v1, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1920
    :cond_d6
    const-string v8, "flags"

    if-eqz p3, :cond_fa

    .line 1923
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v9

    const v10, -0x8a0e

    and-int/2addr v9, v10

    .line 1928
    .local v9, "flags":I
    int-to-long v10, v9

    invoke-static {v1, v8, v10, v11}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v10

    .line 1932
    .local v10, "packageVersionCode":J
    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_f9

    .line 1933
    const-string v8, "Package version code should be available at this point."

    invoke-virtual {v2, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1936
    .end local v9    # "flags":I
    .end local v10    # "packageVersionCode":J
    :cond_f9
    goto :goto_132

    .line 1939
    :cond_fa
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v9

    int-to-long v9, v9

    const-string/jumbo v11, "rank"

    invoke-static {v1, v11, v9, v10}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v1, v8, v9, v10}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1942
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "icon-res"

    invoke-static {v1, v10, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon-resname"

    invoke-static {v1, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bitmap-path"

    invoke-static {v1, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon-uri"

    invoke-static {v1, v9, v8}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1948
    :goto_132
    if-eqz v3, :cond_1ea

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 1951
    .local v8, "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_15b

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_15b

    .line 1952
    const-string v9, "categories"

    invoke-interface {v1, v5, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1953
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 1954
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Landroid/util/TypedXmlSerializer;

    move-result-object v11

    .line 1953
    invoke-static {v10, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 1955
    invoke-interface {v1, v5, v9}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1958
    .end local v8    # "cat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_15b
    if-nez p3, :cond_1a8

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v8

    .line 1960
    .local v8, "persons":[Landroid/app/Person;
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a8

    .line 1961
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_168
    array-length v10, v8

    if-ge v9, v10, :cond_1a8

    .line 1962
    aget-object v10, v8, v9

    .line 1964
    .local v10, "p":Landroid/app/Person;
    const-string/jumbo v11, "person"

    invoke-interface {v1, v5, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1965
    invoke-virtual {v10}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    const-string/jumbo v13, "name"

    invoke-static {v1, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1966
    invoke-virtual {v10}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "uri"

    invoke-static {v1, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1967
    invoke-virtual {v10}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "key"

    invoke-static {v1, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1968
    invoke-virtual {v10}, Landroid/app/Person;->isBot()Z

    move-result v12

    const-string v13, "is-bot"

    invoke-static {v1, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1969
    invoke-virtual {v10}, Landroid/app/Person;->isImportant()Z

    move-result v12

    const-string v13, "is-important"

    invoke-static {v1, v13, v12}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1970
    invoke-interface {v1, v5, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1961
    .end local v10    # "p":Landroid/app/Person;
    add-int/lit8 v9, v9, 0x1

    goto :goto_168

    .line 1974
    .end local v8    # "persons":[Landroid/app/Person;
    .end local v9    # "i":I
    :cond_1a8
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object v8

    .line 1975
    .local v8, "intentsNoExtras":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object v9

    .line 1976
    .local v9, "intentsExtras":[Landroid/os/PersistableBundle;
    const-string v10, "extras"

    if-eqz v8, :cond_1d1

    if-eqz v9, :cond_1d1

    .line 1977
    array-length v11, v8

    .line 1978
    .local v11, "numIntents":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1b8
    if-ge v12, v11, :cond_1d1

    .line 1979
    const-string v13, "intent"

    invoke-interface {v1, v5, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1980
    aget-object v14, v8, v12

    const-string v15, "intent-base"

    invoke-static {v1, v15, v14}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1981
    aget-object v14, v9, v12

    invoke-static {v1, v10, v14}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1982
    invoke-interface {v1, v5, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1978
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b8

    .line 1986
    .end local v11    # "numIntents":I
    .end local v12    # "i":I
    :cond_1d1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-static {v1, v10, v11}, Lcom/android/server/pm/ShortcutService;->writeTagExtra(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 1988
    nop

    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object v10

    .line 1990
    .local v10, "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz v10, :cond_1ea

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1ea

    .line 1991
    const-string v11, "capability"

    invoke-static {v10, v11, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Landroid/util/TypedXmlSerializer;)V

    .line 1995
    .end local v8    # "intentsNoExtras":[Landroid/content/Intent;
    .end local v9    # "intentsExtras":[Landroid/os/PersistableBundle;
    .end local v10    # "capabilityBindings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1ea
    invoke-interface {v1, v5, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1996
    return-void
.end method

.method private saveShortcut(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2434
    .local p1, "shortcuts":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2436
    :try_start_6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 2437
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    nop

    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    goto :goto_a

    .line 2439
    :cond_21
    monitor-exit v0

    .line 2440
    return-void

    .line 2439
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private varargs saveShortcut([Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p1, "shortcuts"    # [Landroid/content/pm/ShortcutInfo;

    .line 2429
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Ljava/util/Collection;)V

    .line 2431
    return-void
.end method

.method private saveShortcutsAsync(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2625
    .local p1, "shortcuts":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_19

    .line 2635
    :cond_10
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 2660
    return-void

    .line 2628
    :cond_19
    :goto_19
    return-void
.end method

.method private setupSchema(Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;
    .registers 8
    .param p1, "session"    # Landroid/app/appsearch/AppSearchSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/AppSearchSession;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/appsearch/AppSearchSession;",
            ">;"
        }
    .end annotation

    .line 2483
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/appsearch/AppSearchSchema;

    sget-object v2, Landroid/content/pm/AppSearchShortcutPerson;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/content/pm/AppSearchShortcutInfo;->SCHEMA:Landroid/app/appsearch/AppSearchSchema;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2484
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas([Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2485
    invoke-virtual {v0, v3}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2487
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 2486
    const-string v3, "Shortcut"

    invoke-virtual {v0, v3, v2}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2489
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 2488
    invoke-virtual {v0, v3, v4}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2491
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 2490
    const-string v3, "ShortcutPerson"

    invoke-virtual {v0, v3, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2493
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 2492
    invoke-virtual {v0, v3, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 2494
    .local v0, "schemaBuilder":Landroid/app/appsearch/SetSchemaRequest$Builder;
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 2495
    .local v1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/appsearch/AppSearchSession;>;"
    nop

    .line 2496
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;

    invoke-direct {v5, v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V

    .line 2495
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2504
    return-object v1
.end method

.method private sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation

    .line 1459
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1461
    .local v0, "activitiesToShortcuts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1476
    return-object v0
.end method

.method private verifyRanksSequential(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2518
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 2520
    .local v0, "failed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 2521
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 2522
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v3

    if-eq v3, v1, :cond_57

    .line 2523
    const/4 v0, 0x1

    .line 2524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2525
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but expected to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2524
    const-string v4, "ShortcutService.verify"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2528
    .end local v1    # "i":I
    :cond_5a
    return v0
.end method


# virtual methods
.method public addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)Z
    .registers 8
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 401
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 406
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 407
    .local v1, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 410
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 413
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v3

    const v4, 0x60004002

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 417
    :cond_26
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 418
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 419
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_35
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v3

    goto :goto_46

    :catchall_40
    move-exception v0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_40

    throw v0

    .line 424
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 426
    :cond_46
    :goto_46
    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    return v0
.end method

.method public adjustRanks()V
    .registers 14

    .line 1623
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1624
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    .line 1627
    .local v1, "now":J
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda9;-><init>(J)V

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1638
    nop

    .line 1639
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1640
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "outer":I
    :goto_1b
    if-ltz v4, :cond_79

    .line 1641
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1644
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1646
    const/4 v6, 0x0

    .line 1648
    .local v6, "rank":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1649
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    if-ge v8, v7, :cond_76

    .line 1650
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 1651
    .local v9, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 1653
    goto :goto_73

    .line 1656
    :cond_3d
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v10

    if-nez v10, :cond_5e

    .line 1657
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non-dynamic shortcut found. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1658
    goto :goto_73

    .line 1660
    :cond_5e
    add-int/lit8 v10, v6, 0x1

    .line 1661
    .local v6, "thisRank":I
    .local v10, "rank":I
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v11

    if-eq v11, v6, :cond_72

    .line 1662
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    invoke-direct {v12, v1, v2, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(JI)V

    invoke-virtual {p0, v11, v9, v12}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 1649
    .end local v6    # "thisRank":I
    .end local v9    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_72
    move v6, v10

    .end local v10    # "rank":I
    .local v6, "rank":I
    :goto_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 1640
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "rank":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_76
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 1669
    .end local v4    # "outer":I
    :cond_79
    return-void
.end method

.method protected canRestoreAnyVersion()Z
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public cleanupDanglingBitmapFiles(Ljava/io/File;)V
    .registers 10
    .param p1, "path"    # Ljava/io/File;

    .line 1035
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 1037
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->getUsedBitmapFilesLocked()Landroid/util/ArraySet;

    move-result-object v1

    .line 1039
    .local v1, "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 1040
    .local v5, "child":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1041
    goto :goto_2a

    .line 1043
    :cond_1d
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1044
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 1048
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1039
    .end local v5    # "child":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1051
    .end local v1    # "usedFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2d
    monitor-exit v0

    .line 1052
    return-void

    .line 1051
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public clearAllImplicitRanks()V
    .registers 2

    .line 1587
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1588
    return-void
.end method

.method public deleteAllDynamicShortcuts()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    .line 564
    .local v0, "now":J
    const/4 v2, 0x0

    .line 565
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 566
    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_14
    if-ltz v4, :cond_38

    .line 567
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 568
    .local v6, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 569
    const/4 v2, 0x1

    .line 571
    invoke-virtual {v6, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 572
    invoke-virtual {v6, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 573
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 566
    .end local v6    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_35
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 576
    .end local v4    # "i":I
    :cond_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_45

    .line 577
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeAllShortcutsAsync()V

    .line 578
    if-eqz v2, :cond_43

    .line 579
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 581
    :cond_43
    const/4 v3, 0x0

    return-object v3

    .line 576
    :catchall_45
    move-exception v4

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v4
.end method

.method public deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;
    .registers 11
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z
    .param p3, "ignorePersistedShortcuts"    # Z

    .line 593
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;
    .registers 13
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 619
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_f

    .line 620
    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 622
    :cond_f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    return-object v1
.end method

.method public disableWithId(Ljava/lang/String;Ljava/lang/String;IZZI)Landroid/content/pm/ShortcutInfo;
    .registers 14
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "disabledMessage"    # Ljava/lang/String;
    .param p3, "disabledMessageResId"    # I
    .param p4, "overrideImmutable"    # Z
    .param p5, "ignoreInvisible"    # Z
    .param p6, "disabledReason"    # I

    .line 637
    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 642
    .local v0, "deleted":Landroid/content/pm/ShortcutInfo;
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 653
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 1709
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    const-string v0, "Package: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1714
    const-string v0, "  UID: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1716
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1718
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1719
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1720
    const-string v0, "Calls: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1722
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1727
    const-string v1, "Last known FG: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1729
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1732
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1733
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    const-string v1, "Last reset: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1735
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1736
    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1737
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1741
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1744
    const-string v1, "  Shortcuts:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    const/4 v1, 0x1

    new-array v1, v1, [J

    .line 1746
    .local v1, "totalBitmapSize":[J
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[J)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1758
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1759
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    const-string v2, "Total bitmap size: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1762
    const-string v2, " ("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    aget-wide v3, v1, v0

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1764
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1767
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1768
    :try_start_d0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    const-string v3, "  "

    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/ShortcutBitmapSaver;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1769
    monitor-exit v0

    .line 1770
    return-void

    .line 1769
    :catchall_d9
    move-exception v2

    monitor-exit v0
    :try_end_db
    .catchall {:try_start_d0 .. :try_end_db} :catchall_d9

    throw v2
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 15
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1792
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 1794
    .local v0, "result":Lorg/json/JSONObject;
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 1795
    .local v8, "numDynamic":[I
    new-array v9, v1, [I

    .line 1796
    .local v9, "numPinned":[I
    new-array v10, v1, [I

    .line 1797
    .local v10, "numManifest":[I
    new-array v11, v1, [I

    .line 1798
    .local v11, "numBitmaps":[I
    new-array v1, v1, [J

    .line 1800
    .local v1, "totalBitmapSize":[J
    new-instance v12, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;

    move-object v2, v12

    move-object v3, v8

    move-object v4, v10

    move-object v5, v9

    move-object v6, v11

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;-><init>([I[I[I[I[J)V

    invoke-direct {p0, v12}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1811
    const/4 v2, 0x0

    aget v3, v8, v2

    const-string v4, "dynamic"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1812
    aget v3, v10, v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1813
    aget v3, v9, v2

    const-string/jumbo v4, "pinned"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1814
    aget v3, v11, v2

    const-string v4, "bitmaps"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1815
    aget-wide v2, v1, v2

    const-string v4, "bitmapBytes"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1819
    return-object v0
.end method

.method public dumpShortcuts(Ljava/io/PrintWriter;I)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "matchFlags"    # I

    .line 1773
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1774
    .local v0, "matchDynamic":Z
    :goto_9
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    .line 1775
    .local v3, "matchPinned":Z
    :goto_10
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_16

    move v4, v1

    goto :goto_17

    :cond_16
    move v4, v2

    .line 1776
    .local v4, "matchManifest":Z
    :goto_17
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_1d

    move v5, v1

    goto :goto_1e

    :cond_1d
    move v5, v2

    .line 1778
    .local v5, "matchCached":Z
    :goto_1e
    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    .line 1779
    :goto_22
    if-eqz v3, :cond_26

    const/4 v6, 0x2

    goto :goto_27

    :cond_26
    move v6, v2

    :goto_27
    or-int/2addr v1, v6

    .line 1780
    if-eqz v4, :cond_2d

    const/16 v6, 0x20

    goto :goto_2e

    :cond_2d
    move v6, v2

    :goto_2e
    or-int/2addr v1, v6

    .line 1781
    if-eqz v5, :cond_34

    const v2, 0x60004000

    :cond_34
    or-int/2addr v1, v2

    .line 1783
    .local v1, "shortcutFlags":I
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;-><init>(ILjava/io/PrintWriter;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1788
    return-void
.end method

.method public enableWithId(Ljava/lang/String;)V
    .registers 4
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 701
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 706
    return-void
.end method

.method public enforceShortcutCountsBeforeOperation(Ljava/util/List;I)V
    .registers 12
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1505
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1510
    .local v0, "service":Lcom/android/server/pm/ShortcutService;
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1511
    .local v1, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/util/ArrayMap;I)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 1519
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_5f

    .line 1520
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 1521
    .local v4, "newShortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1522
    .local v5, "newActivity":Landroid/content/ComponentName;
    const/4 v6, 0x2

    if-nez v5, :cond_2f

    .line 1523
    if-eq p2, v6, :cond_5c

    .line 1524
    const-string v6, "Activity must not be null at this point"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1525
    goto :goto_5c

    .line 1530
    :cond_2f
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 1531
    .local v7, "original":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_40

    .line 1532
    if-ne p2, v6, :cond_3c

    .line 1533
    goto :goto_5c

    .line 1537
    :cond_3c
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1538
    goto :goto_5c

    .line 1540
    :cond_40
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_49

    if-ne p2, v6, :cond_49

    .line 1542
    goto :goto_5c

    .line 1548
    :cond_49
    if-eqz p2, :cond_59

    .line 1549
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 1550
    .local v6, "oldActivity":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v8

    if-nez v8, :cond_59

    .line 1551
    const/4 v8, -0x1

    invoke-direct {p0, v1, v6, v8}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1554
    .end local v6    # "oldActivity":Landroid/content/ComponentName;
    :cond_59
    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1519
    .end local v4    # "newShortcut":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "newActivity":Landroid/content/ComponentName;
    .end local v7    # "original":Landroid/content/pm/ShortcutInfo;
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1558
    .end local v2    # "i":I
    :cond_5f
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_64
    if-ltz v2, :cond_76

    .line 1559
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->enforceMaxActivityShortcuts(I)V

    .line 1558
    add-int/lit8 v2, v2, -0x1

    goto :goto_64

    .line 1561
    .end local v2    # "i":I
    :cond_76
    return-void
.end method

.method public ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 352
    .local v1, "shortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 356
    .end local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    goto :goto_4

    .line 353
    .restart local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcut ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is hidden from launcher and may not be manipulated via APIs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    .end local v1    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_3b
    return-void
.end method

.method public ensureImmutableShortcutsNotIncluded(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 323
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 323
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 326
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;Z)V
    .registers 5
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 316
    .local p1, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 317
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Ljava/lang/String;Z)V

    .line 316
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 319
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_58

    .line 330
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 331
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v3

    if-nez v3, :cond_15

    .line 332
    goto :goto_32

    .line 334
    :cond_15
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 335
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    if-eq v4, v1, :cond_29

    .line 336
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_29

    .line 337
    goto :goto_32

    .line 339
    :cond_29
    if-nez v3, :cond_35

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v4

    if-nez v4, :cond_35

    .line 340
    nop

    .line 329
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 344
    .restart local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid icon type in shortcut "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Bitmaps are not allowed in long-lived shortcuts. Use Resource icons, or Uri-based icons instead."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ShortcutService"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 348
    .end local v0    # "i":I
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_58
    return-void
.end method

.method public ensureNotImmutable(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ignoreInvisible"    # Z

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 312
    return-void
.end method

.method findAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2444
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2445
    :try_start_3
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;

    invoke-direct {v3, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;-><init>()V

    .line 2446
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 2445
    return-object v1

    .line 2447
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V
    .registers 11
    .param p3, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 846
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 847
    return-void
.end method

.method public findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .registers 20
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "launcherUserId"    # I
    .param p6, "getPinnedByAnyLauncher"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 859
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local p2, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    move-object v8, p0

    move-object/from16 v9, p4

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 861
    return-void

    .line 863
    :cond_e
    iget-object v0, v8, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v10, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 866
    .local v10, "s":Lcom/android/server/pm/ShortcutService;
    if-nez v9, :cond_19

    const/4 v0, 0x0

    move/from16 v11, p5

    move-object v6, v0

    goto :goto_31

    .line 868
    :cond_19
    nop

    .line 867
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    move/from16 v11, p5

    invoke-virtual {v10, v9, v0, v11}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 868
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    move-object v6, v0

    :goto_31
    nop

    .line 869
    .local v6, "pinnedByCallerSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v12, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;Z)V

    invoke-direct {p0, v12}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 871
    return-void
.end method

.method public findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 285
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    monitor-exit v0

    return-object v1

    .line 288
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getAllShareTargetsForTest()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation

    .line 2294
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2295
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 2296
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method getAllShortcutsForTest()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2287
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2288
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 2289
    return-object v0
.end method

.method public getApiCallCount(Z)I
    .registers 11
    .param p1, "unlimited"    # Z

    .line 767
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 773
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    .line 775
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->getUidLastForegroundElapsedTimeLocked(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1a

    if-eqz p1, :cond_23

    .line 777
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    .line 778
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 785
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getLastResetTimeLocked()J

    move-result-wide v1

    .line 787
    .local v1, "last":J
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 788
    .local v3, "now":J
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->isClockValid(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_44

    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_44

    .line 789
    const-string v5, "ShortcutService"

    const-string v7, "Clock rewound"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 792
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 793
    return v6

    .line 797
    :cond_44
    iget-wide v7, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long v5, v7, v1

    if-gez v5, :cond_4e

    .line 802
    iput v6, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 803
    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 805
    :cond_4e
    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v5
.end method

.method public getMatchingShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;
    .registers 16
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v1, "matchedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 922
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShareTargetInfo;

    .line 923
    .local v3, "target":Lcom/android/server/pm/ShareTargetInfo;
    iget-object v4, v3, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v5, :cond_30

    aget-object v7, v4, v6

    .line 924
    .local v7, "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    iget-object v8, v7, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 926
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    goto :goto_30

    .line 923
    .end local v7    # "data":Lcom/android/server/pm/ShareTargetInfo$TargetData;
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 921
    .end local v3    # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 932
    .end local v2    # "i":I
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 933
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v2

    .line 937
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v2, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;

    invoke-direct {v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;-><init>()V

    const/16 v6, 0x9

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 942
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 940
    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 945
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_c1

    .line 947
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 948
    .local v5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_be

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 949
    goto :goto_be

    .line 951
    :cond_7c
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_be

    .line 953
    const/4 v7, 0x1

    .line 954
    .local v7, "hasAllCategories":Z
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/ShareTargetInfo;

    .line 955
    .local v8, "target":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v9, 0x0

    .local v9, "q":I
    :goto_8b
    iget-object v10, v8, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_9f

    .line 956
    iget-object v10, v8, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v10, v10, v9

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9c

    .line 957
    const/4 v7, 0x0

    .line 958
    goto :goto_9f

    .line 955
    :cond_9c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    .line 961
    .end local v9    # "q":I
    :cond_9f
    :goto_9f
    if-eqz v7, :cond_bb

    .line 962
    new-instance v9, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    new-instance v11, Landroid/content/ComponentName;

    .line 963
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10, v11}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    .line 962
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    goto :goto_be

    .line 951
    .end local v7    # "hasAllCategories":Z
    .end local v8    # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_bb
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 946
    .end local v5    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "j":I
    :cond_be
    :goto_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 968
    .end local v4    # "i":I
    :cond_c1
    monitor-exit v0

    return-object v3

    .line 969
    .end local v1    # "matchedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ShareTargetInfo;>;"
    .end local v2    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_3 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method public getOwnerUserId()I
    .registers 2

    .line 225
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v0

    return v0
.end method

.method public getPackageResources()Landroid/content/res/Resources;
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v2

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    return v0
.end method

.method getSharingShortcutCount()I
    .registers 11

    .line 984
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 986
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 990
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v1, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda27;-><init>()V

    const/16 v3, 0x1b

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;I)V

    .line 994
    const/4 v2, 0x0

    .line 995
    .local v2, "sharingShortcutCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6a

    .line 996
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v4

    .line 997
    .local v4, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_67

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 998
    goto :goto_67

    .line 1000
    :cond_38
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_39
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_67

    .line 1002
    const/4 v6, 0x1

    .line 1003
    .local v6, "hasAllCategories":Z
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/ShareTargetInfo;

    .line 1004
    .local v7, "target":Lcom/android/server/pm/ShareTargetInfo;
    const/4 v8, 0x0

    .local v8, "q":I
    :goto_4b
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_5f

    .line 1005
    iget-object v9, v7, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5c

    .line 1006
    const/4 v6, 0x0

    .line 1007
    goto :goto_5f

    .line 1004
    :cond_5c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 1010
    .end local v8    # "q":I
    :cond_5f
    :goto_5f
    if-eqz v6, :cond_64

    .line 1011
    add-int/lit8 v2, v2, 0x1

    .line 1012
    goto :goto_67

    .line 1000
    .end local v6    # "hasAllCategories":Z
    .end local v7    # "target":Lcom/android/server/pm/ShareTargetInfo;
    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 995
    .end local v4    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "j":I
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1016
    .end local v3    # "i":I
    :cond_6a
    monitor-exit v0

    return v2

    .line 1017
    .end local v1    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v2    # "sharingShortcutCount":I
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method getShortcutByIdsAsync(Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 2551
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2553
    return-void

    .line 2555
    :cond_e
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 2576
    return-void
.end method

.method public getShortcutCount()I
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 245
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method protected getShortcutPackageItemFile()Ljava/io/File;
    .registers 4

    .line 2722
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2723
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v2

    .line 2722
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "packages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2724
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2725
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method getTopShortcutsFromPersistence(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 2664
    .local p1, "cb":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2665
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 2667
    :cond_a
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 2681
    return-void
.end method

.method public hasNonManifestShortcuts()Z
    .registers 3

    .line 1673
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 1674
    .local v0, "condition":[Z
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda53;-><init>([Z)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    .line 1681
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    return v1
.end method

.method public hasShareTargets()Z
    .registers 3

    .line 973
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 975
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isShortcutExistsAndInvisibleToPublisher(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 293
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 298
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method synthetic lambda$areAllActivitiesStillEnabled$15$com-android-server-pm-ShortcutPackage(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "checked"    # Ljava/util/ArrayList;
    .param p2, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p3, "reject"    # [Z
    .param p4, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1075
    invoke-virtual {p4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1077
    .local v0, "activity":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    .line 1078
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1077
    if-eqz v1, :cond_10

    .line 1078
    return-object v3

    .line 1080
    :cond_10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    if-eqz v0, :cond_27

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getOwnerUserId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1084
    const/4 v1, 0x1

    aput-boolean v1, p3, v2

    .line 1085
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 1087
    :cond_27
    return-object v3
.end method

.method synthetic lambda$deleteOrDisableWithId$8$com-android-server-pm-ShortcutPackage(ZILandroid/content/pm/ShortcutInfo;)V
    .registers 6
    .param p1, "disable"    # Z
    .param p2, "disabledReason"    # I
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 678
    const/16 v0, 0x21

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 679
    if-eqz p1, :cond_19

    .line 680
    const/16 v0, 0x40

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 682
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    if-nez v0, :cond_19

    .line 683
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 686
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 689
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 692
    :cond_36
    return-void
.end method

.method synthetic lambda$disableWithId$7$com-android-server-pm-ShortcutPackage(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "disabledMessage"    # Ljava/lang/String;
    .param p2, "disabledMessageResId"    # I
    .param p3, "disabled"    # Landroid/content/pm/ShortcutInfo;

    .line 643
    if-eqz p3, :cond_14

    .line 644
    if-eqz p1, :cond_8

    .line 645
    invoke-virtual {p3, p1}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    goto :goto_14

    .line 646
    :cond_8
    if-eqz p2, :cond_14

    .line 647
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessageResId(I)V

    .line 648
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    .line 651
    :cond_14
    :goto_14
    return-void
.end method

.method synthetic lambda$enableWithId$9$com-android-server-pm-ShortcutPackage(Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 702
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;Z)V

    .line 703
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 704
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 705
    return-void
.end method

.method synthetic lambda$enforceShortcutCountsBeforeOperation$23$com-android-server-pm-ShortcutPackage(Landroid/util/ArrayMap;ILandroid/content/pm/ShortcutInfo;)V
    .registers 6
    .param p1, "counts"    # Landroid/util/ArrayMap;
    .param p2, "operation"    # I
    .param p3, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1512
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 1513
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_1e

    .line 1514
    :cond_f
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 1515
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    .line 1517
    :cond_1e
    :goto_1e
    return-void
.end method

.method synthetic lambda$findAll$13$com-android-server-pm-ShortcutPackage(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V
    .registers 8
    .param p1, "result"    # Ljava/util/List;
    .param p2, "filter"    # Ljava/util/function/Predicate;
    .param p3, "cloneFlag"    # I
    .param p4, "callingLauncher"    # Ljava/lang/String;
    .param p5, "pinnedByCallerSet"    # Landroid/util/ArraySet;
    .param p6, "getPinnedByAnyLauncher"    # Z
    .param p7, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 869
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/ShortcutPackage;->filter(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;ZLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method synthetic lambda$getShortcutByIdsAsync$42$com-android-server-pm-ShortcutPackage(Ljava/util/Set;Ljava/util/function/Consumer;Landroid/app/appsearch/AppSearchSession;)V
    .registers 7
    .param p1, "ids"    # Ljava/util/Set;
    .param p2, "cb"    # Ljava/util/function/Consumer;
    .param p3, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 2556
    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0, p1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/pm/ShortcutPackage$1;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/function/Consumer;)V

    .line 2556
    invoke-virtual {p3, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 2575
    return-void
.end method

.method synthetic lambda$getShortcutByIdsAsync$43$com-android-server-pm-ShortcutPackage(Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "ids"    # Ljava/util/Set;
    .param p2, "cb"    # Ljava/util/function/Consumer;

    .line 2555
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic lambda$getTopShortcutsFromPersistence$48$com-android-server-pm-ShortcutPackage(Landroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p1, "doc"    # Landroid/app/appsearch/GenericDocument;

    .line 2676
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2677
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v0

    .line 2676
    invoke-static {v0, p1}, Landroid/content/pm/ShortcutInfo;->createFromGenericDocument(ILandroid/app/appsearch/GenericDocument;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getTopShortcutsFromPersistence$49$com-android-server-pm-ShortcutPackage(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V
    .registers 5
    .param p1, "cb"    # Lcom/android/internal/infra/AndroidFuture;
    .param p2, "results"    # Landroid/app/appsearch/AppSearchResult;

    .line 2670
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2671
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2672
    return-void

    .line 2674
    :cond_13
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda22;-><init>()V

    .line 2675
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 2676
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 2678
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2674
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 2679
    return-void
.end method

.method synthetic lambda$getTopShortcutsFromPersistence$50$com-android-server-pm-ShortcutPackage(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchSession;)V
    .registers 6
    .param p1, "cb"    # Lcom/android/internal/infra/AndroidFuture;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 2668
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->getSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p2, v1, v0}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object v0

    .line 2669
    .local v0, "res":Landroid/app/appsearch/SearchResults;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2680
    return-void
.end method

.method synthetic lambda$getTopShortcutsFromPersistence$51$com-android-server-pm-ShortcutPackage(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 4
    .param p1, "cb"    # Lcom/android/internal/infra/AndroidFuture;

    .line 2667
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic lambda$pushDynamicShortcut$2$com-android-server-pm-ShortcutPackage(Landroid/content/pm/ShortcutInfo;Landroid/app/appsearch/AppSearchSession;)V
    .registers 6
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 501
    new-instance v0, Landroid/app/appsearch/ReportUsageRequest$Builder;

    .line 502
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/appsearch/ReportUsageRequest$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/ReportUsageRequest$Builder;->build()Landroid/app/appsearch/ReportUsageRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda39;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda39;-><init>()V

    .line 501
    invoke-virtual {p2, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession;->reportUsage(Landroid/app/appsearch/ReportUsageRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$pushDynamicShortcut$3$com-android-server-pm-ShortcutPackage(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 500
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic lambda$refreshPinnedFlags$10$com-android-server-pm-ShortcutPackage(Ljava/util/Set;Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 5
    .param p1, "pinnedShortcuts"    # Ljava/util/Set;
    .param p2, "launcherShortcuts"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 732
    nop

    .line 733
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    .line 732
    invoke-virtual {p2, v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 734
    .local v0, "pinned":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1a

    .line 737
    :cond_16
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 738
    return-void

    .line 735
    :cond_1a
    :goto_1a
    return-void
.end method

.method synthetic lambda$removeAllShortcutsAsync$40$com-android-server-pm-ShortcutPackage(Landroid/app/appsearch/AppSearchSession;)V
    .registers 6
    .param p1, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 2541
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->getSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda45;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda45;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$removeAllShortcutsAsync$41$com-android-server-pm-ShortcutPackage()V
    .registers 3

    .line 2540
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic lambda$removeShortcutAsync$44$com-android-server-pm-ShortcutPackage(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
    .registers 6
    .param p1, "ids"    # Ljava/util/Collection;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 2588
    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$2;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 2588
    invoke-virtual {p2, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method

.method synthetic lambda$removeShortcutAsync$45$com-android-server-pm-ShortcutPackage(Ljava/util/Collection;)V
    .registers 4
    .param p1, "ids"    # Ljava/util/Collection;

    .line 2587
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic lambda$rescanPackageIfNeeded$16$com-android-server-pm-ShortcutPackage(JLandroid/content/pm/ShortcutInfo;)V
    .registers 7
    .param p1, "newVersionCode"    # J
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1180
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    .line 1181
    return-void

    .line 1183
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_16

    .line 1191
    return-void

    .line 1193
    :cond_16
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Restoring shortcut: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/16 v0, 0x40

    invoke-virtual {p3, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 1195
    invoke-virtual {p3, v2}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    .line 1196
    return-void
.end method

.method synthetic lambda$rescanPackageIfNeeded$17$com-android-server-pm-ShortcutPackage(Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;Landroid/content/pm/ShortcutInfo;)V
    .registers 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "publisherRes"    # Landroid/content/res/Resources;
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1205
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1206
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1208
    const-string/jumbo v0, "null activity detected."

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    goto :goto_48

    .line 1210
    :cond_13
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1211
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1211
    const-string v2, "%s is no longer main activity. Disabling shorcut %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, v0, v3}, Lcom/android/server/pm/ShortcutPackage;->disableDynamicWithId(Ljava/lang/String;ZIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1217
    return-void

    .line 1223
    :cond_48
    :goto_48
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasAnyResources()Z

    move-result v0

    if-eqz v0, :cond_62

    if-nez p2, :cond_51

    goto :goto_62

    .line 1227
    :cond_51
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1228
    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceIds(Landroid/content/res/Resources;)V

    .line 1234
    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    .line 1235
    return-void

    .line 1224
    :cond_62
    :goto_62
    return-void
.end method

.method synthetic lambda$saveShortcutsAsync$46$com-android-server-pm-ShortcutPackage(Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V
    .registers 6
    .param p1, "shortcuts"    # Ljava/util/Collection;
    .param p2, "session"    # Landroid/app/appsearch/AppSearchSession;

    .line 2636
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2637
    return-void

    .line 2639
    :cond_7
    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 2641
    invoke-static {p1}, Landroid/content/pm/AppSearchShortcutInfo;->toGenericDocuments(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 2640
    invoke-virtual {v0, v1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments(Ljava/util/Collection;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object v0

    .line 2642
    invoke-virtual {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$3;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShortcutPackage$3;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 2639
    invoke-virtual {p2, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    .line 2659
    return-void
.end method

.method synthetic lambda$saveShortcutsAsync$47$com-android-server-pm-ShortcutPackage(Ljava/util/Collection;)V
    .registers 4
    .param p1, "shortcuts"    # Ljava/util/Collection;

    .line 2635
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->fromAppSearch()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method synthetic lambda$sortShortcutsToActivities$22$com-android-server-pm-ShortcutPackage(Landroid/util/ArrayMap;Landroid/content/pm/ShortcutInfo;)V
    .registers 6
    .param p1, "activitiesToShortcuts"    # Landroid/util/ArrayMap;
    .param p2, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 1462
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1463
    return-void

    .line 1466
    :cond_7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1467
    .local v0, "activity":Landroid/content/ComponentName;
    if-nez v0, :cond_18

    .line 1468
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v2, "null activity detected."

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 1469
    return-void

    .line 1472
    :cond_18
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1474
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    return-void
.end method

.method synthetic lambda$verifyStates$36$com-android-server-pm-ShortcutPackage([ZLcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;)V
    .registers 14
    .param p1, "failed"    # [Z
    .param p2, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2335
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    const-string v1, ": shortcut "

    const-string v2, "Package "

    const-string v3, "ShortcutService.verify"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4c

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2336
    aput-boolean v4, p1, v5

    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not manifest, dynamic or pinned."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_4c
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2341
    aput-boolean v4, p1, v5

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is both dynamic and manifest at the same time."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_84
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_bc

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 2346
    aput-boolean v4, p1, v5

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has null activity, but not floating."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    :cond_bc
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    if-eqz v0, :cond_fa

    :cond_c8
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 2351
    aput-boolean v4, p1, v5

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not floating, but is disabled."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_fa
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    if-eqz v0, :cond_13a

    .line 2356
    aput-boolean v4, p1, v5

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is floating, but has rank="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2358
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2357
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_13a
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_16c

    .line 2361
    aput-boolean v4, p1, v5

    .line 2362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " still has an icon"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_16c
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v0

    if-eqz v0, :cond_1aa

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-nez v0, :cond_1aa

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-nez v0, :cond_1aa

    .line 2366
    aput-boolean v4, p1, v5

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has adaptive bitmap but was not saved to a file nor has icon uri."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_1aa
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_1e2

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_1e2

    .line 2371
    aput-boolean v4, p1, v5

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has both resource and bitmap icons"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_1e2
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_21a

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 2376
    aput-boolean v4, p1, v5

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has both url and bitmap icons"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_21a
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_252

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_252

    .line 2381
    aput-boolean v4, p1, v5

    .line 2382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " has both url and resource icons"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_252
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    .line 2386
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v6

    if-nez v6, :cond_25e

    move v6, v4

    goto :goto_25f

    :cond_25e
    move v6, v5

    :goto_25f
    if-eq v0, v6, :cond_2a3

    .line 2387
    aput-boolean v4, p1, v5

    .line 2388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " isEnabled() and getDisabledReason() disagree: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2390
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " vs "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_2a3
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v0

    const/16 v6, 0x64

    if-ne v0, v6, :cond_2e5

    .line 2393
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageInfo;->getBackupSourceVersionCode()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_2e5

    .line 2395
    aput-boolean v4, p1, v5

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " RESTORED_VERSION_LOWER with no backup source version code."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_2e5
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/pm/ShortcutService;->isDummyMainActivity(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_31b

    .line 2400
    aput-boolean v4, p1, v5

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has a dummy target activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_31b
    return-void
.end method

.method mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 2413
    .local p3, "transform":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2416
    if-eqz p2, :cond_e

    .line 2417
    :try_start_b
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2419
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2420
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v1, :cond_16

    .line 2421
    monitor-exit v0

    return-void

    .line 2423
    :cond_16
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2424
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ShortcutInfo;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    .line 2425
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    monitor-exit v0

    .line 2426
    return-void

    .line 2425
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v1
.end method

.method protected onRestored(I)V
    .registers 5
    .param p1, "restoreBlockReason"    # I

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "flags"

    aput-object v2, v0, v1

    .line 260
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "disabledReason"

    aput-object v2, v0, v1

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 259
    const-string v1, "%s:-%s AND %s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "query":Ljava/lang/String;
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda57;

    invoke-direct {v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda57;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 278
    return-void
.end method

.method public pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z
    .registers 14
    .param p1, "newShortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 440
    .local p2, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "pushDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 443
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 445
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 446
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 447
    .local v1, "oldShortcut":Landroid/content/pm/ShortcutInfo;
    const/4 v2, 0x0

    .line 449
    .local v2, "deleted":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 450
    :cond_23
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 451
    .local v4, "service":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v5

    .line 453
    .local v5, "maxShortcuts":I
    nop

    .line 454
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v6

    .line 455
    .local v6, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 457
    .local v7, "activityShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v7, :cond_62

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_62

    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error pushing shortcut. There are already "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 460
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " shortcuts."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    invoke-virtual {v4, v8}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 462
    :cond_62
    if-eqz v7, :cond_ab

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v5, :cond_ab

    .line 465
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 467
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    .line 468
    .local v8, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 470
    const-string v3, "ShortcutService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to remove manifest shortcut while pushing dynamic shortcut "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 471
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 470
    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return v0

    .line 475
    :cond_9a
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v0, v0}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;ZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    if-eqz v9, :cond_a9

    move v9, v0

    goto :goto_aa

    :cond_a9
    move v9, v3

    :goto_aa
    move v2, v9

    .line 480
    .end local v4    # "service":Lcom/android/server/pm/ShortcutService;
    .end local v5    # "maxShortcuts":I
    .end local v6    # "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    .end local v7    # "activityShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v8    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_ab
    if-eqz v1, :cond_bb

    .line 483
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    .line 486
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v3

    const v4, 0x60004002

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 490
    :cond_bb
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 491
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 492
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_ca
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    monitor-exit v0

    goto :goto_db

    :catchall_d5
    move-exception v3

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_ca .. :try_end_d7} :catchall_d5

    throw v3

    .line 497
    :cond_d8
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 499
    :cond_db
    :goto_db
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 500
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 509
    :cond_e9
    return v2
.end method

.method public refreshPinnedFlags()V
    .registers 5

    .line 728
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 731
    .local v0, "pinnedShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 741
    .local v1, "pinned":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v1, :cond_1d

    .line 742
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda31;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 748
    :cond_1d
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;

    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda32;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 754
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda33;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 757
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    .line 758
    return-void
.end method

.method removeAllShortcutsAsync()V
    .registers 2

    .line 2537
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2538
    return-void

    .line 2540
    :cond_7
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 2547
    return-void
.end method

.method reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V
    .registers 13
    .param p1, "usageStatsManagerInternal"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p2, "shortcutId"    # Ljava/lang/String;

    .line 1686
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1688
    .local v1, "currentTS":J
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1689
    .local v3, "s":Lcom/android/server/pm/ShortcutService;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    .line 1690
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1d

    goto :goto_44

    .line 1692
    :cond_1d
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    iget v4, v3, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-lez v4, :cond_42

    .line 1693
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1694
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 1696
    :cond_42
    monitor-exit v0

    return-void

    .line 1691
    :cond_44
    :goto_44
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    :goto_4d
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_6c

    .line 1700
    .local v4, "token":J
    :try_start_51
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getUser()Lcom/android/server/pm/ShortcutUser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v7

    .line 1700
    invoke-virtual {p1, v6, p2, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_66

    .line 1703
    :try_start_60
    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1704
    nop

    .line 1705
    .end local v1    # "currentTS":J
    .end local v3    # "s":Lcom/android/server/pm/ShortcutService;
    .end local v4    # "token":J
    monitor-exit v0

    .line 1706
    return-void

    .line 1703
    .restart local v1    # "currentTS":J
    .restart local v3    # "s":Lcom/android/server/pm/ShortcutService;
    .restart local v4    # "token":J
    :catchall_66
    move-exception v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 1704
    nop

    .end local p0    # "this":Lcom/android/server/pm/ShortcutPackage;
    .end local p1    # "usageStatsManagerInternal":Landroid/app/usage/UsageStatsManagerInternal;
    .end local p2    # "shortcutId":Ljava/lang/String;
    throw v6

    .line 1705
    .end local v1    # "currentTS":J
    .end local v3    # "s":Lcom/android/server/pm/ShortcutService;
    .end local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutPackage;
    .restart local p1    # "usageStatsManagerInternal":Landroid/app/usage/UsageStatsManagerInternal;
    .restart local p2    # "shortcutId":Ljava/lang/String;
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public rescanPackageIfNeeded(ZZ)Z
    .registers 15
    .param p1, "isNewApp"    # Z
    .param p2, "forceRescan"    # Z

    .line 1107
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1108
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getStatStartTime()J

    move-result-wide v1

    .line 1112
    .local v1, "start":J
    const/16 v3, 0xe

    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v6

    .line 1112
    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_c2

    .line 1114
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    if-nez v4, :cond_22

    .line 1115
    nop

    .line 1136
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1115
    return v5

    .line 1118
    :cond_22
    if-nez p1, :cond_4f

    if-nez p2, :cond_4f

    .line 1129
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4f

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->getLastUpdateTime()J

    move-result-wide v6

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4f

    .line 1131
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->areAllActivitiesStillEnabled()Z

    move-result v6
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_c2

    if-eqz v6, :cond_4f

    .line 1132
    nop

    .line 1136
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1132
    return v5

    .line 1136
    :cond_4f
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1137
    nop

    .line 1140
    const/4 v3, 0x0

    .line 1142
    .local v3, "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1144
    :try_start_57
    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1145
    .local v7, "shareTargetSize":I
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageUserId()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 1145
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v8
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6f} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_6f} :catch_73
    .catchall {:try_start_57 .. :try_end_6f} :catchall_71

    move-object v3, v8

    .line 1149
    goto :goto_7b

    .line 1150
    .end local v7    # "shareTargetSize":I
    :catchall_71
    move-exception v5

    goto :goto_c0

    .line 1147
    :catch_73
    move-exception v7

    .line 1148
    .local v7, "e":Ljava/lang/Exception;
    :try_start_74
    const-string v8, "ShortcutService"

    const-string v9, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_71

    .line 1151
    if-nez v3, :cond_80

    move v6, v5

    goto :goto_84

    .line 1152
    :cond_80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_84
    nop

    .line 1160
    .local v6, "manifestShortcutSize":I
    if-eqz p1, :cond_8a

    if-nez v6, :cond_8a

    .line 1165
    return v5

    .line 1172
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ShortcutPackageInfo;->updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageInfo;->getVersionCode()J

    move-result-wide v7

    .line 1179
    .local v7, "newVersionCode":J
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;

    invoke-direct {v5, p0, v7, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/pm/ShortcutPackage;J)V

    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1201
    if-nez p1, :cond_af

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1203
    .local v5, "publisherRes":Landroid/content/res/Resources;
    new-instance v9, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda60;

    invoke-direct {v9, p0, v0, v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;)V

    invoke-direct {p0, v9}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1239
    .end local v5    # "publisherRes":Landroid/content/res/Resources;
    :cond_af
    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->publishManifestShortcuts(Ljava/util/List;)Z

    .line 1241
    if-eqz v3, :cond_b7

    .line 1242
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->pushOutExcessShortcuts()Z

    .line 1245
    :cond_b7
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 1249
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 1251
    const/4 v5, 0x1

    return v5

    .line 1150
    .end local v6    # "manifestShortcutSize":I
    .end local v7    # "newVersionCode":J
    :goto_c0
    :try_start_c0
    monitor-exit v6
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_71

    throw v5

    .line 1136
    .end local v3    # "newManifestShortcutList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_c2
    move-exception v4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 1137
    throw v4
.end method

.method public resetRateLimiting()V
    .registers 2

    .line 830
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez v0, :cond_a

    .line 831
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 832
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->scheduleSave()V

    .line 834
    :cond_a
    return-void
.end method

.method public resetRateLimitingForCommandLineNoSaving()V
    .registers 3

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 838
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 839
    return-void
.end method

.method public resetThrottling()V
    .registers 2

    .line 910
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 911
    return-void
.end method

.method public resolveResourceStrings()V
    .registers 5

    .line 1567
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 1569
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1570
    .local v1, "publisherRes":Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1572
    .local v2, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v1, :cond_18

    .line 1573
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1, v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;-><init>(Landroid/content/res/Resources;Lcom/android/server/pm/ShortcutService;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 1580
    :cond_18
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1581
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 1583
    :cond_22
    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;Z)V
    .registers 10
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1837
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1838
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1839
    .local v1, "size":I
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1841
    .local v2, "shareTargetSize":I
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->hasNoShortcut()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-nez v2, :cond_1d

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v3, :cond_1d

    .line 1842
    monitor-exit v0

    return-void

    .line 1845
    :cond_1d
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1847
    const-string/jumbo v3, "name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1848
    const-string v3, "call-count"

    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1849
    const-string v3, "last-reset"

    iget-wide v5, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1850
    if-nez p2, :cond_4e

    .line 1851
    const-string/jumbo v3, "schema-version"

    iget-boolean v5, p0, Lcom/android/server/pm/ShortcutPackage;->mIsAppSearchSchemaUpToDate:Z

    if-eqz v5, :cond_49

    .line 1852
    const-wide/16 v5, 0x3

    goto :goto_4b

    :cond_49
    const-wide/16 v5, 0x0

    .line 1851
    :goto_4b
    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 1854
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlSerializer;Z)V

    .line 1856
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5a
    if-ge v3, v1, :cond_72

    .line 1857
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    .line 1858
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackageInfo;->isBackupAllowed()Z

    move-result v6

    .line 1857
    invoke-direct {p0, p1, v5, p2, v6}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Landroid/util/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 1856
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 1861
    .end local v3    # "j":I
    :cond_72
    if-nez p2, :cond_85

    .line 1862
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_75
    if-ge v3, v2, :cond_85

    .line 1863
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 1862
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 1867
    .end local v3    # "j":I
    :cond_85
    const-string/jumbo v3, "package"

    invoke-interface {p1, v4, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1868
    nop

    .end local v1    # "size":I
    .end local v2    # "shareTargetSize":I
    monitor-exit v0

    .line 1869
    return-void

    .line 1868
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method scheduleSaveToAppSearchLocked()V
    .registers 4

    .line 2614
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 2615
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2616
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2617
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mTransientShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2619
    :cond_19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda34;

    invoke-direct {v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda34;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 2620
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    .line 2619
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->saveShortcutsAsync(Ljava/util/Collection;)V

    .line 2621
    return-void
.end method

.method public tryApiCall(Z)Z
    .registers 5
    .param p1, "unlimited"    # Z

    .line 816
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 818
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result v1

    iget v2, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt v1, v2, :cond_e

    .line 819
    const/4 v1, 0x0

    return v1

    .line 821
    :cond_e
    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 822
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->scheduleSave()V

    .line 823
    return v2
.end method

.method public updateInvisibleShortcutForPinRequestWith(Landroid/content/pm/ShortcutInfo;)V
    .registers 4
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 709
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 710
    .local v0, "source":Landroid/content/pm/ShortcutInfo;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 714
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 716
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 719
    return-void
.end method

.method public verifyStates()V
    .registers 10

    .line 2301
    invoke-super {p0}, Lcom/android/server/pm/ShortcutPackageItem;->verifyStates()V

    .line 2303
    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 2305
    .local v1, "failed":[Z
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 2307
    .local v2, "s":Lcom/android/server/pm/ShortcutService;
    nop

    .line 2308
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    .line 2311
    .local v3, "all":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "outer":I
    :goto_14
    const/4 v5, 0x0

    if-ltz v4, :cond_9d

    .line 2312
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2313
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v8

    if-le v7, v8, :cond_71

    .line 2314
    aput-boolean v0, v1, v5

    .line 2315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " has "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2316
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " shortcuts."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2315
    const-string v7, "ShortcutService.verify"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_71
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda40;

    invoke-direct {v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda40;-><init>()V

    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2323
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2324
    .local v5, "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v7, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda41;

    invoke-direct {v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda41;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2326
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2327
    .local v7, "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v8, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;

    invoke-direct {v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2329
    invoke-direct {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 2330
    invoke-direct {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)Z

    .line 2311
    .end local v5    # "dynamicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .end local v7    # "manifestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_14

    .line 2334
    .end local v4    # "outer":I
    :cond_9d
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/pm/ShortcutPackage;[ZLcom/android/server/pm/ShortcutService;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 2406
    aget-boolean v0, v1, v5

    if-nez v0, :cond_aa

    .line 2409
    return-void

    .line 2407
    :cond_aa
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "See logcat for errors"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
