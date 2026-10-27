.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;,
        Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final ASSOCIATIONS_IDS_PER_USER_RANGE:I = 0x186a0

.field private static final ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

.field static final DEBUG:Z = false

.field private static final MAX_CN_LENGTH:I = 0x1f4

.field private static final PAIR_WITHOUT_PROMPT_WINDOW_MS:J = 0x927c0L

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "companion_device_preferences.xml"

.field private static final PREF_KEY_AUTO_REVOKE_GRANTS_DONE:Ljava/lang/String; = "auto_revoke_grants_done"

.field private static final SYS_PROP_DEBUG_REMOVAL_TIME_WINDOW:Ljava/lang/String; = "debug.cdm.cdmservice.removal_time_window"

.field static final TAG:Ljava/lang/String; = "CompanionDeviceManagerService"


# instance fields
.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field private final mApplicationControllerCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

.field private mAssociationRequestsProcessor:Lcom/android/server/companion/AssociationRequestsProcessor;

.field private final mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

.field private final mAssociationStoreChangeListener:Lcom/android/server/companion/AssociationStore$OnChangeListener;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

.field private final mDevicePresenceCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

.field private mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/companion/IOnAssociationsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

.field private final mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private final mPreviouslyUsedIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;


# direct methods
.method public static synthetic $r8$lambda$Elb0tl4qtf2ylfE5p2CqXcj9AxU(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->maybeGrantAutoRevokeExemptions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationRequestsProcessor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/AssociationRequestsProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompanionAppController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionApplicationController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAssociationChangedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILandroid/companion/AssociationInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onAssociationChangedInternal(ILandroid/companion/AssociationInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCompanionApplicationBindingDiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onCompanionApplicationBindingDiedInternal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDeviceAppearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceAppearedInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDeviceDisappearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->onDeviceDisappearedInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageModifiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageModifiedInternal(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRebindCompanionApplicationTimeoutInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->onRebindCompanionApplicationTimeoutInternal(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersistStateForUser(Lcom/android/server/companion/CompanionDeviceManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistStateForUser(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldBindPackage(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 128
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/companion/CompanionDeviceManagerService;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 1011
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStoreChangeListener:Lcom/android/server/companion/AssociationStore$OnChangeListener;

    .line 1019
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    .line 1032
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mApplicationControllerCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 1045
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$4;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 161
    const-class v0, Landroid/os/PowerWhitelistManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerWhitelistManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 162
    nop

    .line 163
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 164
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 165
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 166
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 167
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    .line 169
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    .line 170
    new-instance v0, Lcom/android/server/companion/AssociationStoreImpl;

    invoke-direct {v0}, Lcom/android/server/companion/AssociationStoreImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 171
    return-void
.end method

.method private static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 1083
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static deepUnmodifiableCopy(Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1072
    .local p0, "orig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1074
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1075
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1076
    .local v3, "valueCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v3    # "valueCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_d

    .line 1079
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private exemptFromAutoRevoke(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x61

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 961
    goto :goto_22

    .line 959
    :catch_9
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while granting auto revoke exemption for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method static getFirstAssociationIdForUser(I)I
    .registers 2
    .param p0, "userId"    # I

    .line 1064
    const v0, 0x186a0

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static getLastAssociationIdForUser(I)I
    .registers 3
    .param p0, "userId"    # I

    .line 1068
    add-int/lit8 v0, p0, 0x1

    const v1, 0x186a0

    mul-int/2addr v0, v1

    return v0
.end method

.method private getNewAssociationIdForPackage(ILjava/lang/String;)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v0

    .line 845
    :try_start_3
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 852
    .local v1, "usedIds":Landroid/util/SparseBooleanArray;
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 853
    .local v3, "it":Landroid/companion/AssociationInfo;
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 854
    .end local v3    # "it":Landroid/companion/AssociationInfo;
    goto :goto_12

    .line 857
    :cond_27
    nop

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForPackageLocked(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 860
    .local v2, "previouslyUsedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getFirstAssociationIdForUser(I)I

    move-result v3

    .line 861
    .local v3, "id":I
    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getLastAssociationIdForUser(I)I

    move-result v4

    .line 864
    .local v4, "lastAvailableIdForUser":I
    :goto_34
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_47

    .line 874
    :cond_45
    monitor-exit v0

    return v3

    .line 866
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    .line 868
    if-gt v3, v4, :cond_4c

    goto :goto_34

    .line 869
    :cond_4c
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create a new Association ID for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .end local p1    # "userId":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v5

    .line 875
    .end local v1    # "usedIds":Landroid/util/SparseBooleanArray;
    .end local v2    # "previouslyUsedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "id":I
    .end local v4    # "lastAvailableIdForUser":I
    .restart local p0    # "this":Lcom/android/server/companion/CompanionDeviceManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private getPreviouslyUsedIdsForPackageLocked(ILjava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForUserLocked(I)Ljava/util/Map;

    move-result-object v0

    .line 832
    .local v0, "usedIdsForUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 834
    .local v1, "usedIdsForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v1, :cond_11

    .line 835
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 839
    :cond_11
    return-object v1
.end method

.method private getPreviouslyUsedIdsForUser(I)Ljava/util/Map;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v0

    .line 811
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForUserLocked(I)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 812
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getPreviouslyUsedIdsForUserLocked(I)Ljava/util/Map;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 819
    .local v0, "usedIdsForUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    if-nez v0, :cond_f

    .line 820
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 822
    :cond_f
    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->deepUnmodifiableCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$disassociateInternal$2(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3
    .param p0, "deviceProfile"    # Ljava/lang/String;
    .param p1, "it"    # Landroid/companion/AssociationInfo;

    .line 898
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$markIdAsPreviouslyUsedForPackage$1(Ljava/lang/String;)Ljava/util/Set;
    .registers 2
    .param p0, "it"    # Ljava/lang/String;

    .line 385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$notifyListeners$0(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V
    .registers 5
    .param p0, "userId"    # I
    .param p1, "associations"    # Ljava/util/List;
    .param p2, "listener"    # Landroid/companion/IOnAssociationsChangedListener;
    .param p3, "callbackUserId"    # Ljava/lang/Object;

    .line 366
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p0, :cond_e

    .line 368
    :try_start_9
    invoke-interface {p2, p1}, Landroid/companion/IOnAssociationsChangedListener;->onAssociationsChanged(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 370
    goto :goto_e

    .line 369
    :catch_d
    move-exception v0

    .line 372
    :cond_e
    :goto_e
    return-void
.end method

.method private markIdAsPreviouslyUsedForPackage(IILjava/lang/String;)V
    .registers 8
    .param p1, "associationId"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 379
    .local v1, "usedIdsForUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    if-nez v1, :cond_18

    .line 380
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 381
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    :cond_18
    new-instance v2, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;-><init>()V

    .line 385
    invoke-interface {v1, p3, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 386
    .local v2, "usedIdsForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    nop

    .end local v1    # "usedIdsForUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v2    # "usedIdsForPackage":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private maybeGrantAutoRevokeExemptions()V
    .registers 17

    .line 983
    move-object/from16 v1, p0

    const-string v2, "CompanionDeviceManagerService"

    const-string/jumbo v0, "maybeGrantAutoRevokeExemptions()"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 986
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_21
    if-ge v7, v5, :cond_a4

    aget v8, v4, v7

    .line 987
    .local v8, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    .line 988
    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v10

    const-string v11, "companion_device_preferences.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 990
    .local v9, "pref":Landroid/content/SharedPreferences;
    const-string v10, "auto_revoke_grants_done"

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 991
    goto :goto_93

    .line 995
    :cond_41
    const/4 v11, 0x1

    :try_start_42
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 996
    invoke-virtual {v0, v8}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    .line 997
    .local v12, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_97

    move-object v14, v0

    .line 999
    .local v14, "a":Landroid/companion/AssociationInfo;
    :try_start_5a
    invoke-virtual {v14}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1000
    .local v0, "uid":I
    invoke-virtual {v14}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_69} :catch_6a
    .catchall {:try_start_5a .. :try_end_69} :catchall_97

    .line 1003
    .end local v0    # "uid":I
    goto :goto_85

    .line 1001
    :catch_6a
    move-exception v0

    .line 1002
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown companion package: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_97

    .line 1004
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "a":Landroid/companion/AssociationInfo;
    :goto_85
    const/4 v6, 0x0

    goto :goto_4d

    .line 1006
    .end local v12    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :cond_87
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1007
    nop

    .line 986
    .end local v8    # "userId":I
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :goto_93
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_21

    .line 1006
    .restart local v8    # "userId":I
    .restart local v9    # "pref":Landroid/content/SharedPreferences;
    :catchall_97
    move-exception v0

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1007
    throw v0

    .line 1009
    .end local v8    # "userId":I
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_a4
    return-void
.end method

.method private notifyListeners(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p2, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 373
    return-void
.end method

.method private onAssociationChangedInternal(ILandroid/companion/AssociationInfo;)V
    .registers 8
    .param p1, "changeType"    # I
    .param p2, "association"    # Landroid/companion/AssociationInfo;

    .line 334
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 335
    .local v0, "id":I
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 336
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_12

    .line 339
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->markIdAsPreviouslyUsedForPackage(IILjava/lang/String;)V

    .line 342
    :cond_12
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 343
    invoke-virtual {v3, v1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v3

    .line 345
    .local v3, "updatedAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->postPersistUserState(I)V

    .line 350
    const/4 v4, 0x3

    if-eq p1, v4, :cond_23

    .line 351
    invoke-direct {p0, v1, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->notifyListeners(ILjava/util/List;)V

    .line 353
    :cond_23
    invoke-direct {p0, v1, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/List;)V

    .line 354
    return-void
.end method

.method private onCompanionApplicationBindingDiedInternal(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    .line 303
    .local v1, "ai":Landroid/companion/AssociationInfo;
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    .line 304
    .local v2, "associationId":I
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 305
    invoke-virtual {v3, v2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 306
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v3, v2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceReporterBinderDied(I)V

    .line 308
    .end local v1    # "ai":Landroid/companion/AssociationInfo;
    .end local v2    # "associationId":I
    :cond_2d
    goto :goto_a

    .line 310
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private onDeviceAppearedInternal(I)V
    .registers 7
    .param p1, "associationId"    # I

    .line 256
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 259
    .local v0, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 261
    :cond_d
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 262
    .local v1, "userId":I
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    .line 267
    .local v3, "bindImportant":Z
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/companion/CompanionApplicationController;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 268
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/companion/CompanionApplicationController;->bindCompanionApplication(ILjava/lang/String;Z)V

    .line 272
    :cond_26
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v4, v0}, Lcom/android/server/companion/CompanionApplicationController;->notifyCompanionApplicationDeviceAppeared(Landroid/companion/AssociationInfo;)V

    .line 273
    return-void
.end method

.method private onDeviceDisappearedInternal(I)V
    .registers 6
    .param p1, "associationId"    # I

    .line 278
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 281
    .local v0, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 282
    .local v1, "userId":I
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/companion/CompanionApplicationController;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 286
    return-void

    .line 289
    :cond_17
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 290
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v3, v0}, Lcom/android/server/companion/CompanionApplicationController;->notifyCompanionApplicationDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    .line 294
    :cond_22
    invoke-direct {p0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->shouldBindPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    return-void

    .line 296
    :cond_29
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/companion/CompanionApplicationController;->unbindCompanionApplication(ILjava/lang/String;)V

    .line 297
    return-void
.end method

.method private onPackageModifiedInternal(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 411
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 412
    .local v0, "associationsForPackage":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 413
    .local v2, "association":Landroid/companion/AssociationInfo;
    invoke-direct {p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/AssociationInfo;)V

    .line 414
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    goto :goto_a

    .line 416
    :cond_1a
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/CompanionApplicationController;->onPackagesChanged(I)V

    .line 417
    return-void
.end method

.method private onPackageRemoveOrDataClearedInternal(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 399
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 400
    .local v0, "associationsForPackage":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 401
    .local v2, "association":Landroid/companion/AssociationInfo;
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/companion/AssociationStoreImpl;->removeAssociation(I)V

    .line 402
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    goto :goto_a

    .line 404
    :cond_20
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/CompanionApplicationController;->onPackagesChanged(I)V

    .line 405
    return-void
.end method

.method private onRebindCompanionApplicationTimeoutInternal(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 316
    return-void
.end method

.method private persistStateForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 357
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 358
    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 359
    .local v0, "updatedAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPreviouslyUsedIdsForUser(I)Ljava/util/Map;

    move-result-object v1

    .line 360
    .local v1, "usedIdsForUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/companion/PersistentDataStore;->persistStateForUser(ILjava/util/Collection;Ljava/util/Map;)V

    .line 361
    return-void
.end method

.method private shouldBindPackage(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 324
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "packageAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 326
    .local v2, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_a

    .line 327
    :cond_1d
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v1, 0x1

    return v1

    .line 328
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    :cond_2b
    goto :goto_a

    .line 329
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method private updateAtm(ILjava/util/List;)V
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 965
    .local p2, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 966
    .local v0, "companionAppUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 967
    .local v2, "association":Landroid/companion/AssociationInfo;
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 969
    .local v3, "uid":I
    if-ltz v3, :cond_2a

    .line 970
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 972
    .end local v2    # "association":Landroid/companion/AssociationInfo;
    .end local v3    # "uid":I
    :cond_2a
    goto :goto_9

    .line 973
    :cond_2b
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v1, :cond_32

    .line 974
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 976
    :cond_32
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_3e

    .line 978
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityManagerInternal;->setCompanionAppUids(ILjava/util/Set;)V

    .line 980
    :cond_3e
    return-void
.end method

.method private updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 923
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 926
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->addToWhitelist(Ljava/lang/String;)V

    goto :goto_37

    .line 929
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->removeFromWhitelist(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_1b} :catch_1c

    .line 933
    goto :goto_37

    .line 930
    :catch_1c
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be removed from power save whitelist. It might due to the package is whitelisted by the system."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 937
    .local v0, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_54

    .line 940
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_5b

    .line 944
    :cond_54
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 949
    :goto_5b
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(Ljava/lang/String;I)V

    .line 950
    return-void
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/AssociationInfo;)V
    .registers 5
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 916
    nop

    .line 917
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 919
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 920
    return-void
.end method


# virtual methods
.method createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/companion/AssociationInfo;
    .registers 25
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "macAddress"    # Landroid/net/MacAddress;
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "deviceProfile"    # Ljava/lang/String;
    .param p6, "selfManaged"    # Z

    .line 788
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getNewAssociationIdForPackage(ILjava/lang/String;)I

    move-result v14

    .line 789
    .local v14, "id":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 791
    .local v15, "timestamp":J
    new-instance v17, Landroid/companion/AssociationInfo;

    const/4 v9, 0x0

    const-wide v12, 0x7fffffffffffffffL

    move-object/from16 v1, v17

    move v2, v14

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide v10, v15

    invoke-direct/range {v1 .. v13}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V

    .line 794
    .local v1, "association":Landroid/companion/AssociationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New CDM association created="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompanionDeviceManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v2, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/companion/AssociationStoreImpl;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 799
    if-eqz p5, :cond_4b

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/companion/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;)V

    .line 803
    :cond_4b
    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Landroid/companion/AssociationInfo;)V

    .line 804
    invoke-static/range {p5 .. p5}, Lcom/android/server/companion/MetricUtils;->logCreateAssociation(Ljava/lang/String;)V

    .line 805
    return-object v1
.end method

.method disassociateInternal(I)V
    .registers 10
    .param p1, "associationId"    # I

    .line 880
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 881
    .local v0, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 882
    .local v1, "userId":I
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, "deviceProfile":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v4

    .line 888
    .local v4, "wasPresent":Z
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v5, p1}, Lcom/android/server/companion/AssociationStoreImpl;->removeAssociation(I)V

    .line 889
    invoke-static {v3}, Lcom/android/server/companion/MetricUtils;->logRemoveAssociation(Ljava/lang/String;)V

    .line 891
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    .line 892
    invoke-virtual {v5, v1, v2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 896
    .local v5, "otherAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    if-eqz v3, :cond_3b

    .line 897
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v6, v3}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v6

    .line 899
    .local v6, "shouldKeepTheRole":Z
    if-nez v6, :cond_3b

    .line 900
    new-instance v7, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 905
    .end local v6    # "shouldKeepTheRole":Z
    :cond_3b
    if-eqz v4, :cond_56

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v6

    if-nez v6, :cond_44

    goto :goto_56

    .line 908
    :cond_44
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v6

    .line 911
    .local v6, "shouldStayBound":Z
    if-eqz v6, :cond_50

    return-void

    .line 912
    :cond_50
    iget-object v7, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/companion/CompanionApplicationController;->unbindCompanionApplication(ILjava/lang/String;)V

    .line 913
    return-void

    .line 905
    .end local v6    # "shouldStayBound":Z
    :cond_56
    :goto_56
    return-void
.end method

.method getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;
    .registers 4
    .param p1, "associationId"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 250
    .local v0, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/companion/PermissionsUtils;->sanitizeWithCallerChecks(Landroid/content/Context;Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo;

    move-result-object v1

    return-object v1
.end method

.method getAssociationWithCallerChecks(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "macAddress"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 244
    .local v0, "association":Landroid/companion/AssociationInfo;
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/companion/PermissionsUtils;->sanitizeWithCallerChecks(Landroid/content/Context;Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$disassociateInternal$3$com-android-server-companion-CompanionDeviceManagerService(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "association"    # Landroid/companion/AssociationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/companion/RolesUtils;->removeRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method synthetic lambda$disassociateInternal$4$com-android-server-companion-CompanionDeviceManagerService(Landroid/companion/AssociationInfo;)Z
    .registers 4
    .param p1, "it"    # Landroid/companion/AssociationInfo;

    .line 909
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 910
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 909
    :goto_15
    return v0
.end method

.method synthetic lambda$updateSpecialAccessPermissionForAssociatedPackage$5$com-android-server-companion-CompanionDeviceManagerService(Landroid/content/pm/PackageInfo;)V
    .registers 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 919
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method legacyCreateAssociation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "deviceProfile"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v7

    .line 782
    .local v7, "macAddress":Landroid/net/MacAddress;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, v7

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/companion/CompanionDeviceManagerService;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/companion/AssociationInfo;

    .line 783
    return-void
.end method

.method loadAssociationsFromDisk()V
    .registers 6

    .line 199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 200
    .local v0, "allAssociations":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/AssociationInfo;>;"
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    monitor-enter v1

    .line 203
    :try_start_8
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    .line 204
    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPreviouslyUsedIds:Landroid/util/SparseArray;

    .line 203
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/companion/PersistentDataStore;->readStateForUsers(Ljava/util/List;Ljava/util/Set;Landroid/util/SparseArray;)V

    .line 205
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1c

    .line 207
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/AssociationStoreImpl;->setAssociations(Ljava/util/Collection;)V

    .line 208
    return-void

    .line 205
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 212
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_1e

    .line 217
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 218
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->init(Landroid/content/Context;)V

    goto :goto_29

    .line 219
    :cond_1e
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_29

    .line 221
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/companion/InactiveAssociationsRemovalService;->schedule(Landroid/content/Context;)V

    .line 223
    :cond_29
    :goto_29
    return-void
.end method

.method public onStart()V
    .registers 6

    .line 175
    new-instance v0, Lcom/android/server/companion/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/companion/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPersistentStore:Lcom/android/server/companion/PersistentDataStore;

    .line 177
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->loadAssociationsFromDisk()V

    .line 178
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStoreChangeListener:Lcom/android/server/companion/AssociationStore$OnChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/AssociationStoreImpl;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    .line 180
    new-instance v0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 183
    new-instance v0, Lcom/android/server/companion/AssociationRequestsProcessor;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/AssociationRequestsProcessor;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/AssociationRequestsProcessor;

    .line 186
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/companion/CompanionApplicationController;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mApplicationControllerCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    invoke-direct {v1, v0, v2}, Lcom/android/server/companion/CompanionApplicationController;-><init>(Landroid/content/Context;Lcom/android/server/companion/CompanionApplicationController$Callback;)V

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppController:Lcom/android/server/companion/CompanionApplicationController;

    .line 191
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 192
    .local v1, "impl":Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    const-string v2, "companiondevice"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 195
    const-class v2, Lcom/android/server/companion/CompanionDeviceManagerServiceInternal;

    new-instance v3, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$LocalService-IA;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 9
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 227
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 228
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v1

    .line 230
    .local v1, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    .line 232
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAtm(ILjava/util/List;)V

    .line 234
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;-><init>()V

    .line 235
    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    .line 236
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 234
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 237
    return-void
.end method

.method persistState()V
    .registers 4

    .line 1098
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserPersistenceHandler:Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService$PersistUserStateHandler;->clearMessages()V

    .line 1099
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1100
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistStateForUser(I)V

    .line 1101
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    goto :goto_f

    .line 1102
    :cond_21
    return-void
.end method

.method removeInactiveSelfManagedAssociations()V
    .registers 10

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 422
    .local v0, "currentTime":J
    const-string v2, "debug.cdm.cdmservice.removal_time_window"

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 423
    .local v2, "removalWindow":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_14

    .line 425
    sget-wide v2, Lcom/android/server/companion/CompanionDeviceManagerService;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    .line 428
    :cond_14
    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/AssociationStoreImpl;

    invoke-virtual {v4}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    .line 429
    .local v5, "ai":Landroid/companion/AssociationInfo;
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v6

    if-nez v6, :cond_31

    goto :goto_1e

    .line 430
    :cond_31
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_41

    const/4 v6, 0x1

    goto :goto_42

    :cond_41
    const/4 v6, 0x0

    .line 431
    .local v6, "isInactive":Z
    :goto_42
    if-eqz v6, :cond_67

    .line 432
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing inactive self-managed association: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CompanionDeviceManagerService"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    .line 435
    .end local v5    # "ai":Landroid/companion/AssociationInfo;
    .end local v6    # "isInactive":Z
    :cond_67
    goto :goto_1e

    .line 436
    :cond_68
    return-void
.end method
