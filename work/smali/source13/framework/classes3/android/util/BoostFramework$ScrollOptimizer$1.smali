.class Landroid/util/BoostFramework$ScrollOptimizer$1;
.super Ljava/lang/Object;
.source "BoostFramework.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$frameIntervalNanos:J


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3

    .line 748
    iput-wide p1, p0, Landroid/util/BoostFramework$ScrollOptimizer$1;->val$frameIntervalNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 9

    .line 751
    const-class v0, Landroid/util/BoostFramework$ScrollOptimizer;

    monitor-enter v0

    .line 753
    :try_start_3
    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sminitQXPerfFuncs()V

    .line 754
    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfgetsScrollOptProp()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 755
    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Landroid/util/BoostFramework$ScrollOptimizer$1;->val$frameIntervalNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-static {v3}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfputsScrollOptEnable(Z)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2c
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    .line 761
    :cond_29
    goto :goto_37

    .line 762
    :catchall_2a
    move-exception v1

    goto :goto_39

    .line 758
    :catch_2c
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string v2, "BoostFramework"

    const-string v3, "Failed to run initThread."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_2a

    throw v1
.end method
