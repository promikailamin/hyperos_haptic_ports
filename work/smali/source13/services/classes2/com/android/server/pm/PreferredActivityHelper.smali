.class final Lcom/android/server/pm/PreferredActivityHelper;
.super Ljava/lang/Object;
.source "PreferredActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;
    }
.end annotation


# static fields
.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "da"

.field private static final TAG_PREFERRED_BACKUP:Ljava/lang/String; = "pa"


# instance fields
.field private final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 79
    return-void
.end method

.method private findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;
    .registers 24
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p7, "always"    # Z
    .param p8, "removeMatches"    # Z
    .param p9, "debug"    # Z
    .param p10, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 85
    .local p6, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    nop

    .line 87
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    move v12, v0

    .line 85
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private getHomeFilter()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 3

    .line 378
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "filter":Lcom/android/server/pm/WatchedIntentFilter;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 380
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 381
    return-object v0
.end method

.method private getPreferredActivitiesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 641
    .local p2, "outFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/WatchedIntentFilter;>;"
    .local p3, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 642
    .local v0, "callingUid":I
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 643
    const/4 v1, 0x0

    return v1

    .line 645
    :cond_c
    const/4 v1, 0x0

    .line 646
    .local v1, "num":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 648
    .local v2, "userId":I
    invoke-interface {p1, v2}, Lcom/android/server/pm/Computer;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v3

    .line 649
    .local v3, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v3, :cond_64

    .line 650
    invoke-virtual {v3}, Lcom/android/server/pm/PreferredIntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 651
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 652
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 653
    .local v5, "pa":Lcom/android/server/pm/PreferredActivity;
    if-nez v5, :cond_2a

    goto :goto_1b

    .line 654
    :cond_2a
    iget-object v6, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v6, v6, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "prefPackageName":Ljava/lang/String;
    if-eqz p4, :cond_40

    .line 656
    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    iget-object v7, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v7, v7, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v7, :cond_63

    .line 657
    :cond_40
    nop

    .line 658
    invoke-interface {p1, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 657
    invoke-interface {p1, v7, v0, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 660
    goto :goto_1b

    .line 662
    :cond_4c
    if-eqz p2, :cond_5a

    .line 663
    new-instance v7, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_5a
    if-eqz p3, :cond_63

    .line 666
    iget-object v7, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v6    # "prefPackageName":Ljava/lang/String;
    :cond_63
    goto :goto_1b

    .line 672
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_64
    return v1
.end method

.method private isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z
    .registers 3
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;

    .line 433
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 434
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v0}, Lcom/android/server/pm/WatchedIntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 433
    :goto_1b
    return v0
.end method

.method private resetNetworkPolicies(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 620
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->resetUserState(I)V

    .line 621
    return-void
.end method

.method private restoreFromXml(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    .registers 9
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .param p3, "expectedStartTag"    # Ljava/lang/String;
    .param p4, "functor"    # Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 445
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    goto :goto_0

    .line 448
    :cond_c
    const-string v0, "PackageManager"

    if-eq v1, v2, :cond_1a

    .line 450
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v2, :cond_19

    .line 451
    const-string v2, "Didn\'t find start tag during restore"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_19
    return-void

    .line 456
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 457
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v2, :cond_42

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found unexpected tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_42
    return-void

    .line 464
    :cond_43
    :goto_43
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4c

    goto :goto_43

    .line 465
    :cond_4c
    invoke-interface {p4, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;->apply(Landroid/util/TypedXmlPullParser;I)V

    .line 466
    return-void
.end method


# virtual methods
.method public addPersistentPreferredActivity(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p2, "activity"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 390
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_89

    .line 394
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_16

    .line 395
    const-string v1, "PackageManager"

    const-string v2, "Cannot set a preferred activity with no filter actions"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void

    .line 398
    :cond_16
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_4f

    .line 399
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding persistent preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 403
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 404
    :try_start_54
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 405
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/PersistentPreferredActivity;

    const/4 v5, 0x1

    invoke-direct {v4, p1, p2, v5}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;Z)V

    .line 404
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 407
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 408
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_54 .. :try_end_71} :catchall_86

    .line 409
    invoke-direct {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 410
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 412
    :cond_80
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 413
    return-void

    .line 408
    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v2

    .line 391
    :cond_89
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "addPersistentPreferredActivity can only be run by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V
    .registers 27
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p3, "match"    # I
    .param p4, "set"    # [Landroid/content/ComponentName;
    .param p5, "activity"    # Landroid/content/ComponentName;
    .param p6, "always"    # Z
    .param p7, "userId"    # I
    .param p8, "opname"    # Ljava/lang/String;
    .param p9, "removeExisting"    # Z

    .line 185
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 186
    .local v10, "callingUid":I
    const-string v7, "add preferred activity"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v4, p7

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 188
    iget-object v0, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_50

    .line 191
    move-object/from16 v11, p1

    invoke-interface {v11, v10}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_45

    .line 193
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring addPreferredActivity() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 197
    :cond_45
    iget-object v0, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 188
    :cond_50
    move-object/from16 v11, p1

    .line 200
    :goto_52
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_60

    .line 201
    const-string v0, "PackageManager"

    const-string v2, "Cannot set a preferred activity with no filter actions"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 204
    :cond_60
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_a4

    .line 205
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p8

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v2, 0x4

    const-string v3, "PackageManager"

    invoke-direct {v0, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v8, v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_a6

    .line 204
    :cond_a4
    move-object/from16 v12, p8

    .line 209
    :goto_a6
    iget-object v0, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v13

    .line 210
    :try_start_ab
    iget-object v0, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    .line 211
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PreferredIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_b7
    .catchall {:try_start_ab .. :try_end_b7} :catchall_fe

    move-object v14, v2

    .line 212
    .local v14, "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz p9, :cond_c4

    if-eqz v14, :cond_c4

    .line 213
    :try_start_bc
    invoke-static {v0, v8, v14}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_c4

    .line 218
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v14    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :catchall_c0
    move-exception v0

    move/from16 v16, v10

    goto :goto_101

    .line 215
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .restart local v14    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :cond_c4
    :goto_c4
    :try_start_c4
    iget-object v2, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    new-instance v7, Lcom/android/server/pm/PreferredActivity;
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_fe

    move-object v2, v7

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v16, v10

    move-object v10, v7

    .end local v10    # "callingUid":I
    .local v16, "callingUid":I
    move/from16 v7, p6

    :try_start_da
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    invoke-virtual {v0, v15, v10}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 217
    iget-object v2, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 218
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v14    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    monitor-exit v13
    :try_end_e6
    .catchall {:try_start_da .. :try_end_e6} :catchall_103

    .line 220
    invoke-direct {v1, v8}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    move-result v0

    if-eqz v0, :cond_f8

    iget-object v0, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 221
    :cond_f8
    iget-object v0, v1, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 223
    :cond_fd
    return-void

    .line 218
    .end local v16    # "callingUid":I
    .restart local v10    # "callingUid":I
    :catchall_fe
    move-exception v0

    move/from16 v16, v10

    .end local v10    # "callingUid":I
    .restart local v16    # "callingUid":I
    :goto_101
    :try_start_101
    monitor-exit v13
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_103

    throw v0

    :catchall_103
    move-exception v0

    goto :goto_101
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 417
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_31

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2

    .line 423
    :try_start_e
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/Settings;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z

    move-result v3

    move v1, v3

    .line 424
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_2e

    .line 425
    if-eqz v1, :cond_2d

    .line 426
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 427
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 428
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 430
    :cond_2d
    return-void

    .line 424
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v3

    .line 418
    .end local v1    # "changed":Z
    :cond_31
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "clearPackagePersistentPreferredActivities can only be run by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearPackagePreferredActivities(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 311
    .local v0, "callingUid":I
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 312
    return-void

    .line 314
    :cond_b
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 315
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_17

    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/Computer;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 316
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4c

    .line 319
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v2

    const/16 v4, 0x8

    if-ge v2, v4, :cond_44

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring clearPackagePreferredActivities() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 325
    :cond_44
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_4c
    if-eqz v1, :cond_59

    .line 330
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 329
    invoke-interface {p1, v1, v0, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 331
    return-void

    .line 333
    :cond_59
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 334
    .local v2, "callingUserId":I
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(Ljava/lang/String;I)V

    .line 335
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 120
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 121
    .local v0, "changedUsers":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 122
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 123
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_2a

    .line 124
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 125
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 127
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 129
    :cond_29
    return-void

    .line 123
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public findPersistentPreferredActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 20
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 677
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 681
    iget-object v1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v10, p3

    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 682
    const/4 v1, 0x0

    return-object v1

    .line 684
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 685
    .local v1, "callingUid":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v11

    .line 686
    .end local p2    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    iget-object v2, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    .line 687
    .local v12, "resolvedType":Ljava/lang/String;
    const-wide/16 v8, 0x0

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    .line 689
    move-object/from16 v2, p1

    move-object v3, v11

    move/from16 v4, p3

    move-object v5, v12

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v14

    .line 687
    move-wide v3, v8

    move/from16 v5, p3

    move v6, v1

    move v7, v13

    move v8, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 691
    .local v13, "flags":J
    move-object v3, v11

    move-object v4, v12

    move-wide v5, v13

    move/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v15

    .line 693
    .local v15, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    move-object v7, v15

    move/from16 v9, p3

    invoke-interface/range {v2 .. v9}, Lcom/android/server/pm/Computer;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    return-object v2

    .line 678
    .end local v1    # "callingUid":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "resolvedType":Ljava/lang/String;
    .end local v13    # "flags":J
    .end local v15    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_5b
    move/from16 v10, p3

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "findPersistentPreferredActivity can only be run by the system"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;
    .registers 15
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p7, "always"    # Z
    .param p8, "removeMatches"    # Z
    .param p9, "debug"    # Z
    .param p10, "userId"    # I
    .param p11, "queryMayBeFiltered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 96
    .local p6, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_35

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is holding mLock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_41
    nop

    .line 103
    invoke-interface/range {p1 .. p11}, Lcom/android/server/pm/Computer;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    .line 106
    .local v0, "body":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    if-eqz v2, :cond_58

    .line 107
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_53

    .line 108
    const-string v2, "Preferred activity bookkeeping changed; writing restrictions"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_53
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p10}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 112
    :cond_58
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v2, :cond_5e

    if-eqz p9, :cond_67

    :cond_5e
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v2, :cond_67

    .line 113
    const-string v2, "No preferred activity to return"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_67
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v1
.end method

.method public getDefaultAppsBackup(I)[B
    .registers 7
    .param p1, "userId"    # I

    .line 530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_56

    .line 534
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 536
    .local v0, "dataStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 537
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 538
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 539
    const-string v3, "da"

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2d} :catch_49

    .line 542
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v2, p1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 543
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_46

    .line 545
    :try_start_35
    const-string v3, "da"

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 547
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_49

    .line 553
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    nop

    .line 555
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 543
    .restart local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    :catchall_46
    move-exception v4

    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    .end local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .end local p1    # "userId":I
    :try_start_48
    throw v4
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_49} :catch_49

    .line 548
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .restart local p1    # "userId":I
    :catch_49
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v3, :cond_55

    .line 550
    const-string v3, "PackageManager"

    const-string v4, "Unable to write default apps for backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    :cond_55
    return-object v1

    .line 531
    .end local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call getDefaultAppsBackup()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 21
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 729
    move/from16 v0, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v13, p1

    invoke-interface {v13, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 730
    const/4 v1, 0x0

    return-object v1

    .line 732
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 733
    .local v1, "userId":I
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Querying last chosen activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, p2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_33
    move-object/from16 v14, p2

    .line 734
    :goto_35
    int-to-long v5, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v15

    .line 736
    .local v15, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    int-to-long v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v8, v15

    move v12, v1

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    return-object v2
.end method

.method public getPreferredActivities(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .registers 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 625
    .local p2, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p3, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    nop

    .line 626
    invoke-static {p2}, Lcom/android/server/pm/WatchedIntentFilter;->toWatchedIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 627
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/WatchedIntentFilter;>;"
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/pm/PreferredActivityHelper;->getPreferredActivitiesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 628
    .local v1, "result":I
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 629
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 630
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v3}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 632
    .end local v2    # "i":I
    :cond_23
    return v1
.end method

.method public getPreferredActivityBackup(I)[B
    .registers 8
    .param p1, "userId"    # I

    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_58

    .line 478
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 480
    .local v0, "dataStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 481
    .local v2, "serializer":Landroid/util/TypedXmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 482
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 483
    const-string/jumbo v4, "pa"

    invoke-interface {v2, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_4b

    .line 486
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v2, p1, v3}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Landroid/util/TypedXmlSerializer;IZ)V

    .line 487
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_48

    .line 489
    :try_start_36
    const-string/jumbo v3, "pa"

    invoke-interface {v2, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 491
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->flush()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_4b

    .line 497
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    nop

    .line 499
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 487
    .restart local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    :catchall_48
    move-exception v3

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .end local p1    # "userId":I
    :try_start_4a
    throw v3
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_4b

    .line 492
    .end local v2    # "serializer":Landroid/util/TypedXmlSerializer;
    .restart local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .restart local p1    # "userId":I
    :catch_4b
    move-exception v2

    .line 493
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v3, :cond_57

    .line 494
    const-string v3, "PackageManager"

    const-string v4, "Unable to write preferred activities for backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    :cond_57
    return-object v1

    .line 475
    .end local v0    # "dataStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_58
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call getPreferredActivityBackup()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$restoreDefaultApps$2$com-android-server-pm-PreferredActivityHelper(Landroid/util/TypedXmlPullParser;I)V
    .registers 6
    .param p1, "parser1"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 570
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 571
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "defaultBrowser":Ljava/lang/String;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    .line 574
    if-eqz v1, :cond_1d

    .line 575
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->setDefaultBrowser(Ljava/lang/String;ZI)V

    .line 577
    :cond_1d
    return-void

    .line 573
    .end local v1    # "defaultBrowser":Ljava/lang/String;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method synthetic lambda$restorePreferredActivities$1$com-android-server-pm-PreferredActivityHelper(Landroid/util/TypedXmlPullParser;I)V
    .registers 5
    .param p1, "readParser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "readUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 513
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Landroid/util/TypedXmlPullParser;I)V

    .line 514
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_17

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 516
    return-void

    .line 514
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method synthetic lambda$updateDefaultHomeNotLocked$0$com-android-server-pm-PreferredActivityHelper(ILjava/lang/Boolean;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "successful"    # Ljava/lang/Boolean;

    .line 172
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 175
    :cond_b
    return-void
.end method

.method public replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 23
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p3, "match"    # I
    .param p4, "set"    # [Landroid/content/ComponentName;
    .param p5, "activity"    # Landroid/content/ComponentName;
    .param p6, "userId"    # I

    .line 230
    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move/from16 v13, p6

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countActions()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_22e

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataAuthorities()I

    move-result v0

    if-nez v0, :cond_223

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataPaths()I

    move-result v0

    if-nez v0, :cond_220

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataSchemes()I

    move-result v0

    if-gt v0, v7, :cond_21d

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/WatchedIntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_21a

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 244
    .local v14, "callingUid":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "replace preferred activity"

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 246
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_82

    .line 249
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 251
    :try_start_47
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_73

    .line 253
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring replacePreferredActivity() from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v1

    return-void

    .line 257
    :cond_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_47 .. :try_end_74} :catchall_7f

    .line 258
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 257
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0

    .line 262
    :cond_82
    :goto_82
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 263
    :try_start_87
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_213

    .line 264
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v0, :cond_1f3

    .line 266
    :try_start_91
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PreferredIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 267
    .local v2, "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v2, :cond_1e5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_1e5

    .line 268
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    .line 269
    .local v3, "cur":Lcom/android/server/pm/PreferredActivity;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_1ef

    const/high16 v5, 0xfff0000

    const/4 v6, 0x4

    if-eqz v4, :cond_177

    .line 270
    :try_start_ab
    const-string v4, "PackageManager"

    const-string v7, "Checking replace of preferred:"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v4, Landroid/util/LogPrinter;

    const-string v7, "PackageManager"

    invoke-direct {v4, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {v12, v4, v7}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 272
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v4, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v4, :cond_cd

    .line 273
    const-string v4, "PackageManager"

    const-string v7, "  -- CUR; not mAlways!"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_177

    .line 275
    :cond_cd
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mMatch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v8, v8, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mSet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 277
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 276
    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mComponent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- NEW: mMatch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int v8, p3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mSet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  -- CUR: mComponent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catchall {:try_start_ab .. :try_end_177} :catchall_213

    .line 285
    :cond_177
    :goto_177
    :try_start_177
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v4, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v4, :cond_1e0

    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;
    :try_end_181
    .catchall {:try_start_177 .. :try_end_181} :catchall_1ef

    move-object/from16 v15, p5

    :try_start_183
    invoke-virtual {v4, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d9

    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    and-int v5, p3, v5

    if-ne v4, v5, :cond_1d9

    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;
    :try_end_193
    .catchall {:try_start_183 .. :try_end_193} :catchall_1dc

    .line 287
    move-object/from16 v10, p4

    :try_start_195
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PreferredComponent;->sameSet([Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1e9

    .line 289
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_1d7

    .line 290
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replacing with same preferred activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v4, Landroid/util/LogPrinter;

    const-string v5, "PackageManager"

    invoke-direct {v4, v6, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v12, v4, v5}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 295
    :cond_1d7
    monitor-exit v1

    return-void

    .line 285
    :cond_1d9
    move-object/from16 v10, p4

    goto :goto_1e9

    .line 302
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v2    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v3    # "cur":Lcom/android/server/pm/PreferredActivity;
    :catchall_1dc
    move-exception v0

    move-object/from16 v10, p4

    goto :goto_216

    .line 285
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .restart local v2    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v3    # "cur":Lcom/android/server/pm/PreferredActivity;
    :cond_1e0
    move-object/from16 v10, p4

    move-object/from16 v15, p5

    goto :goto_1e9

    .line 267
    .end local v3    # "cur":Lcom/android/server/pm/PreferredActivity;
    :cond_1e5
    move-object/from16 v10, p4

    move-object/from16 v15, p5

    .line 298
    :cond_1e9
    :goto_1e9
    if-eqz v2, :cond_1f7

    .line 299
    invoke-static {v0, v12, v2}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    goto :goto_1f7

    .line 302
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .end local v2    # "existing":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PreferredActivity;>;"
    :catchall_1ef
    move-exception v0

    move-object/from16 v10, p4

    goto :goto_214

    .line 264
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    :cond_1f3
    move-object/from16 v10, p4

    move-object/from16 v15, p5

    .line 302
    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    :cond_1f7
    :goto_1f7
    monitor-exit v1
    :try_end_1f8
    .catchall {:try_start_195 .. :try_end_1f8} :catchall_218

    .line 305
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    const/4 v7, 0x1

    const-string v9, "Replacing preferred"

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 307
    return-void

    .line 302
    :catchall_213
    move-exception v0

    :goto_214
    move-object/from16 v15, p5

    :goto_216
    :try_start_216
    monitor-exit v1
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_218

    throw v0

    :catchall_218
    move-exception v0

    goto :goto_216

    .line 237
    .end local v14    # "callingUid":I
    :cond_21a
    move-object/from16 v15, p5

    goto :goto_225

    .line 236
    :cond_21d
    move-object/from16 v15, p5

    goto :goto_225

    .line 235
    :cond_220
    move-object/from16 v15, p5

    goto :goto_225

    .line 234
    :cond_223
    move-object/from16 v15, p5

    .line 238
    :goto_225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "replacePreferredActivity expects filter to have no data authorities, paths, or types; and at most one scheme."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_22e
    move-object/from16 v15, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "replacePreferredActivity expects filter to have only 1 action."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetApplicationPreferences(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 591
    .local v0, "identity":J
    :try_start_e
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 592
    .local v3, "changedUsers":Landroid/util/SparseBooleanArray;
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_70

    .line 593
    :try_start_18
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 594
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_6d

    .line 595
    :try_start_1e
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 596
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->postPreferredActivityChangedBroadcast(I)V

    .line 598
    :cond_29
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_70

    .line 599
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 600
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v4, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 601
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    .line 607
    .local v4, "numPackages":I
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 608
    .local v5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v6, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v6, v5, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->resetRuntimePermissions(Ljava/util/Collection;I)V

    .line 610
    .end local v4    # "numPackages":I
    .end local v5    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_2e .. :try_end_54} :catchall_6a

    .line 611
    :try_start_54
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->resetNetworkPolicies(I)V

    .line 613
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_70

    .line 615
    .end local v3    # "changedUsers":Landroid/util/SparseBooleanArray;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    nop

    .line 617
    return-void

    .line 610
    .restart local v3    # "changedUsers":Landroid/util/SparseBooleanArray;
    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .end local p1    # "userId":I
    :try_start_6c
    throw v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_70

    .line 594
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .restart local p1    # "userId":I
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .end local p1    # "userId":I
    :try_start_6f
    throw v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 615
    .end local v3    # "changedUsers":Landroid/util/SparseBooleanArray;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/pm/PreferredActivityHelper;
    .restart local p1    # "userId":I
    :catchall_70
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw v2
.end method

.method public restoreDefaultApps([BI)V
    .registers 6
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_47

    .line 564
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 565
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 566
    const-string v1, "da"

    new-instance v2, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_25

    .line 582
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    goto :goto_46

    .line 578
    :catch_25
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_46

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception restoring default apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void

    .line 560
    :cond_47
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call restoreDefaultApps()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restorePreferredActivities([BI)V
    .registers 6
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_48

    .line 508
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 509
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v1, "pa"

    new-instance v2, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PreferredActivityHelper;)V

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$BlobXmlRestorer;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_26

    .line 521
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    goto :goto_47

    .line 517
    :catch_26
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_47

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception restoring preferred activities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_47
    :goto_47
    return-void

    .line 504
    :cond_48
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call restorePreferredActivities()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeActivity(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;I)V
    .registers 15
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 351
    return-void

    .line 353
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v0, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1, v0, p3}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    .line 356
    const/4 v1, 0x0

    .line 358
    .local v1, "found":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 359
    .local v2, "size":I
    new-array v10, v2, [Landroid/content/ComponentName;

    .line 360
    .local v10, "set":[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_3c

    .line 361
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 362
    .local v4, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 363
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v6, "activityName":Landroid/content/ComponentName;
    aput-object v6, v10, v3

    .line 365
    if-nez v1, :cond_39

    invoke-virtual {v6, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 366
    const/4 v1, 0x1

    .line 360
    .end local v4    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "activityName":Landroid/content/ComponentName;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 369
    .end local v3    # "i":I
    :cond_3c
    if-eqz v1, :cond_4d

    .line 373
    invoke-direct {p0}, Lcom/android/server/pm/PreferredActivityHelper;->getHomeFilter()Lcom/android/server/pm/WatchedIntentFilter;

    move-result-object v5

    const/high16 v6, 0x100000

    move-object v3, p0

    move-object v4, p1

    move-object v7, v10

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 375
    return-void

    .line 370
    :cond_4d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be home on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;)V
    .registers 27
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p6, "match"    # I
    .param p7, "activity"    # Landroid/content/ComponentName;

    .line 703
    move-object/from16 v11, p2

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v14, p1

    invoke-interface {v14, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 704
    return-void

    .line 706
    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 707
    .local v15, "userId":I
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_79

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastChosenActivity intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resolvedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " match="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p6

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v0, Landroid/util/PrintStreamPrinter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Landroid/util/PrintStreamPrinter;-><init>(Ljava/io/PrintStream;)V

    const-string v1, "    "

    invoke-virtual {v13, v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_7f

    .line 707
    :cond_79
    move-object/from16 v10, p3

    move/from16 v9, p6

    move-object/from16 v8, p7

    .line 716
    :goto_7f
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 717
    int-to-long v3, v12

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v5, v15

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v16

    .line 720
    .local v16, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    int-to-long v4, v12

    const/4 v7, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    .line 723
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string v8, "Setting last chosen"

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v5, p7

    move v7, v15

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 725
    return-void
.end method

.method updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userIds"    # Landroid/util/SparseBooleanArray;

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :cond_35
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_3b
    if-ltz v0, :cond_47

    .line 344
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 345
    .local v1, "userId":I
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 343
    .end local v1    # "userId":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    .line 347
    .end local v0    # "i":I
    :cond_47
    return-void
.end method

.method public updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z
    .registers 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I

    .line 137
    move-object/from16 v11, p0

    move/from16 v12, p2

    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is holding mLock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_39
    iget-object v0, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_43

    .line 145
    return v13

    .line 147
    :cond_43
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getHomeIntent()Landroid/content/Intent;

    move-result-object v14

    .line 148
    .local v14, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const-wide/32 v3, 0xc0000

    move-object/from16 v0, p1

    move-object v1, v14

    move/from16 v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v15

    .line 150
    .local v15, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v6, v15

    move/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 153
    .local v0, "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_71

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_71

    .line 154
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    .line 155
    .local v1, "packageName":Ljava/lang/String;
    :goto_72
    iget-object v2, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v12}, Lcom/android/server/pm/PackageManagerService;->getActiveLauncherPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "currentPackageName":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 157
    return v13

    .line 159
    :cond_7f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "callingPackages":[Ljava/lang/String;
    if-eqz v3, :cond_96

    iget-object v5, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 163
    return v13

    .line 166
    :cond_96
    if-nez v1, :cond_99

    .line 168
    return v13

    .line 170
    :cond_99
    iget-object v5, v11, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v6, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, v11, v12}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PreferredActivityHelper;I)V

    invoke-virtual {v5, v1, v12, v6}, Lcom/android/server/pm/PackageManagerService;->setActiveLauncherPackage(Ljava/lang/String;ILjava/util/function/Consumer;)Z

    move-result v5

    return v5
.end method
