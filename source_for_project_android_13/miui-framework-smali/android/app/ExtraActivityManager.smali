.class public Landroid/app/ExtraActivityManager;
.super Ljava/lang/Object;
.source "ExtraActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExtraActivityManager$PriorityComponent;,
        Landroid/app/ExtraActivityManager$PackageNameList;
    }
.end annotation


# static fields
.field public static final blacklist START_INCOMPATIBLE:I = 0x96

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-class v0, Landroid/app/ExtraActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ExtraActivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMediaButtonReceiver(Landroid/content/Context;Ljava/util/List;I)Landroid/app/ExtraActivityManager$PriorityComponent;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "minPriority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/app/ExtraActivityManager$PriorityComponent;"
        }
    .end annotation

    .line 151
    .local p1, "orderPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 152
    return-object v0

    .line 155
    :cond_4
    const/4 v1, 0x0

    .line 157
    .local v1, "receivers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_1a

    move-object v1, v2

    .line 160
    goto :goto_1b

    .line 159
    :catch_1a
    move-exception v2

    .line 162
    :goto_1b
    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7a

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "p":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 165
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 166
    .local v6, "r":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_73

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_73

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 168
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 169
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v3, Landroid/app/ExtraActivityManager$PriorityComponent;

    invoke-direct {v3, v0, v2}, Landroid/app/ExtraActivityManager$PriorityComponent;-><init>(Landroid/content/ComponentName;I)V

    return-object v3

    .line 173
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v6    # "r":Landroid/content/pm/ResolveInfo;
    :cond_73
    goto :goto_40

    .line 175
    :cond_74
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_79

    .line 176
    goto :goto_7a

    .line 179
    .end local v4    # "name":Ljava/lang/String;
    :cond_79
    goto :goto_2c

    .line 182
    .end local v2    # "p":I
    :cond_7a
    :goto_7a
    return-object v0
.end method

.method private static blacklist getPackageNameForTask(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "info"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 37
    .local v1, "baseIntent":Landroid/content/Intent;
    if-eqz v1, :cond_19

    .line 38
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_19

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 41
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_19
    if-nez v0, :cond_25

    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_25

    .line 46
    iget-object v2, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_25
    return-object v0
.end method

.method public static blacklist getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 56
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 58
    .local v2, "token":J
    const/16 v4, 0x14

    const/4 v5, 0x3

    :try_start_10
    invoke-virtual {v1, v4, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_41

    move-object v0, v4

    .line 61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    nop

    .line 64
    if-nez v0, :cond_1d

    .line 65
    const/4 v4, 0x0

    return-object v4

    .line 68
    :cond_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 70
    .local v6, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-static {v6}, Landroid/app/ExtraActivityManager;->getPackageNameForTask(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_3f

    .line 72
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v6    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3f
    goto :goto_2a

    .line 76
    :cond_40
    return-object v4

    .line 61
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_41
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw v4
.end method

.method public static blacklist getPackageNameListOrderByReceivePriority(Landroid/content/Context;)Landroid/app/ExtraActivityManager$PackageNameList;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 105
    .local v1, "playingCount":I
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 106
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 107
    .local v3, "runningProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    nop

    .line 108
    const/4 v4, 0x1

    invoke-static {v3, p0, v4}, Lmiui/util/AudioOutputHelper;->getActiveClientProcessList(Ljava/util/List;Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 110
    .local v4, "actives":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_40

    .line 111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 112
    .local v6, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v7, :cond_3b

    .line 113
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v8, :cond_3b

    aget-object v10, v7, v9

    .line 114
    .local v10, "pkg":Ljava/lang/String;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v10    # "pkg":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 117
    .end local v6    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3b
    goto :goto_1d

    .line 119
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 122
    :cond_40
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 123
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_49

    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_49
    new-instance v6, Landroid/app/ExtraActivityManager$PackageNameList;

    invoke-direct {v6, v0, v1}, Landroid/app/ExtraActivityManager$PackageNameList;-><init>(Ljava/util/List;I)V

    return-object v6
.end method
