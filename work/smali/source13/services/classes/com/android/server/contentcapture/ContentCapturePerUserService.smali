.class final Lcom/android/server/contentcapture/ContentCapturePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "ContentCapturePerUserService.java"

# interfaces
.implements Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/contentcapture/ContentCapturePerUserService;",
        "Lcom/android/server/contentcapture/ContentCaptureManagerService;",
        ">;",
        "Lcom/android/server/contentcapture/RemoteContentCaptureService$ContentCaptureServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConditionsByPkg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

.field mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

.field private final mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/contentcapture/ContentCaptureServerSession;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConditionsByPkg(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 89
    const-class v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V
    .registers 7
    .param p1, "master"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "disabled"    # Z
    .param p4, "userId"    # I

    .line 128
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;-><init>(Lcom/android/server/contentcapture/ContentCapturePerUserService;Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 129
    invoke-direct {p0, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/contentcapture/ContentCapturePerUserService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/contentcapture/ContentCapturePerUserService;)Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 84
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method private assertCallerLocked(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 413
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 416
    .local v1, "callingUid":I
    :try_start_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_b2

    .line 419
    .local v2, "packageUid":I
    nop

    .line 420
    if-eq v1, v2, :cond_b1

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 421
    invoke-virtual {v3, v1, p1}, Landroid/app/ActivityManagerInternal;->hasRunningActivity(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 424
    const-class v3, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 425
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 426
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v3

    .line 428
    .local v3, "hotwordDetectionServiceIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    const/4 v4, 0x0

    if-eqz v3, :cond_42

    .line 430
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v5

    if-ne v1, v5, :cond_42

    .line 431
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result v5

    if-ne v2, v5, :cond_42

    const/4 v5, 0x1

    goto :goto_43

    :cond_42
    move v5, v4

    .line 433
    .local v5, "isHotwordDetectionServiceCall":Z
    :goto_43
    if-nez v5, :cond_b1

    .line 434
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "packages":[Ljava/lang/String;
    if-eqz v6, :cond_4e

    aget-object v4, v6, v4

    goto :goto_62

    :cond_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "callingPackage":Ljava/lang/String;
    :goto_62
    sget-object v7, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App (package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") passed package ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") owned by UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 442
    .end local v3    # "hotwordDetectionServiceIdentity":Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    .end local v4    # "callingPackage":Ljava/lang/String;
    .end local v5    # "isHotwordDetectionServiceCall":Z
    .end local v6    # "packages":[Ljava/lang/String;
    :cond_b1
    return-void

    .line 417
    .end local v2    # "packageUid":I
    :catch_b2
    move-exception v2

    .line 418
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not verify UID for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getSession(Landroid/os/IBinder;)Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 484
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 485
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v2, v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 486
    return-object v1

    .line 483
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSessionId(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 584
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 585
    .local v1, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->isActivitySession(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 586
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 583
    .end local v1    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 589
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private resetContentCaptureWhitelistLocked()V
    .registers 3

    .line 597
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_10

    .line 598
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetting content capture whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_10
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->resetWhitelist(I)V

    .line 601
    return-void
.end method

.method private resurrectSessionsLocked()V
    .registers 5

    .line 219
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 220
    .local v0, "numSessions":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_38

    .line 221
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ressurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    if-ge v1, v0, :cond_49

    .line 226
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 227
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->resurrectLocked()V

    .line 225
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 229
    .end local v1    # "i":I
    :cond_49
    return-void
.end method

.method private updateRemoteServiceLocked(Z)V
    .registers 14
    .param p1, "disabled"    # Z

    .line 136
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRemoteService(disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_27
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v0, :cond_46

    .line 138
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3b
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->destroy()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 141
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resetContentCaptureWhitelistLocked()V

    .line 145
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    .line 147
    .local v0, "serviceComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_5d

    .line 148
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateRemoteService(): no service component name"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5c
    return-void

    .line 152
    :cond_5d
    if-nez p1, :cond_ac

    .line 153
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_80

    .line 154
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRemoteService(): creating new remote service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_80
    new-instance v11, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteServiceCallback:Lcom/android/server/contentcapture/ContentCapturePerUserService$ContentCaptureServiceRemoteCallback;

    iget v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 159
    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v9, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget v10, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    const-string v3, "android.service.contentcapture.ContentCaptureService"

    move-object v1, v11

    move-object v4, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/contentcapture/RemoteContentCaptureService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V

    iput-object v11, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 162
    :cond_ac
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_f
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v0, :cond_16

    .line 501
    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->destroy()V

    .line 503
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 504
    return-void
.end method

.method destroySessionsLocked()V
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 509
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 510
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 511
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->destroyLocked(Z)V

    .line 509
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 513
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 514
    return-void
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 547
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service Info: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    if-nez v1, :cond_28

    .line 552
    const-string v1, "N/A"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 554
    :cond_28
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 555
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v1, v0, p2}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 557
    :goto_30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Zombie: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 559
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-eqz v1, :cond_4f

    .line 560
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "remote service:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 564
    :cond_4f
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_61

    .line 565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "no sessions"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_92

    .line 567
    :cond_61
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 568
    .local v1, "sessionsSize":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "number sessions: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 569
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    if-ge v2, v1, :cond_92

    .line 570
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 571
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 572
    .local v3, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v3, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 573
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 569
    .end local v3    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 576
    .end local v1    # "sessionsSize":I
    .end local v2    # "i":I
    :cond_92
    :goto_92
    return-void
.end method

.method public finishSessionLocked(I)V
    .registers 6
    .param p1, "sessionId"    # I

    .line 361
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 362
    return-void

    .line 365
    :cond_7
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 366
    .local v0, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    if-nez v0, :cond_32

    .line 367
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_31

    .line 368
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession(): no session with id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_31
    return-void

    .line 372
    :cond_32
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_52

    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSession(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->removeSelfLocked(Z)V

    .line 374
    return-void
.end method

.method getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method public getServiceSettingsActivityLocked()Landroid/content/ComponentName;
    .registers 4

    .line 398
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 400
    :cond_6
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "activityName":Ljava/lang/String;
    if-nez v0, :cond_d

    return-object v1

    .line 403
    :cond_d
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {v1}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 404
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public isContentCaptureServiceForUserLocked(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 478
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceUidLocked()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method listSessionsLocked(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 518
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 519
    .local v0, "numSessions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 520
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 521
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 523
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 167
    new-instance v0, Landroid/service/contentcapture/ContentCaptureServiceInfo;

    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isTemporaryServiceSetLocked()Z

    move-result v2

    iget v3, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/service/contentcapture/ContentCaptureServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 169
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method onActivityEventLocked(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 534
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_15

    .line 535
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onActivityEvent(): no remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_14
    return-void

    .line 538
    :cond_15
    new-instance v0, Landroid/service/contentcapture/ActivityEvent;

    invoke-direct {v0, p1, p2}, Landroid/service/contentcapture/ActivityEvent;-><init>(Landroid/content/ComponentName;I)V

    .line 540
    .local v0, "event":Landroid/service/contentcapture/ActivityEvent;
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_3b
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v1, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 543
    return-void
.end method

.method onConnected()V
    .registers 4

    .line 204
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    if-eqz v1, :cond_1a

    .line 207
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v1, :cond_14

    .line 208
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot ressurect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v0

    return-void

    .line 212
    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 213
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked()V

    .line 215
    :cond_1a
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onDataSharedLocked(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V
    .registers 4
    .param p1, "request"    # Landroid/view/contentcapture/DataShareRequest;
    .param p2, "dataShareCallback"    # Landroid/service/contentcapture/IDataShareCallback$Stub;

    .line 388
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 389
    return-void

    .line 391
    :cond_7
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    .line 393
    return-void
.end method

.method onPackageUpdatedLocked()V
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 244
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->resurrectSessionsLocked()V

    .line 245
    return-void
.end method

.method onPackageUpdatingLocked()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 233
    .local v0, "numSessions":I
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_2c

    .line 234
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessions while package is updating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_3d

    .line 237
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 238
    .local v2, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->pauseLocked()V

    .line 236
    .end local v2    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 240
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method public onServiceDied(Lcom/android/server/contentcapture/RemoteContentCaptureService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 190
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote service died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    const/4 v1, 0x1

    :try_start_1d
    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mZombie:Z

    .line 193
    const/16 v1, 0x10

    .line 195
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 193
    invoke-static {v1, v2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .registers 2

    .line 84
    check-cast p1, Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onServiceDied(Lcom/android/server/contentcapture/RemoteContentCaptureService;)V

    return-void
.end method

.method public removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/view/contentcapture/DataRemovalRequest;

    .line 378
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 379
    return-void

    .line 381
    :cond_7
    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 383
    return-void
.end method

.method public removeSessionLocked(I)V
    .registers 3
    .param p1, "sessionId"    # I

    .line 473
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 474
    return-void
.end method

.method public sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getSessionId(Landroid/os/IBinder;)I

    move-result v0

    .line 448
    .local v0, "id":I
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 449
    .local v1, "assistData":Landroid/os/Bundle;
    const-string/jumbo v2, "structure"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure;

    .line 450
    .local v2, "assistStructure":Landroid/app/assist/AssistStructure;
    const-string v3, "content"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistContent;

    .line 451
    .local v3, "assistContent":Landroid/app/assist/AssistContent;
    new-instance v4, Landroid/service/contentcapture/SnapshotData;

    invoke-direct {v4, v1, v2, v3}, Landroid/service/contentcapture/SnapshotData;-><init>(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 453
    .local v4, "snapshotData":Landroid/service/contentcapture/SnapshotData;
    const/4 v5, 0x1

    if-eqz v0, :cond_2f

    .line 454
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 455
    .local v6, "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    invoke-virtual {v6, v4}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->sendActivitySnapshotLocked(Landroid/service/contentcapture/SnapshotData;)V

    .line 456
    return v5

    .line 461
    .end local v6    # "session":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    :cond_2f
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    const/4 v7, 0x0

    if-eqz v6, :cond_56

    .line 462
    invoke-virtual {v6, v7, v4}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V

    .line 463
    sget-object v6, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notified activity assist data for activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without a session Id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v5

    .line 468
    :cond_56
    return v7
.end method

.method public startSessionLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V
    .registers 32
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "shareableActivityToken"    # Landroid/os/IBinder;
    .param p3, "activityPresentationInfo"    # Landroid/content/pm/ActivityPresentationInfo;
    .param p4, "sessionId"    # I
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "clientReceiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 252
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    const/4 v0, 0x0

    if-nez v14, :cond_1a

    .line 253
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    const-string v2, "basic activity info is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v1, 0x104

    invoke-static {v11, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 256
    return-void

    .line 258
    :cond_1a
    iget v10, v14, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    .line 259
    .local v10, "taskId":I
    iget v9, v14, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    .line 260
    .local v9, "displayId":I
    iget-object v8, v14, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    .line 261
    .local v8, "componentName":Landroid/content/ComponentName;
    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v2, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v1, v2, v8}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_44

    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget v3, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    .line 263
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v1, v3, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->isWhitelisted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_44

    :cond_42
    move v1, v2

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v1, 0x1

    :goto_45
    move v7, v1

    .line 264
    .local v7, "whiteListed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 265
    .local v6, "serviceComponentName":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isEnabledLocked()Z

    move-result v16

    .line 266
    .local v16, "enabled":Z
    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-eqz v1, :cond_dd

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, p5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " a="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    invoke-static {v8}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " s="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    invoke-static {v6}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " u="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " f="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    if-eqz v16, :cond_bf

    const-string v3, ""

    goto :goto_c1

    :cond_bf
    const-string v3, " (disabled)"

    :goto_c1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "historyItem":Ljava/lang/String;
    iget-object v3, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_e1

    .line 266
    .end local v1    # "historyItem":Ljava/lang/String;
    :cond_dd
    move/from16 v5, p5

    move/from16 v4, p6

    .line 277
    :goto_e1
    const/4 v1, 0x3

    const/16 v3, 0x14

    if-nez v16, :cond_ed

    .line 280
    invoke-static {v11, v3, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 283
    invoke-static {v15, v1, v3, v6, v2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Z)V

    .line 287
    return-void

    .line 289
    :cond_ed
    const-string/jumbo v3, "startSession("

    if-nez v6, :cond_117

    .line 293
    iget-object v0, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_116

    .line 294
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): hold your horses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_116
    return-void

    .line 299
    :cond_117
    if-nez v7, :cond_148

    .line 300
    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v1, :cond_13d

    .line 301
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): package or component not whitelisted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_13d
    const/16 v1, 0x204

    invoke-static {v11, v1, v0}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 307
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {v15, v0, v1, v6, v2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Z)V

    .line 311
    return-void

    .line 314
    :cond_148
    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    .line 315
    .local v3, "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    const-string v1, ", token="

    const-string/jumbo v2, "startSession(id="

    if-eqz v3, :cond_18e

    .line 316
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ignoring because it already exists for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/contentcapture/ContentCaptureServerSession;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v11, v0, v1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 321
    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-static {v15, v1, v0, v6, v4}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Z)V

    .line 325
    return-void

    .line 328
    :cond_18e
    const/4 v4, 0x0

    iget-object v0, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_196

    .line 329
    invoke-direct {v12, v4}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 332
    :cond_196
    iget-object v0, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    if-nez v0, :cond_1ca

    .line 333
    sget-object v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ignoring because service is not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-static {v11, v0, v1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 338
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v15, v1, v0, v6, v2}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;Z)V

    .line 342
    return-void

    .line 346
    :cond_1ca
    invoke-virtual {v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->ensureBoundLocked()V

    .line 348
    new-instance v17, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mLock:Ljava/lang/Object;

    new-instance v4, Landroid/app/assist/ActivityId;

    move-object/from16 v2, p2

    invoke-direct {v4, v10, v2}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    move-object/from16 v0, v17

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    .end local v3    # "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    .local v18, "existingSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    move-object v3, v4

    move-object/from16 v4, p0

    move-object v5, v8

    move-object/from16 v19, v6

    .end local v6    # "serviceComponentName":Landroid/content/ComponentName;
    .local v19, "serviceComponentName":Landroid/content/ComponentName;
    move-object/from16 v6, p7

    move/from16 v20, v7

    .end local v7    # "whiteListed":Z
    .local v20, "whiteListed":Z
    move v7, v10

    move-object/from16 v21, v8

    .end local v8    # "componentName":Landroid/content/ComponentName;
    .local v21, "componentName":Landroid/content/ComponentName;
    move v8, v9

    move/from16 v22, v9

    .end local v9    # "displayId":I
    .local v22, "displayId":I
    move/from16 v9, p4

    move/from16 v23, v10

    .end local v10    # "taskId":I
    .local v23, "taskId":I
    move/from16 v10, p5

    move-object v13, v11

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/contentcapture/ContentCaptureServerSession;-><init>(Ljava/lang/Object;Landroid/os/IBinder;Landroid/app/assist/ActivityId;Lcom/android/server/contentcapture/ContentCapturePerUserService;Landroid/content/ComponentName;Lcom/android/internal/os/IResultReceiver;IIIII)V

    .line 351
    .local v0, "newSession":Lcom/android/server/contentcapture/ContentCaptureServerSession;
    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_229

    .line 352
    sget-object v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSession(): new session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_229
    iget-object v1, v12, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    invoke-virtual {v0, v13}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->notifySessionStartedLocked(Lcom/android/internal/os/IResultReceiver;)V

    .line 357
    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 6
    .param p1, "disabled"    # Z

    .line 175
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 176
    .local v0, "disabledStateChanged":Z
    if-eqz v0, :cond_1f

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 179
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureServerSession;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->setContentCaptureEnabledLocked(Z)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 182
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->updateRemoteServiceLocked(Z)V

    .line 184
    return v0
.end method
