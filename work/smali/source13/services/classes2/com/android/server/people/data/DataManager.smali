.class public Lcom/android/server/people/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/DataManager$Injector;,
        Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;,
        Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;,
        Lcom/android/server/people/data/DataManager$NotificationListener;,
        Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;,
        Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;,
        Lcom/android/server/people/data/DataManager$CallLogContentObserver;,
        Lcom/android/server/people/data/DataManager$ContactsContentObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_CACHED_RECENT_SHORTCUTS:I = 0x1e

.field private static final QUERY_EVENTS_MAX_AGE_MS:J = 0x493e0L

.field private static final RECENT_NOTIFICATIONS_MAX_AGE_MS:J = 0x337f9800L

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final USAGE_STATS_QUERY_INTERVAL_SEC:J = 0x78L


# instance fields
.field private final mBroadcastReceivers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogContentObserver:Landroid/database/ContentObserver;

.field private final mContactsContentObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mConversationsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/people/PeopleService$ConversationsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/people/data/DataManager$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mMmsSmsContentObserver:Landroid/database/ContentObserver;

.field private final mNotificationListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/DataManager$NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageMonitors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

.field private final mUsageStatsQueryFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mUserDataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcleanupCachedShortcuts(Lcom/android/server/people/data/DataManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->forAllUnlockedUsers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveConversations(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/util/Set;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->removeConversations(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDefaultSmsApp(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/server/people/data/DataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$Injector;-><init>()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V

    .line 144
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/people/data/DataManager$Injector;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 146
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

    .line 147
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 149
    invoke-virtual {p2}, Lcom/android/server/people/data/DataManager$Injector;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method private cleanupCachedShortcuts(II)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "targetCachedCount"    # I

    .line 847
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 848
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_7

    .line 849
    return-void

    .line 852
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v1, "cachedConvos":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;>;>;"
    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 861
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p2, :cond_1b

    .line 862
    return-void

    .line 864
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    .line 866
    .local v2, "numToUncache":I
    new-instance v3, Ljava/util/PriorityQueue;

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda2;-><init>()V

    .line 868
    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    .line 871
    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 872
    .local v3, "maxHeap":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 873
    .local v5, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v7}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p1, v7}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 874
    goto :goto_38

    .line 876
    :cond_57
    invoke-virtual {v3, v5}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    if-le v6, v2, :cond_63

    .line 878
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 880
    .end local v5    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;>;"
    :cond_63
    goto :goto_38

    .line 881
    :cond_64
    :goto_64
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_91

    .line 882
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 883
    .local v4, "toUncache":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v5, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v6, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 884
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/people/data/ConversationInfo;

    .line 885
    invoke-virtual {v6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v11, 0x4000

    .line 883
    move v6, p1

    move v10, p1

    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 887
    .end local v4    # "toUncache":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;>;"
    goto :goto_64

    .line 888
    :cond_91
    return-void
.end method

.method private cleanupUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 678
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 680
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_9b

    .line 683
    :cond_15
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 684
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2f

    .line 685
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 687
    :cond_2f
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_44

    .line 688
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 690
    :cond_44
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_57

    .line 691
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 693
    :cond_57
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_9d

    if-ltz v3, :cond_6c

    .line 695
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-virtual {v3}, Lcom/android/server/people/data/DataManager$NotificationListener;->unregisterAsSystemService()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6a} :catch_6b
    .catchall {:try_start_5f .. :try_end_6a} :catchall_9d

    .line 698
    goto :goto_6c

    .line 696
    :catch_6b
    move-exception v3

    .line 700
    :cond_6c
    :goto_6c
    :try_start_6c
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_7f

    .line 701
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 703
    :cond_7f
    if-nez p1, :cond_94

    .line 704
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    if-eqz v3, :cond_8b

    .line 705
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 706
    iput-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 708
    :cond_8b
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_94

    .line 709
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 710
    iput-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 714
    :cond_94
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/people/data/DataMaintenanceService;->cancelJob(Landroid/content/Context;I)V

    .line 715
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    monitor-exit v0

    .line 716
    return-void

    .line 681
    .restart local v1    # "userData":Lcom/android/server/people/data/UserData;
    :cond_9b
    :goto_9b
    monitor-exit v0

    return-void

    .line 715
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_6c .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method private forAllUnlockedUsers(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/UserData;",
            ">;)V"
        }
    .end annotation

    .line 766
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/UserData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 767
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 768
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/UserData;

    .line 769
    .local v2, "userData":Lcom/android/server/people/data/UserData;
    invoke-virtual {v2}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 770
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 766
    .end local v1    # "userId":I
    .end local v2    # "userData":Lcom/android/server/people/data/UserData;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 773
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method private getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .registers 25
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "shortcutId"    # Ljava/lang/String;

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    if-eqz v1, :cond_6b

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->isDemoted()Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_6b

    .line 284
    :cond_14
    if-nez p1, :cond_2c

    .line 285
    const-string v6, "DataManager"

    const-string v7, "Shortcut no longer found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {v6}, Lcom/android/server/people/data/DataManager$Injector;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/people/data/DataManager;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 288
    return-object v5

    .line 290
    :cond_2c
    iget-object v5, v0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v2, v6, v7, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 291
    .local v5, "uid":I
    iget-object v6, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 293
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-interface {v6, v2, v5, v7}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 294
    .local v6, "parentChannel":Landroid/app/NotificationChannel;
    const/4 v7, 0x0

    .line 295
    .local v7, "parentChannelGroup":Landroid/app/NotificationChannelGroup;
    if-eqz v6, :cond_4e

    .line 296
    iget-object v8, v0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 298
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    .line 297
    invoke-interface {v8, v2, v5, v9}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_50

    .line 295
    :cond_4e
    move-object/from16 v17, v7

    .line 300
    .end local v7    # "parentChannelGroup":Landroid/app/NotificationChannelGroup;
    .local v17, "parentChannelGroup":Landroid/app/NotificationChannelGroup;
    :goto_50
    new-instance v18, Landroid/app/people/ConversationChannel;

    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v12

    .line 303
    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v14

    const/4 v15, 0x0

    .line 304
    invoke-direct {v0, v1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v7, v18

    move-object/from16 v8, p1

    move v9, v5

    move-object v10, v6

    move-object/from16 v11, v17

    invoke-direct/range {v7 .. v16}, Landroid/app/people/ConversationChannel;-><init>(Landroid/content/pm/ShortcutInfo;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;JZZLjava/util/List;)V

    .line 300
    return-object v18

    .line 282
    .end local v5    # "uid":I
    .end local v6    # "parentChannel":Landroid/app/NotificationChannel;
    .end local v17    # "parentChannelGroup":Landroid/app/NotificationChannelGroup;
    :cond_6b
    :goto_6b
    return-object v5
.end method

.method private getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 273
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    .line 274
    .local v6, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    move-object v0, p0

    move-object v1, v6

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    return-object v0
.end method

.method private getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 6
    .param p1, "cs"    # Lcom/android/server/people/data/ConversationStore;
    .param p2, "conversationId"    # Ljava/lang/String;

    .line 488
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    .line 490
    .local v0, "ci":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v0, :cond_7

    .line 493
    return-object v0

    .line 491
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Conversation does not exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 473
    .local v0, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v0, :cond_26

    .line 476
    invoke-virtual {v0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    .line 477
    .local v1, "cs":Lcom/android/server/people/data/ConversationStore;
    if-eqz v1, :cond_d

    .line 480
    return-object v1

    .line 478
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No conversations exist for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    .end local v1    # "cs":Lcom/android/server/people/data/ConversationStore;
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No settings exist for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .registers 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)",
            "Lcom/android/server/people/data/PackageData;"
        }
    .end annotation

    .line 799
    .local p2, "conversationConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/ConversationInfo;>;"
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 800
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "shortcutId":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 802
    return-object v2

    .line 804
    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 804
    invoke-virtual {p0, v3, v4}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v3

    .line 806
    .local v3, "packageData":Lcom/android/server/people/data/PackageData;
    if-nez v3, :cond_1f

    .line 807
    return-object v2

    .line 809
    :cond_1f
    nop

    .line 810
    invoke-virtual {v3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v4

    .line 811
    .local v4, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-nez v4, :cond_2b

    .line 812
    return-object v2

    .line 814
    :cond_2b
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 815
    return-object v3
.end method

.method private getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 755
    .local p3, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    const/16 v14, 0xc13

    .line 759
    .local v14, "queryFlags":I
    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v2, v0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 760
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    .line 759
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move v10, v14

    move/from16 v11, p2

    invoke-virtual/range {v1 .. v13}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;
    .registers 5
    .param p1, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/people/data/ConversationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object v0

    .line 460
    .local v0, "statuses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/people/ConversationStatus;>;"
    if-eqz v0, :cond_13

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 462
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/people/ConversationStatus;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 463
    return-object v1

    .line 465
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/people/ConversationStatus;>;"
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private getUnlockedUserData(I)Lcom/android/server/people/data/UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 777
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/UserData;

    .line 778
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, v0

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method private hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 835
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 836
    .local v0, "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    if-eqz v0, :cond_12

    .line 837
    invoke-virtual {v0, p1, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 836
    :goto_13
    return v1
.end method

.method private isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z
    .registers 6
    .param p1, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 820
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 819
    :goto_13
    return v0
.end method

.method private isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z
    .registers 4
    .param p1, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 828
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 829
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-virtual {p1}, Lcom/android/server/people/data/ConversationInfo;->getParentNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 828
    :goto_17
    return v0
.end method

.method static synthetic lambda$cleanupCachedShortcuts$14(Landroid/util/Pair;)J
    .registers 5
    .param p0, "pair"    # Landroid/util/Pair;

    .line 869
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/people/data/ConversationInfo;

    .line 870
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/people/data/ConversationInfo;

    .line 871
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo;->getCreationTimestamp()J

    move-result-wide v2

    .line 869
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$pruneUninstalledPackageData$10(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3
    .param p0, "installApps"    # Ljava/util/Set;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 738
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$pruneUninstalledPackageData$11(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4
    .param p0, "installApps"    # Ljava/util/Set;
    .param p1, "packagesToDelete"    # Ljava/util/List;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 741
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 742
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_11
    return-void
.end method

.method private pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V
    .registers 6
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 736
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 737
    .local v0, "installApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/Set;)V

    .line 738
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v3

    .line 737
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v1, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, v1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 745
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 747
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    .line 748
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_24

    .line 749
    :cond_34
    return-void
.end method

.method private removeConversations(Ljava/lang/String;ILjava/util/Set;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1144
    .local p3, "shortcutIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 1145
    .local v0, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v0, :cond_1a

    .line 1146
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1148
    .local v2, "shortcutId":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/people/data/PackageData;->deleteDataForConversation(Ljava/lang/String;)V

    .line 1149
    .end local v2    # "shortcutId":Ljava/lang/String;
    goto :goto_a

    .line 1152
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1154
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-interface {v2, p1, v1, p3}, Lcom/android/server/notification/NotificationManagerInternal;->onConversationRemoved(Ljava/lang/String;ILjava/util/Set;)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_29} :catch_2a

    .line 1157
    .end local v1    # "uid":I
    goto :goto_43

    .line 1155
    :catch_2a
    move-exception v1

    .line 1156
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found when removing conversation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_43
    return-void
.end method

.method private setupUser(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 603
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    move-object v2, v0

    .line 605
    .local v2, "userData":Lcom/android/server/people/data/UserData;
    if-nez v2, :cond_c

    .line 606
    monitor-exit v1

    return-void

    .line 608
    :cond_c
    invoke-virtual {v2}, Lcom/android/server/people/data/UserData;->loadUserData()V

    .line 610
    invoke-direct {p0, v2}, Lcom/android/server/people/data/DataManager;->updateDefaultDialer(Lcom/android/server/people/data/UserData;)V

    .line 611
    invoke-direct {p0, v2}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    .line 613
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    const/4 v10, 0x0

    invoke-direct {v4, p0, p1, v10}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$UsageStatsQueryRunnable-IA;)V

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x78

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    move-object v3, v0

    .line 616
    .local v3, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 618
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v11, v0

    .line 619
    .local v11, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 623
    new-instance v0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    invoke-direct {v0, p0, p1, v10}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$PerUserBroadcastReceiver-IA;)V

    .line 624
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 626
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 625
    move-object v5, v0

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 633
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :cond_5c
    new-instance v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    .line 634
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v0, p0, v4, v10}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$ContactsContentObserver-IA;)V

    move-object v4, v0

    .line 635
    .local v4, "contactsContentObserver":Landroid/database/ContentObserver;
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 640
    new-instance v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-direct {v0, p0, p1, v10}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$NotificationListener-IA;)V

    move-object v5, v0

    .line 641
    .local v5, "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_e9

    .line 643
    :try_start_82
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 644
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    invoke-virtual {v5, v0, v7, p1}, Lcom/android/server/people/data/DataManager$NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_92} :catch_93
    .catchall {:try_start_82 .. :try_end_92} :catchall_e9

    .line 647
    goto :goto_94

    .line 645
    :catch_93
    move-exception v0

    .line 649
    :goto_94
    :try_start_94
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_af

    .line 650
    new-instance v0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    invoke-direct {v0, p0, v10}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$PerUserPackageMonitor-IA;)V

    .line 651
    .local v0, "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v0, v7, v10, v8, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 652
    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    .end local v0    # "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    :cond_af
    if-nez p1, :cond_e2

    .line 662
    new-instance v0, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v0, p0, v7, v10}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$CallLogContentObserver-IA;)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 663
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 667
    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v0, p0, v6, v10}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$MmsSmsContentObserver-IA;)V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    .line 668
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6, v9, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 673
    :cond_e2
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    .line 674
    .end local v2    # "userData":Lcom/android/server/people/data/UserData;
    .end local v3    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v4    # "contactsContentObserver":Landroid/database/ContentObserver;
    .end local v5    # "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    .end local v11    # "intentFilter":Landroid/content/IntentFilter;
    monitor-exit v1

    .line 675
    return-void

    .line 674
    :catchall_e9
    move-exception v0

    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_94 .. :try_end_eb} :catchall_e9

    throw v0
