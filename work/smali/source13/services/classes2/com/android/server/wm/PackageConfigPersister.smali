.class public Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;,
        Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;,
        Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    }
.end annotation


# static fields
.field private static final ATTR_LOCALES:Ljava/lang/String; = "locale_list"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final DEBUG:Z = false

.field private static final PACKAGE_DIRNAME:Ljava/lang/String; = "package_configs"

.field private static final SUFFIX_FILE_NAME:Ljava/lang/String; = "_config.xml"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mModified:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingWrite:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/PackageConfigPersister;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingWrite(Lcom/android/server/wm/PackageConfigPersister;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveRecord(Lcom/android/server/wm/PackageConfigPersister;Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetUserConfigsDir(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "queue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 79
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 80
    return-void
.end method

.method private findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    .line 374
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;>;"
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 375
    .local v0, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-nez v0, :cond_a

    .line 376
    const/4 v1, 0x0

    return-object v1

    .line 378
    :cond_a
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-object v1
.end method

.method private findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;"
        }
    .end annotation

    .line 358
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;>;"
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 359
    .local v0, "records":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-nez v0, :cond_11

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 361
    invoke-virtual {p1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    :cond_11
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 364
    .local v1, "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v1, :cond_1a

    .line 365
    return-object v1

    .line 367
    :cond_1a
    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    .line 368
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-object v1
.end method

.method private static getUserConfigsDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package_configs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$removePackage$1(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;)Z
    .registers 4
    .param p0, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .param p1, "item"    # Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    .line 281
    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    if-ne v0, v1, :cond_12

    iget-object v0, p1, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;->mRecord:Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    iget v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private removePackage(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    .line 278
    .local v0, "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v0, :cond_19

    .line 279
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const-class v3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 286
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    .line 287
    .local v1, "modifyRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v1, :cond_31

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/PackageConfigPersister;->removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    invoke-direct {v3, p2, p1}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 292
    :cond_31
    return-void
.end method

.method private removeRecord(Landroid/util/SparseArray;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 5
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ">;>;",
            "Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;",
            ")V"
        }
    .end annotation

    .line 383
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;>;"
    iget v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 384
    .local v0, "processes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-eqz v0, :cond_f

    .line 385
    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_f
    return-void
.end method

.method private updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .registers 4
    .param p1, "requestedLocaleList"    # Landroid/os/LocaleList;
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 236
    if-eqz p1, :cond_f

    iget-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_f

    .line 239
    :cond_b
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 240
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z
    .registers 4
    .param p1, "requestedNightMode"    # Ljava/lang/Integer;
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 228
    if-eqz p1, :cond_f

    iget-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_f

    .line 231
    :cond_b
    iput-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 232
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "userId"    # I

    .line 317
    const-string v0, "INSTALLED PACKAGES HAVING APP-SPECIFIC CONFIGURATIONS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current user ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 321
    .local v1, "persistedPackageConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-eqz v1, :cond_88

    .line 323
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 324
    .local v3, "packageConfig":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    PackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        NightMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Locales : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    .end local v3    # "packageConfig":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    goto :goto_30

    .line 330
    .end local v1    # "persistedPackageConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    :cond_88
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_1e .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    .line 302
    .local v1, "packageConfigRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-nez v1, :cond_30

    .line 303
    sget-object v2, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App-specific configuration not found for packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 307
    :cond_30
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    iget-object v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;-><init>(Ljava/lang/Integer;Landroid/os/LocaleList;)V

    monitor-exit v0

    return-object v2

    .line 309
    .end local v1    # "packageConfigRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method synthetic lambda$removeUser$0$com-android-server-wm-PackageConfigPersister(Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "record"    # Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 254
    iget-object v0, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 255
    return-void
.end method

.method loadUserPackages(I)V
    .registers 21
    .param p1, "userId"    # I

    .line 84
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/PackageConfigPersister;->getUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    .line 86
    .local v3, "userConfigsDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v0

    .line 87
    .local v4, "configFiles":[Ljava/io/File;
    if-nez v4, :cond_2b

    .line 88
    sget-object v0, Lcom/android/server/wm/PackageConfigPersister;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadPackages: empty list files from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v2

    return-void

    .line 92
    :cond_2b
    const/4 v0, 0x0

    move v5, v0

    .local v5, "fileIndex":I
    :goto_2d
    array-length v0, v4

    if-ge v5, v0, :cond_110

    .line 93
    aget-object v0, v4, v5

    move-object v6, v0

    .line 98
    .local v6, "configFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_config.xml"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_114

    if-nez v0, :cond_43

    .line 99
    move/from16 v13, p1

    goto/16 :goto_10c

    .line 102
    :cond_43
    :try_start_43
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_48} :catch_105
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_48} :catch_f7
    .catchall {:try_start_43 .. :try_end_48} :catchall_114

    move-object v7, v0

    .line 103
    .local v7, "is":Ljava/io/InputStream;
    :try_start_49
    invoke-static {v7}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 105
    .local v0, "in":Landroid/util/TypedXmlPullParser;
    const/4 v8, 0x0

    .line 106
    .local v8, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 107
    .local v9, "nightMode":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 108
    .local v10, "locales":Landroid/os/LocaleList;
    :goto_50
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "event":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_cc

    const/4 v11, 0x3

    if-eq v12, v11, :cond_cc

    .line 110
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "name":Ljava/lang/String;
    const/4 v14, 0x2

    if-ne v12, v14, :cond_c8

    .line 115
    const-string v15, "config"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c8

    .line 116
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v15

    sub-int/2addr v15, v13

    .local v15, "attIdx":I
    :goto_6f
    if-ltz v15, :cond_c8

    .line 118
    invoke-interface {v0, v15}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 119
    .local v17, "attrName":Ljava/lang/String;
    invoke-interface {v0, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 120
    .local v16, "attrValue":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_11c

    move-object/from16 v14, v17

    .end local v17    # "attrName":Ljava/lang/String;
    .local v14, "attrName":Ljava/lang/String;
    goto :goto_ab

    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v17    # "attrName":Ljava/lang/String;
    :sswitch_85
    const-string v13, "locale_list"

    move-object/from16 v14, v17

    .end local v17    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ab

    const/4 v13, 0x2

    goto :goto_ac

    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v17    # "attrName":Ljava/lang/String;
    :sswitch_91
    move-object/from16 v14, v17

    .end local v17    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    const-string/jumbo v13, "night_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ab

    const/4 v13, 0x1

    goto :goto_ac

    .end local v14    # "attrName":Ljava/lang/String;
    .restart local v17    # "attrName":Ljava/lang/String;
    :sswitch_9e
    move-object/from16 v14, v17

    .end local v17    # "attrName":Ljava/lang/String;
    .restart local v14    # "attrName":Ljava/lang/String;
    const-string/jumbo v13, "package_name"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ab

    const/4 v13, 0x0

    goto :goto_ac

    :cond_ab
    :goto_ab
    const/4 v13, -0x1

    :goto_ac
    packed-switch v13, :pswitch_data_12a

    goto :goto_c3

    .line 128
    :pswitch_b0
    invoke-static/range {v16 .. v16}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v13

    move-object v10, v13

    goto :goto_c3

    .line 125
    :pswitch_b6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v9, v13

    .line 126
    goto :goto_c3

    .line 122
    :pswitch_c0
    move-object/from16 v8, v16

    .line 123
    nop

    .line 117
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v16    # "attrValue":Ljava/lang/String;
    :goto_c3
    add-int/lit8 v15, v15, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_6f

    .line 134
    .end local v15    # "attIdx":I
    :cond_c8
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 135
    .end local v11    # "name":Ljava/lang/String;
    goto :goto_50

    .line 136
    :cond_cc
    if-eqz v8, :cond_dd

    .line 137
    iget-object v11, v1, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;
    :try_end_d0
    .catchall {:try_start_49 .. :try_end_d0} :catchall_e3

    .line 138
    move/from16 v13, p1

    :try_start_d2
    invoke-direct {v1, v11, v8, v13}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v11

    .line 139
    .local v11, "initRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    iput-object v9, v11, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    .line 140
    iput-object v10, v11, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_db

    goto :goto_df

    .line 102
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "nightMode":Ljava/lang/Integer;
    .end local v10    # "locales":Landroid/os/LocaleList;
    .end local v11    # "initRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .end local v12    # "event":I
    :catchall_db
    move-exception v0

    goto :goto_e6

    .line 136
    .restart local v0    # "in":Landroid/util/TypedXmlPullParser;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "nightMode":Ljava/lang/Integer;
    .restart local v10    # "locales":Landroid/os/LocaleList;
    .restart local v12    # "event":I
    :cond_dd
    move/from16 v13, p1

    .line 145
    .end local v0    # "in":Landroid/util/TypedXmlPullParser;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "nightMode":Ljava/lang/Integer;
    .end local v10    # "locales":Landroid/os/LocaleList;
    .end local v12    # "event":I
    :goto_df
    :try_start_df
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_df .. :try_end_e2} :catch_f5
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_e2} :catch_f1
    .catchall {:try_start_df .. :try_end_e2} :catchall_119

    goto :goto_10b

    .line 102
    :catchall_e3
    move-exception v0

    move/from16 v13, p1

    :goto_e6
    move-object v8, v0

    :try_start_e7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    goto :goto_f0

    :catchall_eb
    move-exception v0

    move-object v9, v0

    :try_start_ed
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "userConfigsDir":Ljava/io/File;
    .end local v4    # "configFiles":[Ljava/io/File;
    .end local v5    # "fileIndex":I
    .end local v6    # "configFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/PackageConfigPersister;
    .end local p1    # "userId":I
    :goto_f0
    throw v8
    :try_end_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_f1} :catch_f5
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f1} :catch_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ed .. :try_end_f1} :catch_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_119

    .line 149
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v3    # "userConfigsDir":Ljava/io/File;
    .restart local v4    # "configFiles":[Ljava/io/File;
    .restart local v5    # "fileIndex":I
    .restart local v6    # "configFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/PackageConfigPersister;
    .restart local p1    # "userId":I
    :catch_f1
    move-exception v0

    goto :goto_fa

    .line 147
    :catch_f3
    move-exception v0

    goto :goto_101

    .line 145
    :catch_f5
    move-exception v0

    goto :goto_108

    .line 149
    :catch_f7
    move-exception v0

    move/from16 v13, p1

    .line 150
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_fa
    :try_start_fa
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_10c

    .line 147
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_fe
    move-exception v0

    move/from16 v13, p1

    .line 148
    .local v0, "e":Ljava/io/IOException;
    :goto_101
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_10b

    .line 145
    :catch_105
    move-exception v0

    move/from16 v13, p1

    .line 146
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_108
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 151
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_10b
    nop

    .line 92
    .end local v6    # "configFile":Ljava/io/File;
    :goto_10c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2d

    :cond_110
    move/from16 v13, p1

    .line 153
    .end local v3    # "userConfigsDir":Ljava/io/File;
    .end local v4    # "configFiles":[Ljava/io/File;
    .end local v5    # "fileIndex":I
    monitor-exit v2

    .line 154
    return-void

    .line 153
    :catchall_114
    move-exception v0

    move/from16 v13, p1

    :goto_117
    monitor-exit v2
    :try_end_118
    .catchall {:try_start_fa .. :try_end_118} :catchall_119

    throw v0

    :catchall_119
    move-exception v0

    goto :goto_117

    nop

    :sswitch_data_11c
    .sparse-switch
        -0x6fe3451c -> :sswitch_9e
        -0x23dea296 -> :sswitch_91
        0x72044363 -> :sswitch_85
    .end sparse-switch

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_b6
        :pswitch_b0
    .end packed-switch
