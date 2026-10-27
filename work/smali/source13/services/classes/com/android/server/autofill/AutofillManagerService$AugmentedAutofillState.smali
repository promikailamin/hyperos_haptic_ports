.class final Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;
.super Lcom/android/internal/infra/GlobalWhitelistState;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AugmentedAutofillState"
.end annotation


# instance fields
.field private final mServicePackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemporaryServices:Landroid/util/SparseBooleanArray;


# direct methods
.method static bridge synthetic -$$Nest$msetServiceInfo(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->setServiceInfo(ILjava/lang/String;Z)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1290
    invoke-direct {p0}, Lcom/android/internal/infra/GlobalWhitelistState;-><init>()V

    .line 1292
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 1294
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private setServiceInfo(ILjava/lang/String;Z)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 1299
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    if-eqz p3, :cond_c

    .line 1301
    :try_start_5
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_11

    .line 1303
    :cond_c
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1305
    :goto_11
    if-eqz p2, :cond_43

    .line 1306
    nop

    .line 1307
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1308
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_39

    .line 1309
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setServiceInfo(): invalid name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_42

    .line 1312
    :cond_39
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1314
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :goto_42
    goto :goto_48

    .line 1315
    :cond_43
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1317
    :goto_48
    monitor-exit v0

    .line 1318
    return-void

    .line 1317
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1352
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1354
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1355
    :try_start_6
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 1356
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service packages: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1358
    :cond_1b
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 1359
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Temp services: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1361
    :cond_30
    monitor-exit v0

    .line 1362
    return-void

    .line 1361
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V
    .registers 7
    .param p1, "options"    # Landroid/content/AutofillOptions;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 1324
    :cond_9
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mWhitelisterHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/WhitelistHelper;

    .line 1325
    .local v1, "helper":Lcom/android/internal/infra/WhitelistHelper;
    if-eqz v1, :cond_20

    .line 1326
    invoke-virtual {v1, p3}, Lcom/android/internal/infra/WhitelistHelper;->isWhitelisted(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Landroid/content/AutofillOptions;->augmentedAutofillEnabled:Z

    .line 1327
    nop

    .line 1328
    invoke-virtual {v1, p3}, Lcom/android/internal/infra/WhitelistHelper;->getWhitelistedComponents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p1, Landroid/content/AutofillOptions;->whitelistedActivitiesForAugmentedAutofill:Landroid/util/ArraySet;

    .line 1330
    .end local v1    # "helper":Lcom/android/internal/infra/WhitelistHelper;
    :cond_20
    monitor-exit v0

    .line 1331
    return-void

    .line 1330
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public isWhitelisted(ILandroid/content/ComponentName;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1335
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mGlobalWhitelistStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/GlobalWhitelistState;->isWhitelisted(ILandroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return v2

    .line 1338
    :cond_c
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mTemporaryServices:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1339
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1340
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 1341
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for augmented autofill while using temporary service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->mServicePackages:Landroid/util/SparseArray;

    .line 1342
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1341
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    monitor-exit v0

    return v2

    .line 1346
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_54
    monitor-exit v0

    .line 1347
    const/4 v0, 0x1

    return v0

    .line 1346
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1
.end method
