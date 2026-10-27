.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 2929
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private getFilterFromQuery(Landroid/util/ArraySet;Ljava/util/List;JLandroid/content/ComponentName;IZ)Ljava/util/function/Predicate;
    .registers 21
    .param p3, "changedSince"    # J
    .param p5, "componentName"    # Landroid/content/ComponentName;
    .param p6, "queryFlags"    # I
    .param p7, "getPinnedByAnyLauncher"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;J",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 3015
    .local p1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    move-object v0, p2

    if-nez v0, :cond_6

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_c

    .line 3016
    :cond_6
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v1

    :goto_c
    nop

    .line 3018
    .local v6, "locIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/LocusId;>;"
    and-int/lit8 v1, p6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    move v8, v3

    goto :goto_16

    :cond_15
    move v8, v2

    .line 3019
    .local v8, "matchDynamic":Z
    :goto_16
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1c

    move v9, v3

    goto :goto_1d

    :cond_1c
    move v9, v2

    .line 3020
    .local v9, "matchPinned":Z
    :goto_1d
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_23

    move v11, v3

    goto :goto_24

    :cond_23
    move v11, v2

    .line 3021
    .local v11, "matchManifest":Z
    :goto_24
    and-int/lit8 v1, p6, 0x10

    if-eqz v1, :cond_2a

    move v12, v3

    goto :goto_2b

    :cond_2a
    move v12, v2

    .line 3022
    .local v12, "matchCached":Z
    :goto_2b
    new-instance v1, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-wide/from16 v3, p3

    move-object v5, p1

    move-object/from16 v7, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda0;-><init>(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZ)V

    return-object v1
.end method

.method private getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 3523
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3f

    .line 3526
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->getBitmapPathMayWait(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v1

    .line 3527
    .local v1, "path":Ljava/lang/String;
    const-string v2, "ShortcutService"

    if-nez v1, :cond_1b

    .line 3528
    const-string/jumbo v3, "null bitmap detected in getShortcutIconFd()"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    return-object v0

    .line 3532
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_27

    return-object v0

    .line 3535
    :catch_27
    move-exception v3

    .line 3536
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    return-object v0

    .line 3524
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;
    .registers 23
    .param p1, "launcherUserId"    # I
    .param p2, "launcherPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p5, "userId"    # I

    .line 3611
    move-object/from16 v1, p0

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 3612
    return-object v2

    .line 3614
    :cond_a
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v3

    .line 3615
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "ShortcutService"

    if-nez v3, :cond_19

    .line 3616
    const-string/jumbo v0, "null uri detected in getShortcutIconUri()"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    return-object v2

    .line 3620
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3622
    .local v5, "token":J
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_23} :catch_58
    .catchall {:try_start_1d .. :try_end_23} :catchall_52

    const-wide/32 v7, 0x10000000

    move-object/from16 v2, p3

    move/from16 v15, p5

    :try_start_2a
    invoke-virtual {v0, v2, v7, v8, v15}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v11

    .line 3627
    .local v11, "packageUid":I
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmUriGrantsManager(Lcom/android/server/pm/ShortcutService;)Landroid/app/IUriGrantsManager;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmUriPermissionOwner(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;

    move-result-object v10

    .line 3628
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x1

    .line 3627
    move-object/from16 v12, p2

    move/from16 v15, p5

    move/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_48} :catch_50
    .catchall {:try_start_2a .. :try_end_48} :catchall_4e

    .line 3635
    .end local v11    # "packageUid":I
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3636
    move-object/from16 v8, p2

    goto :goto_82

    .line 3635
    :catchall_4e
    move-exception v0

    goto :goto_55

    .line 3630
    :catch_50
    move-exception v0

    goto :goto_5b

    .line 3635
    :catchall_52
    move-exception v0

    move-object/from16 v2, p3

    :goto_55
    move-object/from16 v8, p2

    goto :goto_84

    .line 3630
    :catch_58
    move-exception v0

    move-object/from16 v2, p3

    .line 3631
    .local v0, "e":Ljava/lang/Exception;
    :goto_5b
    :try_start_5b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to grant uri access to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_4e

    move-object/from16 v8, p2

    :try_start_68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_83

    .line 3633
    const/4 v3, 0x0

    .line 3635
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3636
    nop

    .line 3637
    :goto_82
    return-object v3

    .line 3635
    :catchall_83
    move-exception v0

    :goto_84
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3636
    throw v0
