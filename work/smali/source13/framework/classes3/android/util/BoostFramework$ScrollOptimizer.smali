.class public Landroid/util/BoostFramework$ScrollOptimizer;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollOptimizer"
.end annotation


# static fields
.field public static final blacklist FLING_END:I = 0x0

.field public static final blacklist FLING_START:I = 0x1

.field private static final blacklist QXPERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QXPerformance.jar"

.field private static final blacklist SCROLL_OPT_CLASS:Ljava/lang/String; = "com.qualcomm.qti.QXPerformance.ScrollOptimizer"

.field private static final blacklist SCROLL_OPT_PROP:Ljava/lang/String; = "ro.vendor.perf.scroll_opt"

.field private static blacklist sDisableOptimizer:Ljava/lang/reflect/Method;

.field private static blacklist sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

.field private static blacklist sGetFrameDelay:Ljava/lang/reflect/Method;

.field private static blacklist sQXIsLoaded:Z

.field private static blacklist sQXPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sScrollOptEnable:Z

.field private static blacklist sScrollOptProp:Z

.field private static blacklist sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

.field private static blacklist sSetFlingFlag:Ljava/lang/reflect/Method;

.field private static blacklist sSetFrameInterval:Ljava/lang/reflect/Method;

.field private static blacklist sSetMotionType:Ljava/lang/reflect/Method;

.field private static blacklist sSetUITaskStatus:Ljava/lang/reflect/Method;

.field private static blacklist sSetVsyncTime:Ljava/lang/reflect/Method;

.field private static blacklist sShouldUseVsync:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsScrollOptProp()Z
    .registers 1

    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsScrollOptEnable(Z)V
    .registers 1

    sput-boolean p0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminitQXPerfFuncs()V
    .registers 0

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->initQXPerfFuncs()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 669
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    .line 670
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    .line 671
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 672
    const/4 v0, 0x0

    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    .line 673
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    .line 674
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sDisableOptimizer:Ljava/lang/reflect/Method;

    .line 675
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    .line 676
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    .line 677
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    .line 678
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    .line 679
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    .line 680
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    .line 681
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    .line 682
    sput-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist disableOptimizer(Z)V
    .registers 6
    .param p0, "disabled"    # Z

    .line 770
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sDisableOptimizer:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 772
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 775
    goto :goto_1b

    .line 773
    :catch_17
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static blacklist getAdjustedAnimationClock(J)J
    .registers 9
    .param p0, "frameTimeNanos"    # J

    .line 864
    move-wide v0, p0

    .line 865
    .local v0, "newFrameTimeNanos":J
    sget-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v2, :cond_25

    sget-object v2, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_25

    .line 867
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_b
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 868
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 867
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 869
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_21

    move-wide v0, v3

    .line 872
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_25

    .line 870
    :catch_21
    move-exception v2

    .line 871
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 874
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-wide v0
.end method

.method public static blacklist getFrameDelay(JJ)J
    .registers 11
    .param p0, "defaultDelay"    # J
    .param p2, "lastFrameTimeNanos"    # J

    .line 850
    move-wide v0, p0

    .line 851
    .local v0, "frameDelay":J
    sget-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v2, :cond_25

    sget-object v2, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_25

    .line 853
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_b
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 854
    .local v2, "retVal":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_21

    move-wide v0, v3

    .line 857
    .end local v2    # "retVal":Ljava/lang/Object;
    goto :goto_25

    .line 855
    :catch_21
    move-exception v2

    .line 856
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    return-wide v0
.end method