.end method

.method onPackageDataCleared(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method onPackageUninstall(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method removeUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 247
    .local v1, "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 248
    .local v2, "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_24

    :cond_1b
    if-eqz v2, :cond_33

    .line 249
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_24

    goto :goto_33

    .line 252
    :cond_24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 253
    .local v3, "tempList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    new-instance v4, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 256
    .end local v1    # "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .end local v2    # "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .end local v3    # "tempList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    monitor-exit v0

    .line 257
    return-void

    .line 250
    .restart local v1    # "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .restart local v2    # "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    .line 256
    .end local v1    # "modifyRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    .end local v2    # "writeRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;>;"
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .registers 9
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    .line 165
    .local v1, "modifiedRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v1, :cond_20

    .line 166
    iget-object v2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object v4, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 168
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 167
    invoke-static {v3, v4}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v3

    .line 166
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;)Z

    .line 170
    .end local v1    # "modifiedRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :cond_20
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "impl"    # Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "isRecordPresent":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v2

    .line 184
    .local v2, "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-eqz v2, :cond_e

    .line 185
    const/4 v1, 0x1

    goto :goto_15

    .line 187
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v3

    move-object v2, v3

    .line 189
    :goto_15
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getNightMode()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v3

    .line 190
    .local v3, "isNightModeChanged":Z
    invoke-virtual {p3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v4

    .line 192
    .local v4, "isLocalesChanged":Z
    iget-object v5, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v5, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->isResetNightMode()Z

    move-result v5

    if-eqz v5, :cond_3c

    :cond_2f
    iget-object v5, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v5, :cond_7a

    iget-object v5, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 193
    invoke-virtual {v5}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_7a

    .line 200
    :cond_3c
    const/4 v5, 0x0

    if-nez v3, :cond_43

    if-nez v4, :cond_43

    .line 201
    monitor-exit v0

    return v5

    .line 203
    :cond_43
    iget-object v6, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object v7, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 204
    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v6

    .line 206
    .local v6, "pendingRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    if-nez v6, :cond_5a

    .line 207
    iget-object v7, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object v8, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v7

    .local v7, "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    goto :goto_5b

    .line 210
    .end local v7    # "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :cond_5a
    move-object v7, v6

    .line 213
    .restart local v7    # "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :goto_5b
    iget-object v8, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-direct {p0, v8, v7}, Lcom/android/server/wm/PackageConfigPersister;->updateNightMode(Ljava/lang/Integer;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v8

    if-nez v8, :cond_6d

    iget-object v8, v2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    .line 214
    invoke-direct {p0, v8, v7}, Lcom/android/server/wm/PackageConfigPersister;->updateLocales(Landroid/os/LocaleList;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)Z

    move-result v8

    if-nez v8, :cond_6d

    .line 215
    monitor-exit v0

    return v5

    .line 221
    :cond_6d
    iget-object v8, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v9, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-direct {v9, p0, v7}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    invoke-virtual {v8, v9, v5}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 222
    const/4 v5, 0x1

    monitor-exit v0

    return v5

    .line 195
    .end local v6    # "pendingRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .end local v7    # "writeRecord":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    :cond_7a
    :goto_7a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(Ljava/lang/String;I)V

    .line 199
    monitor-exit v0

    return v1

    .line 224
    .end local v1    # "isRecordPresent":Z
    .end local v2    # "record":Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .end local v3    # "isNightModeChanged":Z
    .end local v4    # "isLocalesChanged":Z
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v1
.end method