.end method

.method private getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 9
    .param p1, "launcherUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 3145
    .local p5, "cb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/ShortcutInfo;>;"
    const-string/jumbo v0, "packageName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3146
    const-string/jumbo v0, "shortcutId"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3148
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3149
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3152
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3153
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3154
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_3c

    .line 3155
    if-nez v1, :cond_2f

    .line 3156
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3157
    return-void

    .line 3159
    :cond_2f
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p5}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ShortcutPackage;->getShortcutByIdsAsync(Ljava/util/Set;Ljava/util/function/Consumer;)V

    .line 3161
    return-void

    .line 3154
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 22
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "getPinnedByAnyLauncher"    # Z

    .line 3124
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-string/jumbo v4, "packageName"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3125
    const-string/jumbo v4, "shortcutId"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3127
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3128
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v12, p1

    invoke-virtual {v4, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3130
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 3131
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 3132
    .local v4, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v13, 0x0

    if-nez v4, :cond_2d

    .line 3133
    return-object v13

    .line 3136
    :cond_2d
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v5

    .line 3137
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v7, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;

    invoke-direct {v7, v2}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, v14

    move-object/from16 v9, p2

    move/from16 v10, p1

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 3139
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4c

    goto :goto_54

    :cond_4c
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    :goto_54
    return-object v13
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .registers 39
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p6, "changedSince"    # J
    .param p8, "componentName"    # Landroid/content/ComponentName;
    .param p9, "queryFlags"    # I
    .param p10, "userId"    # I
    .param p12, "cloneFlag"    # I
    .param p13, "callingPid"    # I
    .param p14, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;III)V"
        }
    .end annotation

    .line 2988
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    .local p11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move/from16 v0, p9

    if-nez v9, :cond_a

    const/4 v1, 0x0

    goto :goto_f

    .line 2989
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_f
    nop

    .line 2991
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v10, p10

    invoke-virtual {v2, v10}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v11

    .line 2992
    .local v11, "user":Lcom/android/server/pm/ShortcutUser;
    move-object/from16 v12, p3

    invoke-virtual {v11, v12}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v20

    .line 2993
    .local v20, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v20, :cond_21

    .line 2994
    return-void

    .line 2997
    :cond_21
    iget-object v2, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2998
    move/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p13

    move/from16 v7, p14

    invoke-virtual {v2, v14, v15, v13, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v21

    .line 3000
    .local v21, "canAccessAllShortcuts":Z
    const/4 v2, 0x0

    if-eqz v21, :cond_38

    and-int/lit16 v3, v0, 0x400

    if-eqz v3, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    move v3, v2

    :goto_39
    move/from16 v22, v3

    .line 3003
    .local v22, "getPinnedByAnyLauncher":Z
    if-eqz v22, :cond_3e

    const/4 v2, 0x2

    :cond_3e
    or-int v23, v0, v2

    .line 3005
    .end local p9    # "queryFlags":I
    .local v23, "queryFlags":I
    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-wide/from16 v3, p6

    move-object/from16 v5, p8

    move/from16 v6, v23

    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getFilterFromQuery(Landroid/util/ArraySet;Ljava/util/List;JLandroid/content/ComponentName;IZ)Ljava/util/function/Predicate;

    move-result-object v0

    .line 3007
    .local v0, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v13, v20

    move-object/from16 v14, p11

    move-object v15, v0

    move/from16 v16, p12

    move-object/from16 v17, p2

    move/from16 v18, p1

    move/from16 v19, v22

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 3009
    return-void
.end method

.method static synthetic lambda$createShortcutIntentsAsync$7(Lcom/android/internal/infra/AndroidFuture;Landroid/content/pm/ShortcutInfo;)V
    .registers 3
    .param p0, "cb"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3384
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3385
    return-void
.end method

.method static synthetic lambda$getFilterFromQuery$1(JLandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/content/ComponentName;ZZZZZLandroid/content/pm/ShortcutInfo;)Z
    .registers 14
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "locIds"    # Landroid/util/ArraySet;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "matchDynamic"    # Z
    .param p6, "matchPinned"    # Z
    .param p7, "getPinnedByAnyLauncher"    # Z
    .param p8, "matchManifest"    # Z
    .param p9, "matchCached"    # Z
    .param p10, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3023
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long v0, v0, p0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 3024
    return v1

    .line 3026
    :cond_a
    if-eqz p2, :cond_17

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3027
    return v1

    .line 3029
    :cond_17
    if-eqz p3, :cond_24

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 3030
    return v1

    .line 3032
    :cond_24
    if-eqz p4, :cond_37

    .line 3033
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 3034
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 3035
    return v1

    .line 3038
    :cond_37
    const/4 v0, 0x1

    if-eqz p5, :cond_41

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3039
    return v0

    .line 3041
    :cond_41
    if-nez p6, :cond_45

    if-eqz p7, :cond_4c

    :cond_45
    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3042
    return v0

    .line 3044
    :cond_4c
    if-eqz p8, :cond_55

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3045
    return v0

    .line 3047
    :cond_55
    if-eqz p9, :cond_5e

    invoke-virtual {p10}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3048
    return v0

    .line 3050
    :cond_5e
    return v1
.end method

.method static synthetic lambda$getShortcutInfoAsync$5(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 3
    .param p0, "cb"    # Ljava/util/function/Consumer;
    .param p1, "shortcuts"    # Ljava/util/List;

    .line 3160
    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getShortcutInfoLocked$4(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .registers 3
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3137
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getShortcutsAsync$2(ILandroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .registers 3
    .param p0, "cloneFlag"    # I
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3093
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getShortcutsAsync$3(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;Ljava/util/List;)V
    .registers 6
    .param p0, "cloneFlag"    # I
    .param p1, "ret"    # Ljava/util/List;
    .param p2, "cb"    # Lcom/android/internal/infra/AndroidFuture;
    .param p3, "shortcuts"    # Ljava/util/List;

    .line 3092
    if-eqz p3, :cond_1a

    .line 3093
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;

    invoke-direct {v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda46;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 3095
    :cond_1a
    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3096
    return-void
.end method

.method static synthetic lambda$pinShortcuts$6(Landroid/content/pm/ShortcutInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3186
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3187
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3188
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 3186
    :goto_21
    return v0
.end method

.method private updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V
    .registers 25
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "cacheFlags"    # I
    .param p7, "doCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)V"
        }
    .end annotation

    .line 3252
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    const-string/jumbo v0, "packageName"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3253
    const-string/jumbo v0, "shortcutIds"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3254
    const v0, 0x60004000

    and-int/2addr v0, v5

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v8, "invalid cacheFlags"

    invoke-static {v0, v8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3257
    const/4 v8, 0x0

    .line 3258
    .local v8, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v9, 0x0

    .line 3260
    .local v9, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3261
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3262
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_104

    move/from16 v11, p1

    :try_start_38
    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3264
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    .line 3265
    .local v0, "idSize":I
    iget-object v12, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v12, v4}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v12

    .line 3266
    .local v12, "sp":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_100

    if-nez v12, :cond_51

    move/from16 v16, v0

    goto/16 :goto_102

    .line 3270
    :cond_51
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_52
    if-ge v13, v0, :cond_f2

    .line 3271
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3272
    .local v14, "id":Ljava/lang/String;
    invoke-virtual {v12, v14}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v15

    .line 3273
    .local v15, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v15, :cond_e7

    invoke-virtual {v15, v5}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v7

    if-ne v6, v7, :cond_71

    .line 3274
    move/from16 v16, v0

    const/4 v7, 0x1

    goto/16 :goto_ea

    .line 3277
    :cond_71
    if-eqz v6, :cond_b0

    .line 3278
    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 3279
    invoke-virtual {v15, v5}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 3280
    if-nez v8, :cond_89

    .line 3281
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v16, v0

    const/4 v0, 0x1

    .end local v0    # "idSize":I
    .local v16, "idSize":I
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v7

    move-object v8, v0

    .end local v8    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v0, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_8b

    .line 3280
    .end local v16    # "idSize":I
    .local v0, "idSize":I
    .restart local v8    # "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_89
    move/from16 v16, v0

    .line 3283
    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    :goto_8b
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_ea

    .line 3285
    .end local v16    # "idSize":I
    .restart local v0    # "idSize":I
    :cond_90
    move/from16 v16, v0

    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    const-string v0, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only long lived shortcuts can get cached. Ignoring id "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3286
    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3285
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto :goto_ea

    .line 3289
    .end local v16    # "idSize":I
    .restart local v0    # "idSize":I
    :cond_b0
    move/from16 v16, v0

    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    const/4 v0, 0x0

    .line 3290
    .local v0, "removed":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v15, v5}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 3291
    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-nez v2, :cond_c8

    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 3292
    const/4 v2, 0x1

    invoke-virtual {v12, v14, v2}, Lcom/android/server/pm/ShortcutPackage;->deleteLongLivedWithId(Ljava/lang/String;Z)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    move-object v0, v7

    .line 3294
    :cond_c8
    if-nez v0, :cond_d8

    .line 3295
    if-nez v8, :cond_d3

    .line 3296
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 3298
    :cond_d3
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_ea

    .line 3300
    :cond_d8
    if-nez v9, :cond_e2

    .line 3301
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v2

    .end local v9    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v2, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    goto :goto_e3

    .line 3300
    .end local v2    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v9    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_e2
    const/4 v7, 0x1

    .line 3303
    :goto_e3
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 3273
    .end local v16    # "idSize":I
    .local v0, "idSize":I
    :cond_e7
    move/from16 v16, v0

    const/4 v7, 0x1

    .line 3270
    .end local v0    # "idSize":I
    .end local v14    # "id":Ljava/lang/String;
    .end local v15    # "si":Landroid/content/pm/ShortcutInfo;
    .restart local v16    # "idSize":I
    :goto_ea
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p3

    move/from16 v0, v16

    goto/16 :goto_52

    .end local v16    # "idSize":I
    .restart local v0    # "idSize":I
    :cond_f2
    move/from16 v16, v0

    .line 3307
    .end local v0    # "idSize":I
    .end local v13    # "i":I
    monitor-exit v10
    :try_end_f5
    .catchall {:try_start_38 .. :try_end_f5} :catchall_109

    .line 3308
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12, v8, v9}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 3310
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3311
    return-void

    .line 3266
    .restart local v0    # "idSize":I
    :cond_100
    move/from16 v16, v0

    .line 3267
    .end local v0    # "idSize":I
    .restart local v16    # "idSize":I
    :goto_102
    :try_start_102
    monitor-exit v10

    return-void

    .line 3307
    .end local v12    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .end local v16    # "idSize":I
    :catchall_104
    move-exception v0

    move/from16 v11, p1

    :goto_107
    monitor-exit v10
    :try_end_108
    .catchall {:try_start_102 .. :try_end_108} :catchall_109

    throw v0

    :catchall_109
    move-exception v0

    goto :goto_107
.end method


# virtual methods
.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .line 3390
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3391
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmListeners(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3392
    monitor-exit v0

    .line 3393
    return-void

    .line 3392
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 3398
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3399
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmShortcutChangeCallbacks(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3400
    monitor-exit v0

    .line 3401
    return-void

    .line 3400
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .registers 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3217
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V

    .line 3219
    return-void
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
    .registers 24
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I

    .line 3319
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    const-string/jumbo v0, "packageName can\'t be empty"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3320
    const-string/jumbo v0, "shortcutId can\'t be empty"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3322
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 3323
    :try_start_1f
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3324
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3326
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 3327
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3329
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_85

    .line 3330
    move/from16 v15, p6

    move/from16 v7, p7

    :try_start_38
    invoke-virtual {v0, v10, v9, v15, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    .line 3334
    .local v0, "getPinnedByAnyLauncher":Z
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 3338
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v2

    if-nez v2, :cond_5e

    if-nez v0, :cond_5e

    goto :goto_64

    .line 3342
    :cond_5e
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    monitor-exit v14

    return-object v2

    .line 3339
    :cond_64
    :goto_64
    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    const/4 v2, 0x0

    monitor-exit v14

    return-object v2

    .line 3343
    .end local v0    # "getPinnedByAnyLauncher":Z
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_85
    move-exception v0

    move/from16 v15, p6

    :goto_88
    monitor-exit v14
    :try_end_89
    .catchall {:try_start_38 .. :try_end_89} :catchall_8a

    throw v0

    :catchall_8a
    move-exception v0

    goto :goto_88
.end method

.method public createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V
    .registers 25
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcom/android/internal/infra/AndroidFuture<",
            "[",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 3352
    .local p8, "cb":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<[Landroid/content/Intent;>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p8

    const-string/jumbo v0, "packageName can\'t be empty"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3353
    const-string/jumbo v0, "shortcutId can\'t be empty"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3356
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 3357
    :try_start_21
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3358
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3360
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 3361
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3363
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 3364
    move/from16 v7, p6

    move/from16 v6, p7

    invoke-virtual {v0, v10, v9, v7, v6}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    .line 3368
    .local v0, "getPinnedByAnyLauncher":Z
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 3371
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_8d

    .line 3372
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v2

    if-nez v2, :cond_60

    if-nez v0, :cond_60

    goto :goto_69

    .line 3377
    :cond_60
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3378
    monitor-exit v15

    return-void

    .line 3373
    :cond_69
    :goto_69
    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3375
    monitor-exit v15

    return-void

    .line 3380
    .end local v0    # "getPinnedByAnyLauncher":Z
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_8d
    monitor-exit v15
    :try_end_8e
    .catchall {:try_start_21 .. :try_end_8e} :catchall_a1

    .line 3383
    new-instance v6, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda7;

    invoke-direct {v6, v13}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 3386
    return-void

    .line 3380
    :catchall_a1
    move-exception v0

    :try_start_a2
    monitor-exit v15
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v0
.end method

.method public getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 3232
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3233
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 3232
    return-object v0
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3460
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3461
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3462
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3464
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3465
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3466
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3468
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3469
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3471
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3472
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3473
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 3474
    monitor-exit v0

    return-object v2

    .line 3477
    :cond_3a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 3478
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_42

    .line 3479
    monitor-exit v0

    return-object v2

    .line 3481
    :cond_42
    invoke-direct {p0, v1, v3}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3482
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public getShortcutIconFdAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 3489
    .local p6, "cb":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/ParcelFileDescriptor;>;"
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3490
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3491
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3495
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3496
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3497
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3499
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3500
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3502
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3503
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_3d

    .line 3504
    const/4 v2, 0x0

    invoke-virtual {p6, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3505
    monitor-exit v0

    return-void

    .line 3508
    :cond_3d
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 3509
    .local v2, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v2, :cond_4c

    .line 3510
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p6, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3511
    monitor-exit v0

    return-void

    .line 3513
    .end local v2    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_18 .. :try_end_4d} :catchall_5b

    .line 3516
    new-instance v7, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0, p6, v1}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 3518
    return-void

    .line 3513
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3406
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3407
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3408
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3410
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3411
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3412
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3414
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3415
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3417
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3418
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3419
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 3420
    monitor-exit v0

    return v2

    .line 3423
    :cond_3a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 3424
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3425
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    goto :goto_4c

    :cond_4b
    nop

    :goto_4c
    monitor-exit v0

    .line 3424
    return v2

    .line 3426
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getShortcutIconUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "launcherUserId"    # I
    .param p2, "launcherPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3544
    const-string v0, "launcherPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3545
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3546
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3548
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3549
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3550
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3552
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3553
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3555
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3556
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3557
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 3558
    monitor-exit v0

    return-object v2

    .line 3561
    :cond_3a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 3562
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-nez v3, :cond_42

    .line 3563
    monitor-exit v0

    return-object v2

    .line 3565
    :cond_42
    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v3

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3567
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getShortcutIconUriAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 16
    .param p1, "launcherUserId"    # I
    .param p2, "launcherPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3574
    .local p6, "cb":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    const-string v0, "launcherPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3575
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3576
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3579
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3580
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3581
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3583
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3584
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3586
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3587
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3588
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_3d

    .line 3589
    const/4 v2, 0x0

    invoke-virtual {p6, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3590
    monitor-exit v0

    return-void

    .line 3593
    :cond_3d
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 3594
    .local v2, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v2, :cond_52

    .line 3595
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v2

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3597
    monitor-exit v0

    return-void

    .line 3599
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v2    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_18 .. :try_end_53} :catchall_69

    .line 3602
    new-instance v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p6

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;I)V

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoAsync(ILjava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 3606
    return-void

    .line 3599
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public getShortcutStartingThemeResName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3434
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3435
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3436
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3438
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3439
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3440
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3442
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3443
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3445
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 3446
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 3447
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 3448
    monitor-exit v0

    return-object v2

    .line 3451
    :cond_3a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 3452
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    move-result-object v2

    :cond_44
    monitor-exit v0

    return-object v2

    .line 3453
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .registers 45
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p8, "componentName"    # Landroid/content/ComponentName;
    .param p9, "queryFlags"    # I
    .param p10, "userId"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 2941
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v12, p9

    move/from16 v11, p10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 2943
    .local v10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    const/16 v0, 0x1b

    .line 2944
    .local v0, "flags":I
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_18

    .line 2945
    const/4 v0, 0x4

    move/from16 v29, v0

    goto :goto_23

    .line 2946
    :cond_18
    and-int/lit16 v1, v12, 0x800

    if-eqz v1, :cond_21

    .line 2947
    and-int/lit8 v0, v0, -0x11

    move/from16 v29, v0

    goto :goto_23

    .line 2946
    :cond_21
    move/from16 v29, v0

    .line 2949
    .end local v0    # "flags":I
    .local v29, "flags":I
    :goto_23
    move/from16 v13, v29

    .line 2951
    .local v13, "cloneFlag":I
    if-nez p5, :cond_2b

    .line 2952
    const/4 v0, 0x0

    move-object/from16 v30, v0

    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2d

    .line 2951
    .end local v0    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    move-object/from16 v30, p6

    .line 2955
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2d
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v31

    monitor-enter v31

    .line 2956
    :try_start_34
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2957
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2959
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v9, p2

    invoke-virtual {v0, v9, v11, v14}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2960
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_ba

    .line 2962
    if-eqz p5, :cond_77

    .line 2963
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, v30

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move-object/from16 v9, p8

    move-object/from16 p6, v10

    .end local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local p6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p6

    move/from16 v14, p11

    move/from16 v15, p12

    :try_start_67
    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6f

    move-object/from16 v1, p0

    move/from16 v2, p10

    goto :goto_a6

    .line 2977
    :catchall_6f
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v3, p6

    move/from16 v2, p10

    goto :goto_be

    .line 2968
    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_77
    move-object/from16 p6, v10

    .end local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v18, v30

    .line 2969
    .local v18, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, p7

    .line 2970
    .local v19, "locusIdsF":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    move-object/from16 v1, p0

    :try_start_7f
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_b4

    move/from16 v2, p10

    :try_start_83
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda1;

    move-object v14, v3

    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, p2

    move-wide/from16 v20, p3

    move-object/from16 v22, p8

    move/from16 v23, p9

    move/from16 v24, p10

    move-object/from16 v25, p6

    move/from16 v26, v13

    move/from16 v27, p11

    move/from16 v28, p12

    invoke-direct/range {v14 .. v28}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2977
    .end local v18    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "locusIdsF":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    :goto_a6
    monitor-exit v31
    :try_end_a7
    .catchall {:try_start_83 .. :try_end_a7} :catchall_b0

    .line 2978
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v3, p6

    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v0, v3}, Lcom/android/server/pm/ShortcutService;->-$$Nest$msetReturnedByServer(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2977
    .end local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_b0
    move-exception v0

    move-object/from16 v3, p6

    goto :goto_b9

    :catchall_b4
    move-exception v0

    move-object/from16 v3, p6

    move/from16 v2, p10

    .end local p6    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_b9
    goto :goto_be

    .end local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_ba
    move-exception v0

    move-object v3, v10

    move v2, v11

    move-object v1, v15

    .end local v10    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_be
    :try_start_be
    monitor-exit v31
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_c0

    throw v0

    :catchall_c0
    move-exception v0

    goto :goto_be
.end method

.method public getShortcutsAsync(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIIILcom/android/internal/infra/AndroidFuture;)V
    .registers 26
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p8, "componentName"    # Landroid/content/ComponentName;
    .param p9, "queryFlags"    # I
    .param p10, "userId"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 3061
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    .local p13, "cb":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;>;"
    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p9

    move-object/from16 v5, p13

    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v6

    .line 3064
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v3, :cond_7e

    if-eqz v2, :cond_7e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_1e

    move/from16 v8, p10

    goto :goto_80

    .line 3071
    :cond_1e
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3072
    :try_start_25
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_79

    move/from16 v8, p10

    :try_start_29
    invoke-virtual {v0, v8}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 3073
    .local v0, "p":Lcom/android/server/pm/ShortcutPackage;
    monitor-exit v7
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_77

    .line 3074
    if-nez v0, :cond_38

    .line 3075
    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3076
    return-void

    .line 3079
    :cond_38
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 3081
    .local v7, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda9;

    invoke-direct {v10}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;

    invoke-direct {v10, v7}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda10;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v9, v10}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3083
    const/16 v9, 0x1b

    .line 3084
    .local v9, "flags":I
    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_67

    .line 3085
    const/4 v9, 0x4

    goto :goto_6d

    .line 3086
    :cond_67
    and-int/lit16 v10, v4, 0x800

    if-eqz v10, :cond_6d

    .line 3087
    and-int/lit8 v9, v9, -0x11

    .line 3089
    :cond_6d
    :goto_6d
    move v10, v9

    .line 3091
    .local v10, "cloneFlag":I
    new-instance v11, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda11;

    invoke-direct {v11, v10, v6, v5}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda11;-><init>(ILjava/util/List;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v7, v11}, Lcom/android/server/pm/ShortcutPackage;->getShortcutByIdsAsync(Ljava/util/Set;Ljava/util/function/Consumer;)V

    .line 3097
    return-void

    .line 3073
    .end local v0    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v7    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "flags":I
    .end local v10    # "cloneFlag":I
    :catchall_77
    move-exception v0

    goto :goto_7c

    :catchall_79
    move-exception v0

    move/from16 v8, p10

    :goto_7c
    :try_start_7c
    monitor-exit v7
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_77

    throw v0

    .line 3064
    :cond_7e
    move/from16 v8, p10

    .line 3067
    :goto_80
    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3068
    return-void
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;II)Z
    .registers 6
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 3643
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 3668
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3671
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v1

    .line 3672
    .local v1, "defaultLauncher":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 3673
    return v2

    .line 3675
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 3676
    return v2

    .line 3678
    :cond_18
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3679
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v4

    if-nez v4, :cond_29

    .line 3680
    monitor-exit v3

    return v2

    .line 3682
    :cond_29
    monitor-exit v3

    .line 3683
    const/4 v2, 0x1

    return v2

    .line 3682
    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3102
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3103
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3105
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3106
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3107
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3109
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 3110
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3112
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 3115
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    monitor-exit v0

    return v2

    .line 3116
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 4
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .line 3663
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    move-result v0

    return v0
.end method

.method public isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
    .registers 15
    .param p1, "callingUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "filter"    # Landroid/content/IntentFilter;

    .line 3240
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3241
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3242
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3244
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService;->isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getShortcutIconFdAsync$8$com-android-server-pm-ShortcutService$LocalService(Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .registers 5
    .param p1, "cb"    # Lcom/android/internal/infra/AndroidFuture;
    .param p2, "p"    # Lcom/android/server/pm/ShortcutPackage;
    .param p3, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3517
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconParcelFileDescriptor(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$getShortcutIconUriAsync$9$com-android-server-pm-ShortcutService$LocalService(Lcom/android/internal/infra/AndroidFuture;ILjava/lang/String;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;)V
    .registers 13
    .param p1, "cb"    # Lcom/android/internal/infra/AndroidFuture;
    .param p2, "launcherUserId"    # I
    .param p3, "launcherPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 3603
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutIconUriInternal(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 3605
    return-void
.end method

.method synthetic lambda$getShortcuts$0$com-android-server-pm-ShortcutService$LocalService(ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .registers 30
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "shortcutIdsF"    # Ljava/util/List;
    .param p4, "locusIdsF"    # Ljava/util/List;
    .param p5, "changedSince"    # J
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p10, "ret"    # Ljava/util/ArrayList;
    .param p11, "cloneFlag"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2971
    nop

    .line 2972
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2971
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 2975
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .registers 23
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 3168
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    const-string/jumbo v0, "packageName"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3169
    const-string/jumbo v0, "shortcutIds"

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3171
    const/4 v13, 0x0

    .line 3172
    .local v13, "changedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v2, 0x0

    .line 3174
    .local v2, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 3175
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3176
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 3178
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_9c

    .line 3179
    move-object/from16 v15, p2

    :try_start_2d
    invoke-virtual {v0, v15, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 3180
    .local v0, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 3182
    iget-object v3, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v12}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v3

    move-object v8, v3

    .line 3183
    .local v8, "sp":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v8, :cond_5e

    .line 3185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_a1

    .line 3186
    .end local v2    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .local v3, "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_46
    new-instance v4, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;-><init>()V

    const/4 v5, 0x4

    const/16 v16, 0x0

    move-object v2, v8

    move-object/from16 v6, p2

    move/from16 v7, p1

    move-object v9, v8

    .end local v8    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .local v9, "sp":Lcom/android/server/pm/ShortcutPackage;
    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_5b

    move-object v2, v3

    goto :goto_5f

    .line 3204
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v9    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :catchall_5b
    move-exception v0

    move-object v2, v3

    goto :goto_9f

    .line 3183
    .end local v3    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .restart local v2    # "removedShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v8    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :cond_5e
    move-object v9, v8

    .line 3193
    .end local v8    # "sp":Lcom/android/server/pm/ShortcutPackage;
    .restart local v9    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :goto_5f
    :try_start_5f
    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v3

    .line 3195
    .local v3, "oldPinnedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v12, v10, v11, v4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 3197
    if-eqz v3, :cond_82

    if-eqz v2, :cond_82

    .line 3198
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_82

    .line 3199
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3198
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 3202
    .end local v4    # "i":I
    :cond_82
    iget-object v4, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v11}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v3, v5, v2, v9}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mprepareChangedShortcuts(Lcom/android/server/pm/ShortcutService;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 3204
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v3    # "oldPinnedIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v14
    :try_end_8f
    .catchall {:try_start_5f .. :try_end_8f} :catchall_a1

    .line 3206
    if-eqz v9, :cond_96

    .line 3207
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9, v13, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 3210
    :cond_96
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 3211
    return-void

    .line 3204
    .end local v9    # "sp":Lcom/android/server/pm/ShortcutPackage;
    :catchall_9c
    move-exception v0

    move-object/from16 v15, p2

    :goto_9f
    :try_start_9f
    monitor-exit v14
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a1

    throw v0

    :catchall_a1
    move-exception v0

    goto :goto_9f
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .registers 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultIntent"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    .line 3657
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3658
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mrequestPinItem(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3650
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3651
    return-void
.end method

.method public uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .registers 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 3225
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->updateCachedShortcutsInternal(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIZ)V

    .line 3227
    return-void
.end method