.method private static blacklist initQXPerfFuncs()V
    .registers 7

    .line 685
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    if-eqz v0, :cond_5

    return-void

    .line 688
    :cond_5
    const/4 v0, 0x1

    :try_start_6
    const-string/jumbo v1, "ro.vendor.perf.scroll_opt"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptProp:Z

    .line 689
    if-nez v1, :cond_19

    .line 690
    sput-boolean v2, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    .line 691
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_da
    .catchall {:try_start_6 .. :try_end_16} :catchall_d8

    .line 732
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 692
    return-void

    .line 695
    :cond_19
    :try_start_19
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/QXPerformance.jar"

    .line 696
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 697
    .local v1, "qXPerfClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "com.qualcomm.qti.QXPerformance.ScrollOptimizer"

    invoke-virtual {v1, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    .line 698
    new-array v3, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 699
    .local v3, "argClasses":[Ljava/lang/Class;
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setFrameInterval"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    .line 702
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 703
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v5, "disableOptimizer"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sDisableOptimizer:Ljava/lang/reflect/Method;

    .line 705
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/BLASTBufferQueue;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 706
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setBLASTBufferQueue"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    .line 708
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 709
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setMotionType"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    .line 711
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 712
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setVsyncTime"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    .line 714
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 715
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setUITaskStatus"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    .line 717
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 718
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "setFlingFlag"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    .line 720
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "shouldUseVsync"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    .line 722
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v3, v4

    .line 723
    sget-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v5, "getFrameDelay"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework$ScrollOptimizer;->sGetFrameDelay:Ljava/lang/reflect/Method;

    .line 725
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    move-object v2, v4

    .line 726
    .end local v3    # "argClasses":[Ljava/lang/Class;
    .local v2, "argClasses":[Ljava/lang/Class;
    sget-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sQXPerfClass:Ljava/lang/Class;

    const-string v4, "getAdjustedAnimationClock"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/BoostFramework$ScrollOptimizer;->sGetAdjustedAnimationClock:Ljava/lang/reflect/Method;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_d7} :catch_da
    .catchall {:try_start_19 .. :try_end_d7} :catchall_d8

    .end local v1    # "qXPerfClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "argClasses":[Ljava/lang/Class;
    goto :goto_e6

    .line 732
    :catchall_d8
    move-exception v1

    goto :goto_ea

    .line 728
    :catch_da
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    :try_start_db
    const-string v2, "BoostFramework"

    const-string/jumbo v3, "initQXPerfFuncs failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_db .. :try_end_e6} :catchall_d8

    .line 732
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_e6
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 733
    nop

    .line 734
    return-void

    .line 732
    :goto_ea
    sput-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    .line 733
    throw v1
.end method

.method public static blacklist setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .registers 5
    .param p0, "blastBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 781
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_17

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetBLASTBufferQueue:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 783
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 786
    goto :goto_17

    .line 784
    :catch_13
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_17
    return-void
.end method

.method public static blacklist setFlingFlag(I)V
    .registers 6
    .param p0, "flag"    # I

    .line 825
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFlingFlag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 827
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 830
    goto :goto_1b

    .line 828
    :catch_17
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static blacklist setFrameInterval(J)V
    .registers 7
    .param p0, "frameIntervalNanos"    # J

    .line 738
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sQXIsLoaded:Z

    if-eqz v0, :cond_20

    .line 739
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetFrameInterval:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 741
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_e
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    .line 744
    goto :goto_1f

    .line 742
    :catch_1b
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 746
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    return-void

    .line 748
    :cond_20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/util/BoostFramework$ScrollOptimizer$1;

    invoke-direct {v1, p0, p1}, Landroid/util/BoostFramework$ScrollOptimizer$1;-><init>(J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 765
    .local v0, "initThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 766
    return-void
.end method

.method public static blacklist setMotionType(I)V
    .registers 6
    .param p0, "eventType"    # I

    .line 792
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetMotionType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 794
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 797
    goto :goto_1b

    .line 795
    :catch_17
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static blacklist setUITaskStatus(Z)V
    .registers 6
    .param p0, "running"    # Z

    .line 814
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetUITaskStatus:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 816
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 819
    goto :goto_1b

    .line 817
    :catch_17
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static blacklist setVsyncTime(J)V
    .registers 7
    .param p0, "vsyncTimeNanos"    # J

    .line 803
    sget-boolean v0, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/util/BoostFramework$ScrollOptimizer;->sSetVsyncTime:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    .line 805
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    .line 808
    goto :goto_1b

    .line 806
    :catch_17
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 810
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static blacklist shouldUseVsync(Z)Z
    .registers 5
    .param p0, "defaultVsyncFlag"    # Z

    .line 836
    move v0, p0

    .line 837
    .local v0, "useVsync":Z
    sget-boolean v1, Landroid/util/BoostFramework$ScrollOptimizer;->sScrollOptEnable:Z

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/util/BoostFramework$ScrollOptimizer;->sShouldUseVsync:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1e

    .line 839
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_b
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 840
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_1a

    move v0, v2

    .line 843
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_1e

    .line 841
    :catch_1a
    move-exception v1

    .line 842
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    return v0
.end method
