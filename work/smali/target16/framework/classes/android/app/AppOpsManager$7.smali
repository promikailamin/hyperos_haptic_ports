.class Landroid/app/AppOpsManager$7;
.super Lcom/android/internal/app/IAppOpsNotedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 9378
    iput-object p2, p0, Landroid/app/AppOpsManager$7;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$7;->val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opNoted$0(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V
    .registers 16

    .line 9385
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 9386
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9387
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, v0, p0

    iget-object v1, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V

    goto :goto_2c

    .line 9390
    :cond_1f
    move-object v0, p1

    move p5, p6

    move p6, p7

    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p0, p1, p0

    iget-object p1, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 9394
    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method public blacklist opNoted(IILjava/lang/String;Ljava/lang/String;III)V
    .registers 20

    .line 9382
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9384
    :try_start_4
    iget-object v0, p0, Landroid/app/AppOpsManager$7;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/app/AppOpsManager$7;->val$listener:Landroid/app/AppOpsManager$OnOpNotedListener;

    new-instance v3, Landroid/app/AppOpsManager$7$$ExternalSyntheticLambda0;

    move v4, p1

    move v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Landroid/app/AppOpsManager$7$$ExternalSyntheticLambda0;-><init>(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 9396
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9397
    nop

    .line 9398
    return-void

    .line 9396
    :catchall_20
    move-exception v0

    move-object p1, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9397
    throw p1
.end method
