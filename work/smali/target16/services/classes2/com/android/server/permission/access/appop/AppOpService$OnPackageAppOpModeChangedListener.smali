.class public final Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;
.super Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;
.source "AppOpService.kt"


# instance fields
.field public final pendingChanges:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .registers 2

    .line 431
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 432
    invoke-direct {p0}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy$OnAppOpModeChangedListener;-><init>()V

    .line 434
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public onAppOpModeChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6

    .line 443
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p3

    .line 444
    new-instance p4, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStateMutated()V
    .registers 14

    .line 450
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    # getter for: Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    .line 40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_50

    .line 41
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v5, Lcom/android/server/permission/jarjar/kotlin/Triple;

    .line 42
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v8, v3

    :goto_25
    if-ge v8, v7, :cond_4d

    .line 43
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .line 453
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 454
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 455
    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 457
    invoke-interface {v9, v10, v11, v12, v6}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onPackageModeChanged(Ljava/lang/String;III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 461
    :cond_50
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method
