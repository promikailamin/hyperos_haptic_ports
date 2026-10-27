.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final greylist-max-o mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 682
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 683
    invoke-static {p1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [[Ljava/lang/String;

    iput-object p2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    .line 684
    invoke-static {p1}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    .line 685
    return-void
.end method

.method private greylist-max-o ensureSplitLoaded(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 727
    nop

    .line 728
    if-eqz p1, :cond_31

    .line 729
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 730
    if-ltz v0, :cond_12

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 731
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' is not installed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_31
    const/4 v0, 0x0

    .line 736
    :goto_32
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->loadDependenciesForSplit(I)V

    .line 737
    return v0
.end method


# virtual methods
.method protected greylist-max-o constructSplit(I[II)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 697
    move-object/from16 v0, p2

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 698
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 699
    const/4 v3, 0x0

    if-nez p1, :cond_49

    .line 700
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/app/LoadedApk;->-$$Nest$mcreateOrUpdateClassLoaderLocked(Landroid/app/LoadedApk;Ljava/util/List;)V

    .line 701
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    iget-object v5, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v5}, Landroid/app/LoadedApk;->-$$Nest$fgetmClassLoader(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v4, v3

    .line 704
    array-length v4, v0

    move v5, v3

    :goto_23
    if-ge v5, v4, :cond_37

    aget v6, v0, v5

    .line 705
    iget-object v7, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v7}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v7, v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 707
    :cond_37
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v0, v3

    .line 708
    monitor-exit v1

    return-void

    .line 712
    :cond_49
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v11, v4, p3

    .line 713
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v5

    iget-object v6, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v6}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitAppDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v13, p1, -0x1

    aget-object v6, v6, v13

    iget-object v7, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    .line 714
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v7

    iget-object v8, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v8}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitClassLoaderNames(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v8

    aget-object v12, v8, v13

    .line 713
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v4, p1

    .line 717
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 718
    iget-object v4, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v4}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v13

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    array-length v4, v0

    :goto_87
    if-ge v3, v4, :cond_9b

    aget v5, v0, v3

    .line 720
    iget-object v6, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v6}, Landroid/app/LoadedApk;->-$$Nest$fgetmSplitResDirs(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 722
    :cond_9b
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v0, p1

    .line 723
    monitor-exit v1

    .line 724
    return-void

    .line 723
    :catchall_ad
    move-exception v0

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_9 .. :try_end_af} :catchall_ad

    throw v0
.end method

.method greylist-max-o getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 741
    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result p1

    .line 742
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 743
    :try_start_b
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object p1, v1, p1

    monitor-exit v0

    return-object p1

    .line 744
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p1
.end method

.method greylist-max-o getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 748
    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result p1

    .line 749
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 750
    :try_start_b
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object p1, v1, p1

    monitor-exit v0

    return-object p1

    .line 751
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p1
.end method

.method protected greylist-max-o isSplitCached(I)Z
    .registers 4

    .line 689
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-$$Nest$fgetmLock(Landroid/app/LoadedApk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 690
    :try_start_7
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object p1, v1, p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    monitor-exit v0

    return p1

    .line 691
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method
