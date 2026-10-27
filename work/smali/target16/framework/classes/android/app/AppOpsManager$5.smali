.class Landroid/app/AppOpsManager$5;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
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

    .line 9116
    iput-object p2, p0, Landroid/app/AppOpsManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V
    .registers 16

    .line 9122
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9123
    instance-of v0, p0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_17

    .line 9124
    move-object v1, p0

    check-cast v1, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;IZ)V

    move p5, v5

    goto :goto_1a

    .line 9123
    :cond_17
    move v2, p1

    move v6, p5

    move p5, p4

    .line 9127
    :goto_1a
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_4f

    .line 9128
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move-object p4, p6

    move p6, v6

    invoke-interface/range {p0 .. p8}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZII)V

    goto :goto_4f

    .line 9133
    :cond_2e
    move v2, p1

    move v6, p5

    move-object p4, p6

    move p6, p7

    move p7, p8

    instance-of p1, p0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz p1, :cond_3d

    .line 9134
    move-object p1, p0

    check-cast p1, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    invoke-interface {p1, v2, p2, p3, v6}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    .line 9137
    :cond_3d
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_4f

    .line 9138
    sget-object p1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    move p5, v6

    invoke-interface/range {p0 .. p7}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 9143
    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public blacklist opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 20

    .line 9121
    iget-object v0, p0, Landroid/app/AppOpsManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v1, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v8, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;IZLjava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9144
    return-void
.end method