.end method

.method private updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V
    .registers 10
    .param p1, "cs"    # Lcom/android/server/people/data/ConversationStore;
    .param p2, "modifiedConv"    # Lcom/android/server/people/data/ConversationInfo;
    .param p3, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 1358
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1359
    nop

    .line 1360
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v4

    .line 1361
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1359
    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Landroid/content/pm/ShortcutInfo;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    .line 1362
    .local v0, "channel":Landroid/app/people/ConversationChannel;
    if-eqz v0, :cond_26

    .line 1363
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/people/ConversationChannel;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    .line 1365
    :cond_26
    return-void
.end method

.method private updateDefaultDialer(Lcom/android/server/people/data/UserData;)V
    .registers 5
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 782
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 783
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1a

    .line 784
    new-instance v1, Landroid/os/UserHandle;

    .line 785
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 784
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 785
    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    nop

    .line 786
    .local v1, "defaultDialer":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method private updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V
    .registers 5
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 790
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 791
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    .line 790
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 792
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 793
    .local v1, "defaultSmsApp":Ljava/lang/String;
    :goto_13
    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->setDefaultSmsApp(Ljava/lang/String;)V

    .line 794
    return-void
.end method


# virtual methods
.method public addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/people/PeopleService$ConversationsListener;

    .line 1339
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    monitor-enter v0

    .line 1340
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/PeopleService$ConversationsListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    monitor-exit v0

    .line 1342
    return-void

    .line 1341
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V
    .registers 11
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 893
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 894
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_b

    .line 895
    return-void

    .line 897
    :cond_b
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 898
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    .line 899
    .local v2, "conversationStore":Lcom/android/server/people/data/ConversationStore;
    nop

    .line 900
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 901
    .local v3, "oldConversationInfo":Lcom/android/server/people/data/ConversationInfo;
    nop

    .line 904
    if-eqz v3, :cond_29

    .line 905
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_36

    .line 906
    :cond_29
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setCreationTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object v4

    :goto_36
    nop

    .line 908
    .local v4, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 909
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 910
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 911
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 912
    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 913
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 915
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    if-eqz v6, :cond_a1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_a1

    .line 916
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    aget-object v5, v6, v5

    .line 917
    .local v5, "person":Landroid/app/Person;
    invoke-virtual {v5}, Landroid/app/Person;->isImportant()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 918
    invoke-virtual {v5}, Landroid/app/Person;->isBot()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 919
    invoke-virtual {v5}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 920
    .local v6, "contactUri":Ljava/lang/String;
    if-eqz v6, :cond_a1

    .line 921
    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    iget-object v8, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v7

    .line 922
    .local v7, "helper":Lcom/android/server/people/data/ContactsQueryHelper;
    invoke-virtual {v7, v6}, Lcom/android/server/people/data/ContactsQueryHelper;->query(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 923
    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 924
    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 925
    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 929
    .end local v5    # "person":Landroid/app/Person;
    .end local v6    # "contactUri":Ljava/lang/String;
    .end local v7    # "helper":Lcom/android/server/people/data/ContactsQueryHelper;
    :cond_a1
    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-direct {p0, v2, v5, p1}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Landroid/content/pm/ShortcutInfo;)V

    .line 931
    return-void
