.class public Lcom/android/server/people/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field static final MAX_CACHED_RECENT_SHORTCUTS:I = 0x1e


# instance fields
.field public final mBroadcastReceivers:Landroid/util/SparseArray;

.field public mCallLogContentObserver:Landroid/database/ContentObserver;

.field public final mContactsContentObservers:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mConversationsListeners:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/people/data/DataManager$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mMmsSmsContentObserver:Landroid/database/ContentObserver;

.field public final mNotificationListeners:Landroid/util/SparseArray;

.field public mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitors:Landroid/util/SparseArray;

.field public final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

.field public final mUsageStatsQueryFutures:Landroid/util/SparseArray;

.field public final mUserDataArray:Landroid/util/SparseArray;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$1-ISRhLNWfPETJJig6xBTzQCJ7w(Lcom/android/server/people/data/DataManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$onUserUnlocked$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$50U2EH-s8iZu7BM0Qn-b_Ox46bU(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$13(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Rrsn37Uj-5u5bPHXiPJgrt5rkk(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/people/data/DataManager;->lambda$pruneExpiredConversationStatuses$7(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$80pACHGd-Bm_hZXZ_YrwPqmqqB8(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$cleanupCachedShortcuts$12(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BYQDJatsZqbAgogmBPNFOJBOIdM(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/people/data/DataManager;->lambda$pruneOldRecentConversations$5(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVqduJbCMR3-ZFO_TnLyLJGxtVQ(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 740
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    .line 741
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$IBbToOR-yHgR5RCOqgHMvPxxhck(Lcom/android/server/people/data/DataManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$onUserStopping$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ImVSQVX0YEAdeOsUa54_N7KuFdI(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->lambda$notifyConversationsListeners$15(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SNvskFY2Vy5RPvgEjhqtKWOYpeQ(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$pruneExpiredConversationStatuses$8(JLcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VTORBzaZWae_orHMsasEBBxq1Lg(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$getRecentConversations$3(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZRn2OModScldoOi5-yf5r6EJQ_E(Landroid/util/Pair;)J
    .registers 5

    .line 868
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 869
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/people/data/ConversationInfo;

    .line 870
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->getCreationTimestamp()J

    move-result-wide v2

    .line 868
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$cwBk8h5GCzUvdFxql8hfHwtEohg(Ljava/util/Set;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 2

    .line 737
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$f1a9zfzo82BOEtI8ghvlGWtMDcs(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->lambda$getRecentConversations$4(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJG2kF-S1-kguuAxI_f2R6U_sYQ(Lcom/android/server/people/data/DataManager;JILcom/android/server/people/data/PackageData;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->lambda$pruneOldRecentConversations$6(JILcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uiQuM1wyV4SoCLWldrHbtfnW_qE(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$pruneDataForUser$9(Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ullRNU1GaOln7WacmM2ghVTdkao(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->lambda$getConversationChannel$2(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcleanupCachedShortcuts(Lcom/android/server/people/data/DataManager;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->forAllUnlockedUsers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveConversations(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/util/Set;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->removeConversations(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDefaultSmsApp(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 142
    new-instance v0, Lcom/android/server/people/data/DataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$Injector;-><init>()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V
    .registers 6

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    .line 146
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 148
    invoke-virtual {p2}, Lcom/android/server/people/data/DataManager$Injector;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 149
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V
    .registers 3

    .line 1342
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_3
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/people/PeopleService$ConversationsListener;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V
    .registers 7

    .line 892
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 896
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 899
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 904
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_34

    .line 905
    :cond_27
    new-instance v1, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setCreationTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v2

    .line 907
    :goto_34
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 908
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 909
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    const/4 v1, 0x0

    .line 910
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 911
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    const/4 v1, 0x0

    .line 912
    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 914
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v3

    if-eqz v3, :cond_9e

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_9e

    .line 915
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v3

    aget-object v1, v3, v1

    .line 916
    invoke-virtual {v1}, Landroid/app/Person;->isImportant()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 917
    invoke-virtual {v1}, Landroid/app/Person;->isBot()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 918
    invoke-virtual {v1}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9e

    .line 920
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v3

    .line 921
    invoke-virtual {v3, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->query(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 922
    invoke-virtual {v3}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 923
    invoke-virtual {v3}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 924
    invoke-virtual {v3}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 928
    :cond_9e
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 12

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 422
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 423
    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 424
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 426
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2c

    .line 427
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    move-object v4, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->scheduleExpiration(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)V

    :cond_2c
    return-void
.end method

.method public final cleanupCachedShortcuts(II)V
    .registers 11

    .line 846
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_92

    .line 851
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 852
    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 860
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1d

    goto/16 :goto_92

    .line 863
    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    .line 865
    new-instance p2, Ljava/util/PriorityQueue;

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;-><init>()V

    .line 867
    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 870
    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 871
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_3b
    :goto_3b
    if-ge v3, v2, :cond_65

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/util/Pair;

    .line 872
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_3b

    .line 875
    :cond_58
    invoke-virtual {p2, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-le v4, v0, :cond_3b

    .line 877
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_3b

    .line 880
    :cond_65
    :goto_65
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 881
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 882
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 883
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 884
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    move v6, p1

    move v2, p1

    .line 882
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    goto :goto_65

    :cond_92
    :goto_92
    return-void
.end method

.method public final cleanupUser(I)V
    .registers 6

    .line 677
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_9c

    .line 679
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_9c

    .line 682
    :cond_15
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 683
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_32

    .line 684
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_32

    :catchall_30
    move-exception p0

    goto :goto_9e

    .line 686
    :cond_32
    :goto_32
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_47

    .line 687
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 689
    :cond_47
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5a

    .line 690
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 692
    :cond_5a
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_30

    if-ltz v2, :cond_6d

    .line 694
    :try_start_62
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6d} :catch_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_30

    .line 699
    :catch_6d
    :cond_6d
    :try_start_6d
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_80

    .line 700
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_80
    if-nez p1, :cond_95

    .line 703
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    if-eqz v2, :cond_8c

    .line 704
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 705
    iput-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 707
    :cond_8c
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_95

    .line 708
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 709
    iput-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 713
    :cond_95
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/people/data/DataMaintenanceService;->cancelJob(Landroid/content/Context;I)V

    .line 714
    monitor-exit v0

    return-void

    .line 680
    :cond_9c
    :goto_9c
    monitor-exit v0

    return-void

    .line 714
    :goto_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_6d .. :try_end_9f} :catchall_30

    throw p0
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 437
    new-instance v1, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v1, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 438
    invoke-virtual {v1, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 439
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 444
    invoke-virtual {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 445
    new-instance v1, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v1, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/4 p3, 0x0

    .line 446
    invoke-virtual {v1, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 447
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public final forAllUnlockedUsers(Ljava/util/function/Consumer;)V
    .registers 5

    const/4 v0, 0x0

    .line 765
    :goto_1
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 766
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 767
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 768
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 769
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public forPackagesInProfile(ILjava/util/function/Consumer;)V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 202
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 204
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    goto :goto_a

    :cond_22
    return-void
.end method

.method public getBackupPayload(I)[B
    .registers 2

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 589
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/people/data/UserData;->getBackupPayload()[B

    move-result-object p0

    return-object p0
.end method

.method public getCallLogContentObserverForTesting()Landroid/database/ContentObserver;
    .registers 1

    .line 939
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public getContactsContentObserverForTesting(I)Landroid/database/ContentObserver;
    .registers 2

    .line 934
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/ContentObserver;

    return-object p0
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .registers 5

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 247
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 250
    invoke-virtual {v0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    .line 251
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    if-eqz v1, :cond_61

    .line 280
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->isDemoted()Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_61

    :cond_14
    if-nez p1, :cond_2c

    .line 284
    const-string v1, "DataManager"

    const-string v6, "Shortcut no longer found"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v6, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v5

    .line 289
    :cond_2c
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v2, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    .line 290
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 292
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-interface {v6, v2, v11, v7}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v12

    if-eqz v12, :cond_4a

    .line 295
    iget-object v5, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 297
    invoke-virtual {v12}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    .line 296
    invoke-interface {v5, v2, v11, v6}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v5

    :cond_4a
    move-object v13, v5

    .line 299
    new-instance v9, Landroid/app/people/ConversationChannel;

    .line 301
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v14

    .line 302
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v16

    const/16 v17, 0x0

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v18}, Landroid/app/people/ConversationChannel;-><init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V

    return-object v9

    :cond_61
    :goto_61
    return-object v5
.end method

.method public final getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .registers 11

    .line 272
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v2, p4

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0
.end method

.method public final getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 3

    .line 487
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 490
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Conversation does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;
    .registers 4

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 475
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    .line 477
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No conversations exist for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 473
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No settings exist for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .registers 4

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 410
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 412
    invoke-virtual {p0}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide p0

    return-wide p0

    :cond_11
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getMmsSmsContentObserverForTesting()Landroid/database/ContentObserver;
    .registers 1

    .line 944
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public getNotificationListenerServiceForTesting(I)Lcom/android/server/people/data/DataManager$NotificationListener;
    .registers 2

    .line 949
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/DataManager$NotificationListener;

    return-object p0
.end method

.method public getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;
    .registers 3

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .registers 6

    .line 798
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 803
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 803
    invoke-virtual {p0, v2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-nez p0, :cond_1f

    return-object v1

    .line 809
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    if-nez p1, :cond_2a

    return-object v1

    .line 813
    :cond_2a
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPackageMonitorForTesting(I)Lcom/android/internal/content/PackageMonitor;
    .registers 2

    .line 954
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/content/PackageMonitor;

    return-object p0
.end method

.method public getRecentConversations(I)Ljava/util/List;
    .registers 4

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;
    .registers 4

    .line 235
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 4

    .line 221
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 222
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    .line 224
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 17

    .line 758
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 759
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc13

    move-object v5, p1

    move v10, p2

    move-object/from16 v6, p3

    .line 758
    invoke-virtual/range {v0 .. v12}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;
    .registers 3

    .line 458
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 460
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 464
    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 4

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object p1

    .line 453
    invoke-virtual {p0, p1, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUnlockedUserData(I)Lcom/android/server/people/data/UserData;
    .registers 2

    .line 776
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/UserData;

    if-eqz p0, :cond_11

    .line 777
    invoke-virtual {p0}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_11

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserDataForTesting(I)Lcom/android/server/people/data/UserData;
    .registers 2

    .line 959
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/UserData;

    return-object p0
.end method

.method public final hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 834
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/DataManager$NotificationListener;

    if-eqz p0, :cond_12

    .line 836
    invoke-virtual {p0, p1, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public initialize()V
    .registers 6

    .line 154
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 155
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 156
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 157
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    .line 159
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager-IA;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 161
    new-instance v0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    .line 162
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v4, 0x4

    .line 162
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager-IA;)V

    .line 168
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z
    .registers 4

    .line 818
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 819
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 397
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 399
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 400
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z
    .registers 2

    .line 827
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 828
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object p0

    .line 829
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getParentNotificationChannelId()Ljava/lang/String;

    move-result-object p1

    .line 828
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$cleanupCachedShortcuts$12(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 854
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/DataManager;->isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 856
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 855
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public final synthetic lambda$cleanupCachedShortcuts$13(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 853
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$getConversationChannel$2(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 286
    invoke-static {p3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->removeConversations(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method public final synthetic lambda$getRecentConversations$3(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 6

    .line 311
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_23

    .line 314
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p1

    .line 315
    invoke-virtual {p0, v1, p1, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 317
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_23

    .line 320
    :cond_20
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    return-void
.end method

.method public final synthetic lambda$getRecentConversations$4(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4

    .line 310
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$notifyConversationsListeners$15(Ljava/util/List;)V
    .registers 5

    .line 1377
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_21

    .line 1378
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1379
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 1380
    :try_start_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p0, :cond_21

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/people/PeopleService$ConversationsListener;

    .line 1381
    invoke-interface {v2, p1}, Lcom/android/server/people/PeopleService$ConversationsListener;->onConversationsUpdate(Ljava/util/List;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_21

    goto :goto_10

    :catchall_1e
    move-exception p0

    .line 1379
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    return-void
.end method

.method public final synthetic lambda$onUserStopping$1(I)V
    .registers 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupUser(I)V

    return-void
.end method

.method public final synthetic lambda$onUserUnlocked$0(I)V
    .registers 2

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->setupUser(I)V

    return-void
.end method

.method public final synthetic lambda$pruneDataForUser$9(Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V
    .registers 6

    .line 565
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 568
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/people/data/EventStore;->pruneOldEvents()V

    .line 569
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 570
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 572
    :cond_1c
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result p1

    if-nez p1, :cond_2a

    .line 573
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 575
    :cond_2a
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->pruneOrphanEvents()V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneExpiredConversationStatuses(IJ)V

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    const/16 p1, 0x1e

    .line 578
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method public final synthetic lambda$pruneExpiredConversationStatuses$7(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 13

    .line 379
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0, p5}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {p5}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_12
    :goto_12
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationStatus;

    .line 382
    invoke-virtual {v2}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_30

    .line 383
    invoke-virtual {v2}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_12

    .line 384
    :cond_30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 387
    :cond_34
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 388
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p1

    .line 389
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 390
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p4

    .line 388
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$pruneExpiredConversationStatuses$8(JLcom/android/server/people/data/PackageData;)V
    .registers 10

    .line 377
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    .line 378
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {v5, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$pruneOldRecentConversations$5(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 10

    .line 357
    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p0, p6}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 359
    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v1

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x337f9800

    cmp-long p1, p1, v1

    if-lez p1, :cond_1f

    .line 361
    invoke-virtual {p0, p3, p4, v0}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 362
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    return-void
.end method

.method public final synthetic lambda$pruneOldRecentConversations$6(JILcom/android/server/people/data/PackageData;)V
    .registers 12

    .line 353
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v5

    .line 355
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 356
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v6, v4

    move-object v4, v3

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V

    move-object v3, v4

    move-object v4, v6

    invoke-virtual {p4, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 365
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 366
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x4000

    move v1, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_2f
    return-void
.end method

.method public mimeTypeToShareEventType(Ljava/lang/String;)I
    .registers 3

    const/4 p0, 0x7

    if-nez p1, :cond_4

    return p0

    .line 724
    :cond_4
    const-string/jumbo v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p0, 0x4

    return p0

    .line 726
    :cond_f
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p0, 0x5

    return p0

    .line 728
    :cond_19
    const-string/jumbo v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p0, 0x6

    :cond_23
    return p0
.end method

.method public notifyConversationsListeners(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;)V"
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStopping(I)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-eqz v1, :cond_13

    .line 189
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserStopped()V

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1f

    .line 191
    :cond_13
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_11

    .line 192
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 191
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_11

    throw p0
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    if-nez v1, :cond_1c

    .line 176
    new-instance v1, Lcom/android/server/people/data/UserData;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p1, v2}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    .line 177
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_2b

    .line 179
    :cond_1c
    :goto_1c
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserUnlocked()V

    .line 180
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1a

    .line 181
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 180
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1a

    throw p0
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .registers 5

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 559
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_18

    .line 562
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V

    .line 564
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public pruneExpiredConversationStatuses(IJ)V
    .registers 5

    .line 376
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/data/DataManager;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public pruneOldRecentConversations(IJ)V
    .registers 5

    .line 352
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V
    .registers 5

    .line 735
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 736
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;)V

    .line 737
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v2

    .line 736
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 738
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 744
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_33

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    .line 746
    invoke-virtual {p1, v2}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    goto :goto_25

    :cond_33
    return-void
.end method

.method public queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .registers 6

    .line 538
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .registers 7

    .line 552
    invoke-static/range {p1 .. p6}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public removeAllRecentConversations(I)V
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    .line 344
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    return-void
.end method

.method public final removeConversations(Ljava/lang/String;ILjava/util/Set;)V
    .registers 7

    .line 1147
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1149
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1151
    invoke-virtual {v0, v2}, Lcom/android/server/people/data/PackageData;->deleteDataForConversation(Ljava/lang/String;)V

    goto :goto_a

    .line 1155
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    .line 1157
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerInternal;->onConversationRemoved(Ljava/lang/String;ILjava/util/Set;)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p0

    .line 1159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package not found when removing conversation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 333
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    move-object v4, p1

    move v6, p2

    move v2, p4

    .line 333
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_1a
    return-void
.end method

.method public reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V
    .registers 7

    .line 498
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 499
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    goto/16 :goto_86

    .line 502
    :cond_f
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_86

    .line 506
    :cond_1e
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result p2

    .line 509
    const-string v3, "direct_share"

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 511
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-nez p1, :cond_42

    goto :goto_86

    .line 514
    :cond_42
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 516
    const-string v3, "chooser_target"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_86

    .line 519
    :cond_53
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    if-nez v3, :cond_64

    .line 520
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 522
    :cond_64
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    goto :goto_7a

    .line 526
    :cond_6d
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 p1, 0x4

    .line 527
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    .line 529
    :goto_7a
    new-instance p1, Lcom/android/server/people/data/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_86
    :goto_86
    return-void
.end method

.method public restore(I[B)V
    .registers 3

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 598
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/UserData;->restore([B)V

    return-void
.end method

.method public final setupUser(I)V
    .registers 12

    .line 602
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    if-nez v0, :cond_f

    .line 605
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e4

    .line 607
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->loadUserData()V

    .line 609
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->updateDefaultDialer(Lcom/android/server/people/data/UserData;)V

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    .line 612
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager-IA;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x78

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 615
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5b

    .line 622
    new-instance v5, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager-IA;)V

    .line 623
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 625
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 624
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 632
    :cond_5b
    new-instance v2, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    .line 633
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager-IA;)V

    .line 634
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 639
    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager-IA;)V

    .line 640
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_b

    .line 642
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 643
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    invoke-virtual {v2, v3, v4, p1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_8f} :catch_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_b

    .line 648
    :catch_8f
    :try_start_8f
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_aa

    .line 649
    new-instance v2, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    invoke-direct {v2, p0, v0}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager-IA;)V

    .line 650
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 651
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_aa
    if-nez p1, :cond_dd

    .line 661
    new-instance v2, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager-IA;)V

    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 662
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 666
    new-instance v2, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager-IA;)V

    iput-object v2, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    .line 667
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 672
    :cond_dd
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    .line 673
    monitor-exit v1

    return-void

    :goto_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_8f .. :try_end_e5} :catchall_b

    throw p0
.end method

.method public final updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V
    .registers 10

    .line 1361
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1363
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 1364
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v1, p3

    .line 1362
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    if-eqz p0, :cond_25

    const/4 p1, 0x1

    .line 1366
    new-array p1, p1, [Landroid/app/people/ConversationChannel;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    :cond_25
    return-void
.end method

.method public updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V
    .registers 5

    .line 1351
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1353
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object p1

    .line 1352
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    .line 1355
    new-array p2, p2, [Landroid/app/people/ConversationChannel;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    :cond_1a
    return-void
.end method

.method public final updateDefaultDialer(Lcom/android/server/people/data/UserData;)V
    .registers 4

    .line 781
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_1a

    .line 783
    new-instance v0, Landroid/os/UserHandle;

    .line 784
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 783
    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 785
    :goto_1b
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    return-void
.end method

.method public final updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V
    .registers 4

    .line 789
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 790
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 789
    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 791
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 792
    :goto_17
    invoke-virtual {p1, p0}, Lcom/android/server/people/data/UserData;->setDefaultSmsApp(Ljava/lang/String;)V

    return-void
.end method
