.class final Lcom/android/server/clipboard/ClipboardService$LocalService;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Lcom/android/server/clipboard/ClipboardManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2

    .line 1337
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$LocalService;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$LocalService;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method


# virtual methods
.method public isAuthorizedByClipboard(ILjava/lang/String;Landroid/content/pm/ProviderInfo;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "callerPkg"    # Ljava/lang/String;
    .param p3, "providerInfo"    # Landroid/content/pm/ProviderInfo;

    .line 1341
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    iget-object v0, p3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 1346
    :cond_10
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$LocalService;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 1347
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v2, :cond_1b

    .line 1348
    return v1

    .line 1351
    :cond_1b
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1352
    return v1

    .line 1355
    :cond_24
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/clipboard/ClipboardServiceStub;->isAuthorizedByClipboard(Landroid/content/ClipData;Landroid/content/pm/ProviderInfo;)Z

    move-result v1

    return v1

    .line 1342
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :cond_2f
    :goto_2f
    const-string v0, "ClipboardService"

    const-string/jumbo v2, "isAuthorizedByClipboard: callerPkg or authority is empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return v1
.end method

.method public onPackageUriPermissionRemoved(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1359
    const/16 v0, -0x2710

    if-ne p2, v0, :cond_1d

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove active permission owner for invalid user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClipboardService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1364
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1365
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3f

    .line 1367
    :try_start_24
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v1

    .line 1368
    .local v1, "runningUserIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_36

    aget v4, v1, v3

    .line 1369
    .local v4, "id":I
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService$LocalService;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v5, p1, v4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mremoveActivePermissionOwnerForPackage(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_38

    .line 1368
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 1373
    .end local v1    # "runningUserIds":[I
    :cond_36
    nop

    .line 1374
    return-void

    .line 1371
    :catch_38
    move-exception v1

    .line 1372
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1377
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3f
    const/4 v1, -0x2

    if-eq p2, v1, :cond_4c

    const/4 v1, -0x3

    if-ne p2, v1, :cond_46

    goto :goto_4c

    .line 1385
    :cond_46
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$LocalService;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mremoveActivePermissionOwnerForPackage(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V

    .line 1386
    return-void

    .line 1379
    :cond_4c
    :goto_4c
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$LocalService;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUserId()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mremoveActivePermissionOwnerForPackage(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_57

    .line 1382
    nop

    .line 1383
    return-void

    .line 1380
    :catch_57
    move-exception v1

    .line 1381
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