.end method

.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "status"    # Landroid/app/people/ConversationStatus;

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 422
    .local v0, "cs":Lcom/android/server/people/data/ConversationStore;
    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 423
    .local v1, "convToModify":Lcom/android/server/people/data/ConversationInfo;
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 424
    .local v2, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->addOrUpdateStatus(Landroid/app/people/ConversationStatus;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 425
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 427
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2c

    .line 428
    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    move v6, p2

    move-object v7, p1

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->scheduleExpiration(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/people/ConversationStatus;)V

    .line 432
    :cond_2c
    return-void
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "statusId"    # Ljava/lang/String;

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 437
    .local v0, "cs":Lcom/android/server/people/data/ConversationStore;
    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 438
    .local v1, "convToModify":Lcom/android/server/people/data/ConversationInfo;
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 439
    .local v2, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->clearStatus(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 440
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 441
    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 445
    .local v0, "cs":Lcom/android/server/people/data/ConversationStore;
    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 446
    .local v1, "convToModify":Lcom/android/server/people/data/ConversationInfo;
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 447
    .local v2, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 448
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 449
    return-void
.end method

.method forPackagesInProfile(ILjava/util/function/Consumer;)V
    .registers 7
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/PackageData;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/PackageData;>;"
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 203
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v3

    .line 204
    .local v3, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v3, :cond_21

    .line 205
    invoke-virtual {v3, p2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 207
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userData":Lcom/android/server/people/data/UserData;
    :cond_21
    goto :goto_a

    .line 208
    :cond_22
    return-void
.end method

.method public getBackupPayload(I)[B
    .registers 4
    .param p1, "userId"    # I

    .line 586
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 587
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_8

    .line 588
    const/4 v1, 0x0

    return-object v1

    .line 590
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->getBackupPayload()[B

    move-result-object v1

    return-object v1
.end method

.method getCallLogContentObserverForTesting()Landroid/database/ContentObserver;
    .registers 2

    .line 940
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method getContactsContentObserverForTesting(I)Landroid/database/ContentObserver;
    .registers 3
    .param p1, "userId"    # I

    .line 935
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 246
    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 247
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_15

    .line 248
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 250
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v1, :cond_15

    .line 251
    invoke-virtual {v1, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    .line 252
    .local v2, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v3

    return-object v3

    .line 255
    .end local v1    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v2    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method getConversationInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/people/data/ConversationInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 259
    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 260
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_11

    .line 261
    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 263
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v1, :cond_11

    .line 264
    invoke-virtual {v1, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    return-object v2

    .line 267
    .end local v1    # "packageData":Lcom/android/server/people/data/PackageData;
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    .line 410
    .local v0, "packageData":Lcom/android/server/people/data/PackageData;
    if-eqz v0, :cond_11

    .line 411
    invoke-virtual {v0, p3}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 412
    .local v1, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v1, :cond_11

    .line 413
    invoke-virtual {v1}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v2

    return-wide v2

    .line 416
    .end local v1    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    :cond_11
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method getMmsSmsContentObserverForTesting()Landroid/database/ContentObserver;
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method getNotificationListenerServiceForTesting(I)Lcom/android/server/people/data/DataManager$NotificationListener;
    .registers 3
    .param p1, "userId"    # I

    .line 950
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    return-object v0
.end method

.method public getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 213
    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 214
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getPackageMonitorForTesting(I)Lcom/android/internal/content/PackageMonitor;
    .registers 3
    .param p1, "userId"    # I

    .line 955
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    return-object v0
.end method

.method public getRecentConversations(I)Ljava/util/List;
    .registers 4
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "conversationChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/people/ConversationChannel;>;"
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 324
    return-object v0
.end method

.method public getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;
    .registers 5
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 221
    nop

    .line 222
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/people/data/DataManager;->getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 225
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    return-object v1

    .line 227
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(Ljava/lang/String;I)Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    .line 454
    .local v0, "cs":Lcom/android/server/people/data/ConversationStore;
    invoke-direct {p0, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v1

    .line 455
    .local v1, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    invoke-direct {p0, v1}, Lcom/android/server/people/data/DataManager;->getStatuses(Lcom/android/server/people/data/ConversationInfo;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method getUserDataForTesting(I)Lcom/android/server/people/data/UserData;
    .registers 3
    .param p1, "userId"    # I

    .line 960
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/UserData;

    return-object v0
.end method

.method public initialize()V
    .registers 6

    .line 155
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 156
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 157
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 158
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    .line 160
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$ShortcutServiceCallback-IA;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 162
    new-instance v0, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    .line 163
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {}, Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 163
    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "shutdownIntentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver-IA;)V

    .line 169
    .local v1, "shutdownBroadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 398
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    .line 399
    .local v0, "channel":Landroid/app/people/ConversationChannel;
    if-eqz v0, :cond_1c

    .line 400
    invoke-virtual {v0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 401
    invoke-virtual {v0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 399
    :goto_1d
    return v1
.end method

.method synthetic lambda$cleanupCachedShortcuts$12$com-android-server-people-data-DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 5
    .param p1, "cachedConvos"    # Ljava/util/List;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;
    .param p3, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 855
    invoke-direct {p0, p3}, Lcom/android/server/people/data/DataManager;->isEligibleForCleanUp(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 856
    nop

    .line 857
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 856
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_12
    return-void
.end method

.method synthetic lambda$cleanupCachedShortcuts$13$com-android-server-people-data-DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4
    .param p1, "cachedConvos"    # Ljava/util/List;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 854
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 860
    return-void
.end method

.method synthetic lambda$getConversationChannel$2$com-android-server-people-data-DataManager(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 287
    invoke-static {p3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/people/data/DataManager;->removeConversations(Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method synthetic lambda$getRecentConversations$3$com-android-server-people-data-DataManager(Lcom/android/server/people/data/PackageData;Ljava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 7
    .param p1, "packageData"    # Lcom/android/server/people/data/PackageData;
    .param p2, "conversationChannels"    # Ljava/util/List;
    .param p3, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 312
    invoke-direct {p0, p3}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 313
    return-void

    .line 315
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "shortcutId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v2

    .line 316
    invoke-direct {p0, v1, v2, v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v1

    .line 318
    .local v1, "channel":Landroid/app/people/ConversationChannel;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_24

    .line 321
    :cond_20
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void

    .line 319
    :cond_24
    :goto_24
    return-void
.end method

.method synthetic lambda$getRecentConversations$4$com-android-server-people-data-DataManager(Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .registers 4
    .param p1, "conversationChannels"    # Ljava/util/List;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 311
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/PackageData;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 323
    return-void
.end method

.method synthetic lambda$notifyConversationsListeners$15$com-android-server-people-data-DataManager(Ljava/util/List;)V
    .registers 5
    .param p1, "changedConversations"    # Ljava/util/List;

    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_23

    .line 1375
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1376
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/PeopleService$ConversationsListener;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 1377
    :try_start_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/PeopleService$ConversationsListener;

    .line 1378
    .local v2, "listener":Lcom/android/server/people/PeopleService$ConversationsListener;
    invoke-interface {v2, p1}, Lcom/android/server/people/PeopleService$ConversationsListener;->onConversationsUpdate(Ljava/util/List;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_23

    .line 1379
    .end local v2    # "listener":Lcom/android/server/people/PeopleService$ConversationsListener;
    goto :goto_f

    .line 1381
    .end local v1    # "copy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/PeopleService$ConversationsListener;>;"
    :cond_1f
    goto :goto_24

    .line 1376
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    .end local p0    # "this":Lcom/android/server/people/data/DataManager;
    .end local p1    # "changedConversations":Ljava/util/List;
    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    .line 1380
    .restart local p0    # "this":Lcom/android/server/people/data/DataManager;
    .restart local p1    # "changedConversations":Ljava/util/List;
    :catch_23
    move-exception v0

    .line 1382
    :goto_24
    return-void
.end method

.method synthetic lambda$onUserStopping$1$com-android-server-people-data-DataManager(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 193
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupUser(I)V

    return-void
.end method

.method synthetic lambda$onUserUnlocked$0$com-android-server-people-data-DataManager(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->setupUser(I)V

    return-void
.end method

.method synthetic lambda$pruneDataForUser$9$com-android-server-people-data-DataManager(Landroid/os/CancellationSignal;ILcom/android/server/people/data/PackageData;)V
    .registers 6
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "userId"    # I
    .param p3, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 566
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 567
    return-void

    .line 569
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->pruneOldEvents()V

    .line 570
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 571
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 573
    :cond_1c
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 574
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 576
    :cond_2a
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->pruneOrphanEvents()V

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneExpiredConversationStatuses(IJ)V

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    .line 579
    const/16 v0, 0x1e

    invoke-direct {p0, p2, v0}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(II)V

    .line 580
    return-void
.end method

.method synthetic lambda$pruneExpiredConversationStatuses$7$com-android-server-people-data-DataManager(JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 14
    .param p1, "currentTimeMs"    # J
    .param p3, "cs"    # Lcom/android/server/people/data/ConversationStore;
    .param p4, "packageData"    # Lcom/android/server/people/data/PackageData;
    .param p5, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 380
    new-instance v0, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v0, p5}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 381
    .local v0, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, "newStatuses":Ljava/util/List;, "Ljava/util/List<Landroid/app/people/ConversationStatus;>;"
    invoke-virtual {p5}, Lcom/android/server/people/data/ConversationInfo;->getStatuses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/people/ConversationStatus;

    .line 383
    .local v3, "status":Landroid/app/people/ConversationStatus;
    invoke-virtual {v3}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_30

    .line 384
    invoke-virtual {v3}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_33

    .line 385
    :cond_30
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v3    # "status":Landroid/app/people/ConversationStatus;
    :cond_33
    goto :goto_12

    .line 388
    :cond_34
    invoke-virtual {v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setStatuses(Ljava/util/List;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 389
    invoke-virtual {v0}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    .line 390
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v4

    .line 389
    invoke-virtual {p0, p3, v2, v3, v4}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 392
    return-void
.end method

.method synthetic lambda$pruneExpiredConversationStatuses$8$com-android-server-people-data-DataManager(JLcom/android/server/people/data/PackageData;)V
    .registers 12
    .param p1, "currentTimeMs"    # J
    .param p3, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 378
    invoke-virtual {p3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    .line 379
    .local v6, "cs":Lcom/android/server/people/data/ConversationStore;
    new-instance v7, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V

    invoke-virtual {p3, v7}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 393
    return-void
.end method

.method synthetic lambda$pruneOldRecentConversations$5$com-android-server-people-data-DataManager(JLjava/lang/String;ILjava/util/List;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 12
    .param p1, "currentTimeMs"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "idsToUncache"    # Ljava/util/List;
    .param p6, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 358
    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "shortcutId":Ljava/lang/String;
    invoke-direct {p0, p6}, Lcom/android/server/people/data/DataManager;->isCachedRecentConversation(Lcom/android/server/people/data/ConversationInfo;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 360
    invoke-virtual {p6}, Lcom/android/server/people/data/ConversationInfo;->getLastEventTimestamp()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0x337f9800

    cmp-long v1, v1, v3

    if-lez v1, :cond_20

    .line 362
    invoke-direct {p0, p3, p4, v0}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 363
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_20
    return-void
.end method

.method synthetic lambda$pruneOldRecentConversations$6$com-android-server-people-data-DataManager(JILcom/android/server/people/data/PackageData;)V
    .registers 22
    .param p1, "currentTimeMs"    # J
    .param p3, "callingUserId"    # I
    .param p4, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 354
    move-object/from16 v7, p0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 355
    .local v15, "packageName":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result v16

    .line 356
    .local v16, "userId":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v6, "idsToUncache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 366
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 367
    iget-object v8, v7, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, v7, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x4000

    move/from16 v9, p3

    move-object v11, v15

    move-object v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 370
    :cond_3a
    return-void
.end method

.method public mimeTypeToShareEventType(Ljava/lang/String;)I
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 722
    const/4 v0, 0x7

    if-nez p1, :cond_4

    .line 723
    return v0

    .line 725
    :cond_4
    const-string/jumbo v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 726
    const/4 v0, 0x4

    return v0

    .line 727
    :cond_f
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 728
    const/4 v0, 0x5

    return v0

    .line 729
    :cond_19
    const-string/jumbo v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 730
    const/4 v0, 0x6

    return v0

    .line 732
    :cond_24
    return v0
.end method

.method notifyConversationsListeners(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;)V"
        }
    .end annotation

    .line 1371
    .local p1, "changedConversations":Ljava/util/List;, "Ljava/util/List<Landroid/app/people/ConversationChannel;>;"
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1383
    return-void
.end method

.method public onUserStopping(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 189
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v1, :cond_10

    .line 190
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserStopped()V

    .line 192
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1c

    .line 193
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void

    .line 192
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onUserUnlocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 176
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-nez v1, :cond_1a

    .line 177
    new-instance v2, Lcom/android/server/people/data/UserData;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v2, p1, v3}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    move-object v1, v2

    .line 178
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserUnlocked()V

    .line 181
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_29

    .line 182
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 183
    return-void

    .line 181
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "signal"    # Landroid/os/CancellationSignal;

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 560
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_19

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_19

    .line 563
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager;->pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V

    .line 565
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 581
    return-void

    .line 561
    :cond_19
    :goto_19
    return-void
.end method

.method public pruneExpiredConversationStatuses(IJ)V
    .registers 5
    .param p1, "callingUserId"    # I
    .param p2, "currentTimeMs"    # J

    .line 377
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/people/data/DataManager;J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 394
    return-void
.end method

.method public pruneOldRecentConversations(IJ)V
    .registers 5
    .param p1, "callingUserId"    # I
    .param p2, "currentTimeMs"    # J

    .line 353
    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 371
    return-void
.end method

.method public queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .registers 7
    .param p1, "callingUserId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .line 539
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .registers 8
    .param p1, "callingUserId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;"
        }
    .end annotation

    .line 553
    .local p6, "packageNameFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p6}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeAllRecentConversations(I)V
    .registers 4
    .param p1, "callingUserId"    # I

    .line 345
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/people/data/DataManager;->pruneOldRecentConversations(IJ)V

    .line 346
    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "callingUserId"    # I

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 334
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    .line 334
    move v2, p4

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 338
    :cond_1a
    return-void
.end method

.method public reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V
    .registers 11
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .line 499
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 500
    .local v0, "appTarget":Landroid/app/prediction/AppTarget;
    if-eqz v0, :cond_87

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    goto/16 :goto_87

    .line 503
    :cond_f
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    .line 504
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-nez v1, :cond_1e

    .line 505
    return-void

    .line 507
    :cond_1e
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v2

    .line 508
    .local v2, "packageData":Lcom/android/server/people/data/PackageData;
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v4

    .line 510
    .local v4, "eventType":I
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "direct_share"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 512
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_42

    .line 513
    return-void

    .line 515
    :cond_42
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "shortcutId":Ljava/lang/String;
    const-string v6, "chooser_target"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 518
    return-void

    .line 520
    :cond_53
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    if-nez v6, :cond_64

    .line 521
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 523
    :cond_64
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    .line 525
    .end local v5    # "shortcutId":Ljava/lang/String;
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_7a

    .line 527
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_6d
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v3

    const/4 v5, 0x4

    .line 528
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 527
    invoke-virtual {v3, v5, v6}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    .line 530
    .restart local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :goto_7a
    new-instance v5, Lcom/android/server/people/data/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v3, v5}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 531
    return-void

    .line 501
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    .end local v2    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    .end local v4    # "eventType":I
    :cond_87
    :goto_87
    return-void
.end method

.method public restore(I[B)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "payload"    # [B

    .line 595
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 596
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_7

    .line 597
    return-void

    .line 599
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/UserData;->restore([B)V

    .line 600
    return-void
.end method

.method updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V
    .registers 8
    .param p1, "cs"    # Lcom/android/server/people/data/ConversationStore;
    .param p2, "modifiedConv"    # Lcom/android/server/people/data/ConversationInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1348
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1349
    nop

    .line 1350
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 1349
    invoke-direct {p0, p3, p4, v0, p2}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    move-result-object v0

    .line 1351
    .local v0, "channel":Landroid/app/people/ConversationChannel;
    if-eqz v0, :cond_1b

    .line 1352
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/people/ConversationChannel;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->notifyConversationsListeners(Ljava/util/List;)V

    .line 1354
    :cond_1b
    return-void
.end method
