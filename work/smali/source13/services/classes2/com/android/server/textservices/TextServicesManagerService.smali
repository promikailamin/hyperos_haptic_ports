.class public Lcom/android/server/textservices/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserData(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfindAvailSystemSpellCheckerLocked(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentSpellCheckerForUser(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCurrentSpellCheckerLocked(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 80
    const-class v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 328
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 329
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 330
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 331
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    .line 332
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 333
    return-void
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .registers 9
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 399
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    if-nez p2, :cond_6

    goto :goto_1e

    .line 405
    :cond_6
    invoke-static {}, Lcom/android/server/am/AutoStartManagerServiceStub;->getInstance()Lcom/android/server/am/AutoStartManagerServiceStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p4}, Lcom/android/server/am/AutoStartManagerServiceStub;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 406
    return v0

    .line 409
    :cond_13
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 400
    :cond_1e
    :goto_1e
    sget-object v1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- bind failed: service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v0
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 20
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 423
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-static/range {p2 .. p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerList(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    .line 425
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    .line 426
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2a
    goto :goto_f

    .line 430
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 431
    .local v2, "spellCheckersCount":I
    if-nez v2, :cond_3b

    .line 432
    sget-object v3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v3, 0x0

    return-object v3

    .line 435
    :cond_3b
    if-eqz v0, :cond_54

    .line 436
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    if-ge v3, v2, :cond_54

    .line 437
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/SpellCheckerInfo;

    .line 438
    .local v5, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 442
    return-object v5

    .line 436
    .end local v5    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 450
    .end local v3    # "i":I
    :cond_54
    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 451
    .local v5, "systemLocal":Ljava/util/Locale;
    nop

    .line 452
    invoke-static {v5}, Lcom/android/server/textservices/LocaleUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v6

    .line 457
    .local v6, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 458
    .local v7, "localeCount":I
    const/4 v8, 0x0

    .local v8, "localeIndex":I
    :goto_6c
    if-ge v8, v7, :cond_a1

    .line 459
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Locale;

    .line 460
    .local v9, "locale":Ljava/util/Locale;
    const/4 v10, 0x0

    .local v10, "spellCheckersIndex":I
    :goto_75
    if-ge v10, v2, :cond_9e

    .line 462
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/textservice/SpellCheckerInfo;

    .line 463
    .local v11, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v12

    .line 464
    .local v12, "subtypeCount":I
    const/4 v13, 0x0

    .local v13, "subtypeIndex":I
    :goto_82
    if-ge v13, v12, :cond_9b

    .line 465
    invoke-virtual {v11, v13}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v14

    .line 466
    .local v14, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .line 467
    invoke-virtual {v14}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 466
    invoke-static {v15}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v15

    .line 468
    .local v15, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v9, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_98

    .line 472
    return-object v11

    .line 464
    .end local v14    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v15    # "subtypeLocale":Ljava/util/Locale;
    :cond_98
    add-int/lit8 v13, v13, 0x1

    goto :goto_82

    .line 461
    .end local v11    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v12    # "subtypeCount":I
    .end local v13    # "subtypeIndex":I
    :cond_9b
    add-int/lit8 v10, v10, 0x1

    goto :goto_75

    .line 458
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "spellCheckersIndex":I
    :cond_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6c

    .line 478
    .end local v8    # "localeIndex":I
    :cond_a1
    if-le v2, v4, :cond_ab

    .line 479
    sget-object v4, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "more than one spell checker service found, picking first"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_ab
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    return-object v4
.end method

.method private getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 486
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 488
    .local v1, "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit v0

    return-object v2

    .line 489
    .end local v1    # "data":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .registers 3
    .param p1, "callingUserId"    # I

    .line 771
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    return-object v0
.end method

.method private initializeInternalStateLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 338
    .local v0, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v0, :cond_17

    .line 339
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 340
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    :cond_17
    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$minitializeTextServicesData(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 344
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 345
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v1, :cond_28

    .line 346
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 350
    invoke-direct {p0, v1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 352
    :cond_28
    return-void
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 7
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 711
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 715
    .local v0, "sciId":Ljava/lang/String;
    :goto_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 717
    .local v1, "ident":J
    :try_start_d
    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 719
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    nop

    .line 721
    return-void

    .line 719
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    throw v3
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .registers 8
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 635
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "sciId":Ljava/lang/String;
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 638
    .local v1, "connection":Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 643
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmUserId(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I

    move-result v3

    const v4, 0x800001

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/android/server/textservices/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_31

    .line 645
    sget-object v3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v3, 0x0

    return-object v3

    .line 648
    :cond_31
    new-instance v3, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v3, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V

    .line 650
    .local v3, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-object v3
.end method

.method private unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 5
    .param p1, "tsd"    # Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 413
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    .line 414
    .local v0, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 415
    .local v2, "scbg":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 416
    .end local v2    # "scbg":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_c

    .line 417
    :cond_1c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 418
    return-void
.end method

.method private verifyUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 702
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 703
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_2a

    .line 704
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cross-user interaction requires INTERACT_ACROSS_USERS_FULL. userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callingUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_2a
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 725
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 727
    :cond_b
    array-length v0, p3

    if-eqz v0, :cond_83

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    aget-object v0, p3, v1

    const-string v3, "-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_83

    .line 739
    :cond_1e
    array-length v0, p3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7d

    aget-object v0, p3, v1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_7d

    .line 743
    :cond_2d
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 744
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 745
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_41

    .line 746
    const-string v2, "Non-existent user."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    return-void

    .line 749
    :cond_41
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 750
    .local v2, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_51

    .line 751
    const-string v3, "User needs to unlock first."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    return-void

    .line 754
    :cond_51
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 755
    :try_start_54
    const-string v4, "Current Text Services Manager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    invoke-static {v2, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$mdump(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 758
    monitor-exit v3

    goto :goto_a8

    :catchall_7a
    move-exception v4

    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_54 .. :try_end_7c} :catchall_7a

    throw v4

    .line 740
    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :cond_7d
    :goto_7d
    const-string v0, "Invalid arguments to text services."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    return-void

    .line 729
    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_86
    const-string v1, "Current Text Services Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 731
    const-string v1, "  Users:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 733
    .local v1, "numOfUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_97
    if-ge v2, v1, :cond_a7

    .line 734
    iget-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 735
    .local v3, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    invoke-static {v3, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$mdump(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 733
    .end local v3    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 737
    .end local v1    # "numOfUsers":I
    .end local v2    # "i":I
    :cond_a7
    monitor-exit v0

    .line 761
    :goto_a8
    return-void

    .line 737
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_86 .. :try_end_ab} :catchall_a9

    throw v1
.end method

.method public finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 682
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 684
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    .line 686
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v3

    .line 689
    .local v3, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 690
    .local v5, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    if-nez v5, :cond_2e

    goto :goto_1f

    .line 692
    :cond_2e
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    nop

    .end local v5    # "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_1f

    .line 694
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 695
    .local v4, "removeSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_38
    if-ge v5, v4, :cond_46

    .line 696
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v6, p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 695
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 698
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v2    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v3    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "removeSize":I
    .end local v5    # "i":I
    :cond_46
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "locale"    # Ljava/lang/String;

    .line 496
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 497
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 499
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_f

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 501
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 502
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 516
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 518
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    monitor-exit v0

    return-object v2

    .line 520
    :cond_f
    const/4 v3, 0x0

    .line 521
    invoke-virtual {v1, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v3

    .line 525
    .local v3, "subtypeHashCode":I
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 526
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v5, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object v1, v5

    .line 527
    .local v1, "systemLocale":Ljava/util/Locale;
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_7e

    .line 528
    if-eqz v4, :cond_7d

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_7d

    .line 534
    :cond_2f
    if-nez v3, :cond_34

    if-nez p2, :cond_34

    .line 536
    return-object v2

    .line 539
    :cond_34
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    .line 540
    .local v0, "numSubtypes":I
    if-eqz v3, :cond_4c

    .line 542
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    if-ge v5, v0, :cond_4b

    .line 543
    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 544
    .local v6, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v7

    if-ne v7, v3, :cond_48

    .line 545
    return-object v6

    .line 542
    .end local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 548
    .end local v5    # "i":I
    :cond_4b
    return-object v2

    .line 553
    :cond_4c
    if-nez v1, :cond_4f

    .line 554
    return-object v2

    .line 556
    :cond_4f
    const/4 v2, 0x0

    .line 557
    .local v2, "firstLanguageMatchingSubtype":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_51
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    if-ge v5, v6, :cond_7c

    .line 558
    invoke-virtual {v4, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 559
    .restart local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v7

    .line 560
    .local v7, "scsLocale":Ljava/util/Locale;
    invoke-static {v7, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 562
    return-object v6

    .line 564
    :cond_66
    if-nez v2, :cond_79

    if-eqz v7, :cond_79

    .line 565
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 567
    move-object v2, v6

    .line 557
    .end local v6    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v7    # "scsLocale":Ljava/util/Locale;
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 570
    .end local v5    # "i":I
    :cond_7c
    return-object v2

    .line 532
    .end local v0    # "numSubtypes":I
    .end local v2    # "firstLanguageMatchingSubtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_7d
    :goto_7d
    return-object v2

    .line 527
    .end local v1    # "systemLocale":Ljava/util/Locale;
    .end local v3    # "subtypeHashCode":I
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1
.end method

.method public getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;
    .registers 6
    .param p1, "userId"    # I

    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 658
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 660
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_f

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 662
    :cond_f
    invoke-static {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerList(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 670
    .local v2, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v0

    return-object v3

    .line 671
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v2    # "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    .registers 24
    .param p1, "userId"    # I
    .param p2, "sciId"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p5, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .param p7, "supportedAttributes"    # I

    .line 577
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 578
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    if-eqz p4, :cond_78

    if-nez p5, :cond_13

    goto/16 :goto_78

    .line 583
    :cond_13
    iget-object v10, v1, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 584
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v0

    move-object v11, v0

    .line 585
    .local v11, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v11, :cond_1f

    monitor-exit v10

    return-void

    .line 587
    :cond_1f
    invoke-static {v11}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerMap(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v12, v0

    .line 588
    .local v12, "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 589
    monitor-exit v10

    return-void

    .line 591
    :cond_2c
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    move-object v13, v0

    .line 592
    .local v13, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {v11}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v14, v0

    .line 594
    .local v14, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v3, v0

    .line 595
    .local v3, "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 596
    .local v4, "uid":I
    if-nez v3, :cond_5f

    .line 597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_75

    .line 599
    .local v5, "ident":J
    :try_start_49
    invoke-direct {v1, v13, v11}, Lcom/android/server/textservices/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_58

    move-object v3, v0

    .line 601
    :try_start_4e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    nop

    .line 603
    if-nez v3, :cond_56

    .line 605
    monitor-exit v10

    return-void

    .line 603
    :cond_56
    move-object v0, v3

    goto :goto_60

    .line 601
    :catchall_58
    move-exception v0

    move-object v7, v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 602
    nop

    .end local p0    # "this":Lcom/android/server/textservices/TextServicesManagerService;
    .end local p1    # "userId":I
    .end local p2    # "sciId":Ljava/lang/String;
    .end local p3    # "locale":Ljava/lang/String;
    .end local p4    # "tsListener":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .end local p5    # "scListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local p6    # "bundle":Landroid/os/Bundle;
    .end local p7    # "supportedAttributes":I
    throw v7

    .line 596
    .end local v5    # "ident":J
    .restart local p0    # "this":Lcom/android/server/textservices/TextServicesManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "sciId":Ljava/lang/String;
    .restart local p3    # "locale":Ljava/lang/String;
    .restart local p4    # "tsListener":Lcom/android/internal/textservice/ITextServicesSessionListener;
    .restart local p5    # "scListener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .restart local p6    # "bundle":Landroid/os/Bundle;
    .restart local p7    # "supportedAttributes":I
    :cond_5f
    move-object v0, v3

    .line 611
    .end local v3    # "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .local v0, "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    :goto_60
    new-instance v15, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    move-object v3, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v15}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 614
    .end local v0    # "bindGroup":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "uid":I
    .end local v11    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .end local v12    # "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v13    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v14    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;>;"
    monitor-exit v10

    .line 615
    return-void

    .line 614
    :catchall_75
    move-exception v0

    monitor-exit v10
    :try_end_77
    .catchall {:try_start_4e .. :try_end_77} :catchall_75

    throw v0

    .line 579
    :cond_78
    :goto_78
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method public isSpellCheckerEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 621
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object v1

    .line 623
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_f

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 625
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 626
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method onStopUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 311
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 314
    .local v1, "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 316
    :cond_f
    invoke-direct {p0, v1}, Lcom/android/server/textservices/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 317
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 318
    .end local v1    # "tsd":Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 322
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
