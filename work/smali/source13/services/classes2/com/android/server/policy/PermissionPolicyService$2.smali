.class Lcom/android/server/policy/PermissionPolicyService$2;
.super Landroid/content/BroadcastReceiver;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mPermControllerManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/permission/PermissionControllerManager;",
            ">;"
        }
    .end annotation
.end field

.field final mUserSetupUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 297
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mPermControllerManagers:Ljava/util/Map;

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 372
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 373
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 374
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 376
    :cond_11
    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 379
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 380
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 381
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 382
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 384
    :cond_16
    return-void
.end method

.method private updateUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 360
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 361
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mPermControllerManagers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    .line 362
    .local v1, "manager":Landroid/permission/PermissionControllerManager;
    if-nez v1, :cond_27

    .line 363
    new-instance v2, Landroid/permission/PermissionControllerManager;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 364
    invoke-virtual {v3}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$smgetUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v1, v2

    .line 365
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mPermControllerManagers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_27
    invoke-virtual {v1, p1}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    .line 368
    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 387
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 388
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 389
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V

    .line 391
    :cond_11
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 305
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 306
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 307
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 308
    .local v3, "packageName":Ljava/lang/String;
    :goto_13
    if-eq v0, v1, :cond_d0

    if-nez v3, :cond_19

    goto/16 :goto_d0

    .line 311
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_d2

    :cond_26
    goto :goto_44

    :sswitch_27
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v1, v6

    goto :goto_44

    :sswitch_31
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v1, 0x2

    goto :goto_44

    :sswitch_3b
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v1, v7

    :goto_44
    packed-switch v1, :pswitch_data_e0

    .line 322
    return-void

    .line 319
    :pswitch_48
    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/PermissionPolicyService$2;->onPackageRemoved(Ljava/lang/String;I)V

    .line 320
    return-void

    .line 316
    :pswitch_4c
    invoke-direct {p0, v3, v0}, Lcom/android/server/policy/PermissionPolicyService$2;->onPackageChanged(Ljava/lang/String;I)V

    .line 317
    goto :goto_54

    .line 313
    :pswitch_50
    invoke-direct {p0, v3, v0}, Lcom/android/server/policy/PermissionPolicyService$2;->onPackageAdded(Ljava/lang/String;I)V

    .line 314
    nop

    .line 325
    :goto_54
    const/4 v1, 0x1

    .line 327
    .local v1, "hasSetupRun":Z
    :try_start_55
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v4}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 328
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v5, "user_setup_complete"

    .line 329
    invoke-virtual {v4}, Landroid/content/ContentResolver;->getUserId()I

    move-result v8

    .line 328
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5
    :try_end_6a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_55 .. :try_end_6a} :catch_6f

    if-eqz v5, :cond_6d

    move v6, v7

    :cond_6d
    move v1, v6

    .line 332
    .end local v4    # "cr":Landroid/content/ContentResolver;
    goto :goto_70

    .line 330
    :catch_6f
    move-exception v4

    .line 336
    :goto_70
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$2;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v4}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_7d

    .line 337
    return-void

    .line 340
    :cond_7d
    if-eqz v1, :cond_b3

    .line 341
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_af

    .line 342
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    monitor-enter v4

    .line 343
    :try_start_8a
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    .local v5, "i":I
    :goto_91
    if-ltz v5, :cond_a5

    .line 344
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/PermissionPolicyService$2;->updateUid(I)V

    .line 343
    add-int/lit8 v5, v5, -0x1

    goto :goto_91

    .line 346
    .end local v5    # "i":I
    :cond_a5
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 347
    monitor-exit v4

    goto :goto_af

    :catchall_ac
    move-exception v5

    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_8a .. :try_end_ae} :catchall_ac

    throw v5

    .line 349
    :cond_af
    :goto_af
    invoke-direct {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$2;->updateUid(I)V

    goto :goto_cc

    .line 351
    :cond_b3
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    monitor-enter v4

    .line 352
    :try_start_b6
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    .line 353
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$2;->mUserSetupUids:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_cb
    monitor-exit v4

    .line 357
    :goto_cc
    return-void

    .line 355
    :catchall_cd
    move-exception v5

    monitor-exit v4
    :try_end_cf
    .catchall {:try_start_b6 .. :try_end_cf} :catchall_cd

    throw v5

    .line 309
    .end local v1    # "hasSetupRun":Z
    :cond_d0
    :goto_d0
    return-void

    nop

    :sswitch_data_d2
    .sparse-switch
        0xa480416 -> :sswitch_3b
        0x1f50b9c2 -> :sswitch_31
        0x5c1076e2 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4c
        :pswitch_48
    .end packed-switch
.end method
