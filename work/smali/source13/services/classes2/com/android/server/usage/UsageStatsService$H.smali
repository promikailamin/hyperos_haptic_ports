.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1961
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1962
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1963
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 1967
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_174

    .line 2066
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_173

    .line 2023
    :pswitch_b
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService$H;->removeMessages(I)V

    .line 2037
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2038
    .local v0, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v2

    monitor-enter v2

    .line 2039
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    .line 2040
    .local v3, "numUsers":I
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_8e

    .line 2041
    add-int/lit8 v2, v3, -0x1

    .local v2, "u":I
    :goto_29
    if-ltz v2, :cond_8c

    .line 2042
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2044
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v4

    monitor-enter v4

    .line 2045
    :try_start_35
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    .line 2046
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2047
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->remove(I)V

    .line 2048
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_89

    .line 2052
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "p":I
    :goto_5b
    if-ltz v4, :cond_86

    .line 2053
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2054
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2055
    invoke-virtual {v7, v5, v6}, Lcom/android/server/usage/UsageStatsService;->getEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v7

    .line 2057
    .local v7, "nextEstimatedLaunchTime":J
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v9}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_73
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_83

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 2058
    .local v10, "listener":Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;
    invoke-interface {v10, v5, v6, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;->onEstimatedLaunchTimeChanged(ILjava/lang/String;J)V

    .line 2060
    .end local v10    # "listener":Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;
    goto :goto_73

    .line 2052
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "nextEstimatedLaunchTime":J
    :cond_83
    add-int/lit8 v4, v4, -0x1

    goto :goto_5b

    .line 2041
    .end local v4    # "p":I
    .end local v5    # "userId":I
    :cond_86
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 2048
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v1

    .line 2064
    .end local v0    # "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "u":I
    .end local v3    # "numUsers":I
    :cond_8c
    goto/16 :goto_173

    .line 2040
    .restart local v0    # "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_8e
    move-exception v1

    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v1

    .line 2018
    .end local v0    # "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :pswitch_91
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2019
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mhandleEstimatedLaunchTimesOnUserUnlock(Lcom/android/server/usage/UsageStatsService;I)V

    .line 2021
    .end local v0    # "userId":I
    goto/16 :goto_173

    .line 2013
    :pswitch_9a
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2014
    :try_start_a1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V

    .line 2015
    monitor-exit v0

    .line 2016
    goto/16 :goto_173

    .line 2015
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_a9

    throw v1

    .line 1992
    :pswitch_ac
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V

    .line 1993
    goto/16 :goto_173

    .line 1979
    :pswitch_b9
    :try_start_b9
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c0} :catch_c2

    .line 1986
    goto/16 :goto_173

    .line 1980
    :catch_c2
    move-exception v0

    .line 1981
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 1984
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to unlock stopped or removed user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_173

    .line 1982
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_eb
    throw v0

    .line 1972
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_ec
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 1973
    goto/16 :goto_173

    .line 1995
    :pswitch_f7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1996
    .local v0, "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1998
    .local v2, "procState":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gt v2, v3, :cond_100

    move v1, v4

    .line 1999
    .local v1, "newCounter":I
    :cond_100
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v3

    monitor-enter v3

    .line 2000
    :try_start_107
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 2001
    .local v4, "oldCounter":I
    if-eq v1, v4, :cond_154

    .line 2002
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_11c
    .catchall {:try_start_107 .. :try_end_11c} :catchall_156

    .line 2004
    :try_start_11c
    invoke-static {}, Lcom/android/server/usage/UsageStatsService;->-$$Nest$sfgetKERNEL_COUNTER_FILE()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_13a} :catch_13b
    .catchall {:try_start_11c .. :try_end_13a} :catchall_156

    .line 2007
    goto :goto_154

    .line 2005
    :catch_13b
    move-exception v5

    .line 2006
    .local v5, "e":Ljava/io/IOException;
    :try_start_13c
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update counter set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    .end local v4    # "oldCounter":I
    .end local v5    # "e":Ljava/io/IOException;
    :cond_154
    :goto_154
    monitor-exit v3

    .line 2010
    goto :goto_173

    .line 2009
    :catchall_156
    move-exception v4

    monitor-exit v3
    :try_end_158
    .catchall {:try_start_13c .. :try_end_158} :catchall_156

    throw v4

    .line 1989
    .end local v0    # "uid":I
    .end local v1    # "newCounter":I
    .end local v2    # "procState":I
    :pswitch_159
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->onUserRemoved(I)V

    .line 1990
    goto :goto_173

    .line 1975
    :pswitch_161
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    .line 1976
    goto :goto_173

    .line 1969
    :pswitch_167
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$H;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 1970
    nop

    .line 2069
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_167
        :pswitch_161
        :pswitch_159
        :pswitch_f7
        :pswitch_ec
        :pswitch_b9
        :pswitch_ac
        :pswitch_9a
        :pswitch_91
        :pswitch_b
    .end packed-switch
.end method
