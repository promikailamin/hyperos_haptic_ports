.class public final Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# instance fields
.field public final mRestrictionLevels:Landroid/util/SparseArrayMap;

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public static synthetic $r8$lambda$JN5jmrDzyU9x6w0DncYKD46bZBI(Ljava/util/ArrayList;Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 2

    .line 816
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$m_m_lZ6NSW8FYf2K17fgT6bulJQ(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)V
    .registers 5

    const/4 v0, 0x0

    .line 800
    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 801
    invoke-static {p0, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    const-wide/16 v1, 0x0

    .line 802
    invoke-static {p0, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V

    const/16 v3, 0x100

    .line 803
    invoke-static {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V

    .line 804
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    if-eqz v3, :cond_27

    .line 805
    :goto_17
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_27

    .line 806
    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J

    move-result-object v3

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_27
    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;ILjava/lang/String;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getLastRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 9

    .line 1042
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;-><init>(Lcom/android/server/am/AppRestrictionController;)V

    .line 1043
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1044
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_16
    if-ltz v2, :cond_4b

    .line 1045
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_20
    if-ltz v3, :cond_48

    .line 1046
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1047
    iget-object v5, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1048
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1047
    invoke-virtual {v5, v6, v7, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    :catchall_46
    move-exception p0

    goto :goto_4d

    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1051
    :cond_4b
    monitor-exit v1

    return-object v0

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_46

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 816
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 817
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_54

    .line 818
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 819
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 820
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x0

    :goto_32
    if-ge v3, p0, :cond_53

    .line 821
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x23

    .line 822
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 823
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x20

    .line 824
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 825
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->dump(Ljava/io/PrintWriter;J)V

    .line 826
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_53
    return-void

    :catchall_54
    move-exception p0

    .line 817
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6f

    .line 1060
    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    if-nez v2, :cond_c

    goto :goto_6f

    .line 1063
    :cond_c
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1065
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1066
    :try_start_17
    invoke-virtual {p1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-eq v3, v4, :cond_27

    .line 1067
    monitor-exit v2

    return v1

    :catchall_25
    move-exception p0

    goto :goto_6d

    .line 1069
    :cond_27
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_2e
    if-ltz v3, :cond_6b

    .line 1070
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 1071
    invoke-virtual {p1, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 1072
    invoke-virtual {v6, v3}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    if-eq v5, v6, :cond_44

    .line 1073
    monitor-exit v2

    return v1

    .line 1075
    :cond_44
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v5

    sub-int/2addr v5, v0

    :goto_4b
    if-ltz v5, :cond_68

    .line 1076
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1077
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    .line 1078
    monitor-exit v2

    return v1

    :cond_65
    add-int/lit8 v5, v5, -0x1

    goto :goto_4b

    :cond_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    .line 1082
    :cond_6b
    monitor-exit v2

    return v0

    :goto_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_17 .. :try_end_6e} :catchall_25

    throw p0

    :cond_6f
    :goto_6f
    return v1
.end method

.method public forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V
    .registers 8

    .line 721
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_9

    goto :goto_38

    .line 725
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_38

    .line 727
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 728
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 729
    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 728
    invoke-interface {p2, v3, v4, v2}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_38
    :goto_38
    return-void
.end method

.method public forEachUidLocked(Ljava/util/function/Consumer;)V
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 736
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public final getLastRestrictionLevel(ILjava/lang/String;)I
    .registers 4

    .line 711
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 712
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-nez p0, :cond_13

    const/4 p0, 0x0

    goto :goto_17

    .line 714
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastRestrictionLevel()I

    move-result p0

    :goto_17
    monitor-exit v0

    return p0

    :catchall_19
    move-exception p0

    .line 715
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getReason(Ljava/lang/String;I)I
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 668
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-eqz p0, :cond_18

    .line 669
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getReason()I

    move-result p0

    goto :goto_1a

    :catchall_16
    move-exception p0

    goto :goto_1c

    :cond_18
    const/16 p0, 0x100

    .line 670
    :goto_1a
    monitor-exit v0

    return p0

    .line 671
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_16

    throw p0
.end method

.method public getRestrictionLevel(I)I
    .registers 7

    .line 675
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 676
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_14

    .line 678
    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    goto :goto_3c

    .line 680
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v2

    if-nez v2, :cond_1e

    .line 682
    monitor-exit v0

    return v1

    :cond_1e
    move v3, v1

    :goto_1f
    if-ge v1, v2, :cond_3a

    .line 686
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-eqz v4, :cond_37

    .line 688
    invoke-virtual {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result v4

    if-nez v3, :cond_32

    goto :goto_36

    .line 689
    :cond_32
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_36
    move v3, v4

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 692
    :cond_3a
    monitor-exit v0

    return v3

    .line 693
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_12

    throw p0
.end method

.method public getRestrictionLevel(ILjava/lang/String;)I
    .registers 4

    .line 697
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 698
    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p2

    if-nez p2, :cond_14

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result p0

    goto :goto_18

    :catchall_12
    move-exception p0

    goto :goto_1a

    :cond_14
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getCurrentRestrictionLevel()I

    move-result p0

    :goto_18
    monitor-exit v0

    return p0

    .line 701
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_12

    throw p0
.end method

.method public getRestrictionLevel(Ljava/lang/String;I)I
    .registers 6

    .line 705
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0xc8000

    .line 706
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 707
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    .registers 3

    .line 742
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    return-object p0
.end method

.method public getXmlFileNameForUser(I)Ljava/io/File;
    .registers 3

    .line 843
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "apprestriction"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    new-instance p0, Ljava/io/File;

    const-string/jumbo p1, "settings.xml"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public loadFromXml(IZ)V
    .registers 12

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object p1

    .line 859
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_62

    :cond_b
    const/4 v0, 0x2

    .line 862
    new-array v5, v0, [J

    .line 863
    :try_start_e
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_13} :catch_62

    .line 864
    :try_start_13
    invoke-static {v7}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 865
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 867
    :goto_1b
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_54

    if-eq p1, v0, :cond_25

    goto :goto_1b

    .line 871
    :cond_25
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 872
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 873
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected tag name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_49
    move-exception v0

    move-object p0, v0

    goto :goto_58

    :cond_4c
    move-object v1, p0

    move v6, p2

    .line 876
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadOneFromXml(Lcom/android/modules/utils/TypedXmlPullParser;J[JZ)V
    :try_end_51
    .catchall {:try_start_13 .. :try_end_51} :catchall_49

    move-object p0, v1

    move p2, v6

    goto :goto_1b

    .line 881
    :cond_54
    :try_start_54
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_62

    return-void

    .line 863
    :goto_58
    :try_start_58
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_61

    :catchall_5c
    move-exception v0

    move-object p1, v0

    :try_start_5e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_61
    throw p0
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    :goto_62
    return-void
.end method

.method public loadFromXml(Z)V
    .registers 6

    .line 850
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 851
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    aget v3, v0, v2

    .line 852
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 854
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final loadOneFromXml(Lcom/android/modules/utils/TypedXmlPullParser;J[JZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const/4 v3, 0x0

    move v4, v3

    .line 888
    :goto_8
    array-length v5, v2

    const-wide/16 v6, 0x0

    if-ge v4, v5, :cond_12

    .line 889
    aput-wide v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    const/16 v5, 0x100

    move v14, v3

    move v15, v14

    move-object v9, v4

    move-wide v10, v6

    move v4, v15

    .line 897
    :goto_1a
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v4, v8, :cond_7f

    .line 899
    :try_start_20
    invoke-interface {v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 900
    invoke-interface {v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 901
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_fc

    goto :goto_72

    :sswitch_30
    const-string v13, "curlevel"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    .line 909
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_7c

    .line 901
    :sswitch_3d
    const-string/jumbo v13, "levelts"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    .line 912
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_7c

    .line 901
    :sswitch_4b
    const-string/jumbo v13, "uid"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    .line 903
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_7c

    .line 901
    :sswitch_59
    const-string/jumbo v13, "package"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    move-object v9, v12

    goto :goto_7c

    :sswitch_64
    const-string/jumbo v13, "reason"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    .line 915
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_7c

    .line 919
    :cond_72
    :goto_72
    invoke-static {v8}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTimeAttrToType(Ljava/lang/String;)I

    move-result v8

    .line 920
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v2, v8
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_7c} :catch_7c

    :catch_7c
    :goto_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_7f
    if-eqz v14, :cond_fb

    .line 933
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 934
    :try_start_88
    invoke-virtual {v0, v14, v9}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v4

    if-nez v4, :cond_94

    .line 936
    monitor-exit v1

    goto/16 :goto_fb

    :catchall_91
    move-exception v0

    goto/16 :goto_f9

    :cond_94
    move v8, v3

    .line 938
    :goto_95
    array-length v12, v2

    if-ge v8, v12, :cond_ac

    .line 939
    invoke-virtual {v4, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-nez v12, :cond_a9

    aget-wide v12, v2, v8

    cmp-long v16, v12, v6

    if-eqz v16, :cond_a9

    .line 940
    invoke-virtual {v4, v8, v12, v13, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    :cond_a9
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 943
    :cond_ac
    invoke-static {v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v2

    if-lt v2, v15, :cond_b4

    .line 946
    monitor-exit v1

    goto :goto_fb

    .line 948
    :cond_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_88 .. :try_end_b5} :catchall_91

    .line 949
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v8

    move-wide v6, v10

    .line 950
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v13, 0x0

    move-wide/from16 v11, p2

    .line 949
    invoke-interface/range {v8 .. v13}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v13

    const v1, 0xff00

    if-eqz p5, :cond_e3

    .line 952
    iget-object v8, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v8}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmEmptyTrackerInfo(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    move-result-object v12

    move v11, v15

    and-int v15, v5, v1

    and-int/lit16 v1, v5, 0xff

    move v10, v14

    const/4 v14, 0x1

    move/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    goto :goto_ea

    :cond_e3
    move v11, v15

    and-int/2addr v1, v5

    and-int/lit16 v2, v5, 0xff

    .line 955
    invoke-virtual {v4, v11, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    .line 958
    :goto_ea
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 960
    :try_start_f1
    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLevelChangeTime(J)V

    .line 961
    monitor-exit v2

    goto :goto_fb

    :catchall_f6
    move-exception v0

    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_f6

    throw v0

    .line 948
    :goto_f9
    :try_start_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_91

    throw v0

    :cond_fb
    :goto_fb
    return-void

    :sswitch_data_fc
    .sparse-switch
        -0x37ba6dbc -> :sswitch_64
        -0x301acbba -> :sswitch_59
        0x1c450 -> :sswitch_4b
        0x428d903 -> :sswitch_3d
        0x21f78144 -> :sswitch_30
    .end sparse-switch
.end method

.method public persistToXml(I)V
    .registers 7

    .line 967
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 969
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "ActivityManager"

    if-nez v2, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 970
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create folder for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 973
    :cond_2b
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 976
    :try_start_30
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_41

    .line 977
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->toXmlByteArray(I)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3f

    .line 985
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catch_3f
    move-exception p0

    goto :goto_43

    :catch_41
    move-exception p0

    const/4 v2, 0x0

    .line 979
    :goto_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write file "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_5c

    .line 981
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5c
    return-void
.end method

.method public removePackage(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    .line 758
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removePackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public removePackage(Ljava/lang/String;IZ)V
    .registers 7

    .line 762
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 763
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    .line 764
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_24

    .line 765
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result p1

    if-nez p1, :cond_24

    .line 766
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_3b

    .line 768
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_22

    if-eqz p3, :cond_3a

    .line 769
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p1}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 770
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    :cond_3a
    return-void

    .line 768
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_22

    throw p0
.end method

.method public removeUid(I)V
    .registers 3

    const/4 v0, 0x1

    .line 775
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->removeUid(IZ)V

    return-void
.end method

.method public removeUid(IZ)V
    .registers 5

    .line 779
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 780
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 781
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_23

    if-eqz p2, :cond_22

    .line 782
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 783
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    :cond_22
    return-void

    :catchall_23
    move-exception p0

    .line 781
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public removeUser(I)V
    .registers 5

    .line 746
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 747
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_28

    .line 748
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 749
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_1e

    goto :goto_23

    .line 752
    :cond_1e
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :goto_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 754
    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public removeXml()V
    .registers 5

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1035
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    aget v3, v0, v2

    .line 1036
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getXmlFileNameForUser(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method

.method public reset()V
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 790
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_1b

    .line 791
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 793
    :cond_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public resetToDefault()V
    .registers 3

    .line 798
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 799
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 810
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public scheduleLoadFromXml()V
    .registers 2

    .line 838
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public schedulePersistToXml(I)V
    .registers 4

    .line 832
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 833
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final toXmlByteArray(I)[B
    .registers 13

    const/4 v0, 0x0

    .line 992
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_ac

    .line 993
    :try_start_6
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 995
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 997
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_9f

    .line 998
    :try_start_16
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1e
    if-ltz v4, :cond_90

    .line 999
    iget-object v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_28
    if-ltz v5, :cond_8d

    .line 1000
    iget-object v6, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 1001
    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getUid()I

    move-result v7

    .line 1002
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-eq v8, p1, :cond_3d

    goto :goto_8a

    .line 1005
    :cond_3d
    const-string/jumbo v8, "settings"

    invoke-interface {v2, v0, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1006
    const-string/jumbo v8, "uid"

    invoke-interface {v2, v0, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1007
    const-string/jumbo v7, "package"

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1008
    const-string v7, "curlevel"

    invoke-static {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v8

    invoke-interface {v2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    const-string/jumbo v7, "levelts"

    invoke-static {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J

    move-result-wide v8

    invoke-interface {v2, v0, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1012
    const-string/jumbo v7, "reason"

    invoke-static {v6}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->-$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I

    move-result v8

    invoke-interface {v2, v0, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x0

    :goto_71
    const/4 v8, 0x2

    if-ge v7, v8, :cond_84

    .line 1015
    invoke-static {v7}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToTimeAttr(I)Ljava/lang/String;

    move-result-object v8

    .line 1016
    invoke-virtual {v6, v7}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->getLastNotificationTime(I)J

    move-result-wide v9

    .line 1014
    invoke-interface {v2, v0, v8, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    :catchall_82
    move-exception p0

    goto :goto_a1

    .line 1018
    :cond_84
    const-string/jumbo v6, "settings"

    invoke-interface {v2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_8a
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    :cond_8d
    add-int/lit8 v4, v4, -0x1

    goto :goto_1e

    .line 1021
    :cond_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_16 .. :try_end_91} :catchall_82

    .line 1023
    :try_start_91
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 1024
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 1026
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_9f

    .line 1027
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_ac

    return-object p0

    :catchall_9f
    move-exception p0

    goto :goto_a3

    .line 1021
    :goto_a1
    :try_start_a1
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_82

    :try_start_a2
    throw p0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_9f

    .line 992
    :goto_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_ab

    :catchall_a7
    move-exception p1

    :try_start_a8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ab
    throw p0
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ac} :catch_ac

    :catch_ac
    return-object v0
.end method

.method public update(Ljava/lang/String;IIII)I
    .registers 8

    .line 653
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    :try_start_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 656
    new-instance v1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 657
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_20

    .line 659
    :cond_1a
    :goto_1a
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->update(III)I

    move-result p0

    monitor-exit v0

    return p0

    .line 660
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_18

    throw p0
.end method
