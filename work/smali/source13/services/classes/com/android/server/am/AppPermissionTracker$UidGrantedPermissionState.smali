.class Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
.super Ljava/lang/Object;
.source "AppPermissionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidGrantedPermissionState"
.end annotation


# instance fields
.field final mAppOp:I

.field private mAppOpAllowed:Z

.field final mPermission:Ljava/lang/String;

.field private mPermissionGranted:Z

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/am/AppPermissionTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V
    .registers 5
    .param p2, "uid"    # I
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "appOp"    # I

    .line 282
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    .line 284
    iput-object p3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 285
    iput p4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    .line 286
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->updatePermissionState()V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->updateAppOps()V

    .line 288
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 328
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    instance-of v1, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    if-nez v1, :cond_8

    goto :goto_25

    .line 331
    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 332
    .local v1, "otherState":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    iget v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    iget v3, v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    if-ne v2, v3, :cond_23

    iget v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    iget v3, v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 333
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 332
    :goto_24
    return v0

    .line 329
    .end local v1    # "otherState":Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    :cond_25
    :goto_25
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 338
    iget v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    .line 338
    return v0
.end method

.method isGranted()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidGrantedPermissionState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    .line 346
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 348
    .local v1, "emptyPermissionName":Z
    const-string v2, "="

    if-nez v1, :cond_54

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_54
    iget v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8f

    .line 352
    if-nez v1, :cond_6e

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_8f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    return-object v0
.end method

.method updateAppOps()V
    .registers 10

    .line 300
    iget v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 301
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    .line 302
    return-void

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    iget-object v0, v0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 306
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    iget-object v3, v3, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    .line 307
    .local v3, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    array-length v4, v0

    move v5, v2

    :goto_24
    if-ge v5, v4, :cond_3a

    aget-object v6, v0, v5

    .line 309
    .local v6, "pkg":Ljava/lang/String;
    :try_start_28
    iget v7, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    iget v8, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-interface {v3, v7, v8, v6}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v7

    .line 310
    .local v7, "mode":I
    if-nez v7, :cond_35

    .line 311
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_36

    .line 312
    return-void

    .line 316
    .end local v7    # "mode":I
    :cond_35
    goto :goto_37

    .line 314
    :catch_36
    move-exception v7

    .line 307
    .end local v6    # "pkg":Ljava/lang/String;
    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 319
    .end local v3    # "appOpsService":Lcom/android/internal/app/IAppOpsService;
    :cond_3a
    iput-boolean v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    .line 320
    return-void
.end method

.method updatePermissionState()V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 292
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    .line 293
    return-void

    .line 295
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    iget-object v0, v0, Lcom/android/server/am/AppPermissionTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 296
    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    .line 297
    return-void
.end method
