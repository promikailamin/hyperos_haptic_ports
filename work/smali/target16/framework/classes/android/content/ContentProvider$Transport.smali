.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field volatile greylist-max-o mAppOpsManager:Landroid/app/AppOpsManager;

.field volatile blacklist mInterface:Landroid/content/ContentInterface;

.field volatile greylist-max-o mReadOp:I

.field volatile greylist-max-o mWriteOp:I

.field final synthetic blacklist this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 237
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 238
    const/4 p1, -0x1

    iput p1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 239
    iput p1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 240
    iget-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    return-void
.end method

.method private blacklist checkGetTypePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 5

    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 881
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 882
    const-string v1, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-static {v0, v1, p1}, Landroid/content/ContentProvider;->-$$Nest$mcheckPermission(Landroid/content/ContentProvider;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1f

    .line 888
    :cond_17
    :try_start_17
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result p1
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_1b} :catch_1c

    return p1

    .line 889
    :catch_1c
    move-exception p1

    .line 890
    const/4 p1, 0x2

    return p1

    .line 885
    :cond_1f
    :goto_1f
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 828
    const-string v0, "App op not allowed"

    if-eqz p3, :cond_1a

    const/16 v1, 0x77

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1a

    .line 829
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_20

    .line 831
    :cond_14
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 834
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result p1

    if-nez p1, :cond_21

    .line 839
    :goto_20
    return-void

    .line 836
    :cond_21
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result p2

    .line 845
    if-eqz p2, :cond_9

    .line 846
    return p2

    .line 850
    :cond_9
    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object p2

    iget p2, p2, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_40

    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object p2

    iget p2, p2, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->-$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_40

    .line 852
    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {p2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v0

    iget v0, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 853
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    .line 852
    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 856
    :cond_40
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 862
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result p2

    .line 863
    if-eqz p2, :cond_9

    .line 864
    return p2

    .line 868
    :cond_9
    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object p2

    iget p2, p2, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_40

    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object p2

    iget p2, p2, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->-$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_40

    .line 870
    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {p2}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v0

    iget v0, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 871
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    .line 870
    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 874
    :cond_40
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .registers 10

    .line 366
    const/16 v0, 0x234

    if-eqz p4, :cond_6f

    .line 369
    :try_start_4
    iget-object p4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/content/ContentProvider;->-$$Nest$fgetmContext(Landroid/content/ContentProvider;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    .line 370
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 371
    const-wide/16 v2, 0x80

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v2

    .line 370
    invoke-virtual {p4, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object p4

    .line 373
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 374
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmSingleUser(Landroid/content/ContentProvider;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmMyUid(Landroid/content/ContentProvider;)I

    move-result v2

    .line 375
    invoke-static {v2, p1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v2

    if-nez v2, :cond_39

    .line 376
    invoke-static {p2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_3a

    :cond_39
    move-object v2, p2

    .line 377
    :goto_3a
    iget-boolean p4, p4, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz p4, :cond_6e

    iget-object p4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 378
    const/4 v3, 0x1

    invoke-interface {p4, p2, p1, v3}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result p4

    if-eqz p4, :cond_6e

    iget-object p4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 381
    invoke-virtual {p4}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p4, v2, v4, p1, v3}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p4

    if-eqz p4, :cond_6e

    iget-object p4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/content/ContentProvider;->-$$Nest$fgetmSystemUserOnly(Landroid/content/ContentProvider;)Z

    move-result p4

    .line 384
    invoke-static {v1, p4}, Landroid/content/ContentProvider;->-$$Nest$smdeniedAccessSystemUserOnlyProvider(IZ)Z

    move-result p4

    if-nez p4, :cond_6e

    .line 386
    nop

    .line 388
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    .line 386
    const/4 p4, 0x5

    invoke-static {v0, p4, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_6d

    goto :goto_6e

    .line 390
    :catch_6d
    move-exception p1

    .line 392
    :cond_6e
    :goto_6e
    goto :goto_78

    .line 394
    :cond_6f
    nop

    .line 396
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    .line 394
    const/4 p4, 0x4

    invoke-static {v0, p4, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_78
    return-void
.end method

.method private blacklist validateFileMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 793
    if-eqz p1, :cond_2a

    const/16 v0, 0x77

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 795
    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v2, ""

    if-eq v0, v1, :cond_1c

    .line 796
    const-string/jumbo v0, "t"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 799
    :cond_1c
    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2a

    .line 800
    const-string v0, "a"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 803
    :cond_2a
    return-object p1
.end method


# virtual methods
.method public blacklist applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 489
    new-array v1, v0, [I

    .line 490
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 491
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 492
    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, v0, :cond_96

    .line 493
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    .line 494
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 495
    invoke-static {v7}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v8

    aput v8, v1, v5

    .line 496
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8, v7}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 497
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v8, v7}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 499
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 500
    new-instance v8, Landroid/content/ContentProviderOperation;

    invoke-direct {v8, v6, v7}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V

    .line 501
    invoke-virtual {p3, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v6, v8

    .line 503
    :cond_48
    nop

    .line 505
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v8

    const-string v9, "App op not allowed"

    if-eqz v8, :cond_6f

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 506
    invoke-direct {p0, p1, v7}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v8

    if-nez v8, :cond_69

    .line 510
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 508
    :cond_69
    new-instance p1, Landroid/content/OperationApplicationException;

    invoke-direct {p1, v9, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 512
    :cond_6f
    :goto_6f
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_93

    .line 513
    invoke-direct {p0, p1, v7}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_8d

    .line 517
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 515
    :cond_8d
    new-instance p1, Landroid/content/OperationApplicationException;

    invoke-direct {p1, v9, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 492
    :cond_93
    :goto_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 520
    :cond_96
    const-string v0, "applyBatch: "

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 524
    :try_start_a3
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p2

    .line 526
    if-eqz p2, :cond_c2

    .line 527
    nop

    :goto_ac
    array-length p3, p2

    if-ge v4, p3, :cond_c2

    .line 528
    aget p3, v1, v4

    const/4 v0, -0x2

    if-eq p3, v0, :cond_bf

    .line 530
    new-instance p3, Landroid/content/ContentProviderResult;

    aget-object v0, p2, v4

    aget v5, v1, v4

    invoke-direct {p3, v0, v5}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object p3, p2, v4
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_bf} :catch_ce
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_cc

    .line 527
    :cond_bf
    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    .line 534
    :cond_c2
    nop

    .line 538
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 539
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    return-object p2

    .line 538
    :catchall_cc
    move-exception p2

    goto :goto_d4

    .line 535
    :catch_ce
    move-exception p2

    .line 536
    :try_start_cf
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_cc

    .line 538
    :goto_d4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 539
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 540
    throw p2
.end method

.method public blacklist bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 8

    .line 464
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 465
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 466
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 468
    const/4 p1, 0x0

    return p1

    .line 470
    :cond_14
    const-string v0, "bulkInsert: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 474
    :try_start_25
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_36
    .catchall {:try_start_25 .. :try_end_2b} :catchall_34

    .line 478
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 479
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 474
    return p2

    .line 478
    :catchall_34
    move-exception p2

    goto :goto_3c

    .line 475
    :catch_36
    move-exception p2

    .line 476
    :try_start_37
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .line 478
    :goto_3c
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 479
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 480
    throw p2
.end method

.method public blacklist call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    .line 634
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 636
    const-string v0, "call: "

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 640
    :try_start_16
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3, p4, p5}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_27
    .catchall {:try_start_16 .. :try_end_1c} :catchall_25

    .line 644
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 645
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    return-object p2

    .line 644
    :catchall_25
    move-exception p2

    goto :goto_2d

    .line 641
    :catch_27
    move-exception p2

    .line 642
    :try_start_28
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_25

    .line 644
    :goto_2d
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 645
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 646
    throw p2
.end method

.method public blacklist canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8

    .line 696
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 697
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 698
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 699
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 701
    const/4 p1, 0x0

    return-object p1

    .line 703
    :cond_16
    const-string v1, "canonicalize: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 707
    :try_start_27
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_31} :catch_3c
    .catchall {:try_start_27 .. :try_end_31} :catchall_3a

    .line 711
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 712
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 707
    return-object p2

    .line 711
    :catchall_3a
    move-exception p2

    goto :goto_42

    .line 708
    :catch_3c
    move-exception p2

    .line 709
    :try_start_3d
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 711
    :goto_42
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 712
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 713
    throw p2
.end method

.method public blacklist canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 719
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 721
    :try_start_5
    const-string/jumbo v1, "result"

    .line 722
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 721
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 726
    goto :goto_1b

    .line 723
    :catch_10
    move-exception p1

    .line 724
    new-instance p2, Landroid/os/ParcelableException;

    invoke-direct {p2, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 727
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 728
    return-void
.end method

.method public blacklist checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .registers 9

    .line 809
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 810
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 811
    const-string v0, "checkUriPermission: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 815
    :try_start_1d
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3, p4}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result p2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_2e
    .catchall {:try_start_1d .. :try_end_23} :catchall_2c

    .line 819
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 820
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 815
    return p2

    .line 819
    :catchall_2c
    move-exception p2

    goto :goto_34

    .line 816
    :catch_2e
    move-exception p2

    .line 817
    :try_start_2f
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 819
    :goto_34
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 820
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 821
    throw p2
.end method

.method public greylist-max-o createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 2

    .line 691
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 8

    .line 546
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 547
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 548
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 550
    const/4 p1, 0x0

    return p1

    .line 552
    :cond_14
    const-string v0, "delete: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 556
    :try_start_25
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result p2
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_36
    .catchall {:try_start_25 .. :try_end_2b} :catchall_34

    .line 560
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 561
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 556
    return p2

    .line 560
    :catchall_34
    move-exception p2

    goto :goto_3c

    .line 557
    :catch_36
    move-exception p2

    .line 558
    :try_start_37
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    .line 560
    :goto_3c
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 561
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 562
    throw p2
.end method

.method greylist-max-o getContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public greylist-max-o getProviderName()Ljava/lang/String;
    .registers 2

    .line 248
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStreamTypes(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 652
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 653
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 654
    const-string v0, "getStreamTypes: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 658
    :try_start_1d
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_2e
    .catchall {:try_start_1d .. :try_end_23} :catchall_2c

    .line 662
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 663
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    return-object p2

    .line 662
    :catchall_2c
    move-exception p2

    goto :goto_34

    .line 659
    :catch_2e
    move-exception p2

    .line 660
    :try_start_2f
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 662
    :goto_34
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 663
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 664
    throw p2
.end method

.method public blacklist getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .line 309
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 310
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 311
    const-string v0, "getType: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 315
    :try_start_1d
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->checkGetTypePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_67

    .line 318
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const-string v4, "android.permission.GET_ANY_PROVIDER_TYPE"

    invoke-static {v1, v4, p1}, Landroid/content/ContentProvider;->-$$Nest$mcheckPermission(Landroid/content/ContentProvider;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p1

    if-nez p1, :cond_4d

    .line 324
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_35} :catch_9b
    .catchall {:try_start_1d .. :try_end_35} :catchall_99

    .line 326
    :try_start_35
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_44

    .line 328
    :try_start_3b
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 329
    nop

    .line 330
    goto :goto_53

    .line 328
    :catchall_44
    move-exception p2

    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 329
    throw p2

    .line 331
    :cond_4d
    iget-object p1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {p1, p2}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 334
    :goto_53
    if-eqz v1, :cond_5d

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v1, v4}, Landroid/content/ContentProvider$Transport;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_5d} :catch_9b
    .catchall {:try_start_3b .. :try_end_5d} :catchall_99

    .line 337
    :cond_5d
    nop

    .line 354
    iget-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 355
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 337
    return-object v1

    .line 339
    :cond_67
    :try_start_67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 340
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v1
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_73} :catch_9b
    .catchall {:try_start_67 .. :try_end_73} :catchall_99

    .line 342
    :try_start_73
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p2}, Landroid/content/ContentProvider;->getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 343
    if-eqz v4, :cond_7f

    .line 344
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v4, v5}, Landroid/content/ContentProvider$Transport;->logGetTypeData(ILandroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_90

    .line 346
    :cond_7f
    nop

    .line 348
    :try_start_80
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_87} :catch_9b
    .catchall {:try_start_80 .. :try_end_87} :catchall_99

    .line 354
    iget-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 355
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 346
    return-object v4

    .line 348
    :catchall_90
    move-exception p1

    :try_start_91
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 349
    throw p1
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_99} :catch_9b
    .catchall {:try_start_91 .. :try_end_99} :catchall_99

    .line 354
    :catchall_99
    move-exception p1

    goto :goto_a1

    .line 351
    :catch_9b
    move-exception p1

    .line 352
    :try_start_9c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_99

    .line 354
    :goto_a1
    iget-object p2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 355
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    throw p1
.end method

.method public blacklist getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8

    .line 417
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 418
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 419
    const-string v0, "getTypeAnonymous: "

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    :try_start_1c
    const-string/jumbo v1, "result"

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v4, p1}, Landroid/content/ContentProvider;->getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_31
    .catchall {:try_start_1c .. :try_end_28} :catchall_2f

    .line 427
    :goto_28
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 428
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 429
    goto :goto_3d

    .line 427
    :catchall_2f
    move-exception p1

    goto :goto_3e

    .line 423
    :catch_31
    move-exception p1

    .line 424
    :try_start_32
    const-string v1, "error"

    new-instance v4, Landroid/os/ParcelableException;

    invoke-direct {v4, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_2f

    goto :goto_28

    .line 430
    :goto_3d
    return-void

    .line 427
    :goto_3e
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 428
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 429
    throw p1
.end method

.method public blacklist getTypeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    :try_start_5
    const-string/jumbo v1, "result"

    .line 406
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->getType(Landroid/content/AttributionSource;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 410
    goto :goto_1b

    .line 407
    :catch_10
    move-exception p1

    .line 408
    new-instance p2, Landroid/os/ParcelableException;

    invoke-direct {p2, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 411
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 412
    return-void
.end method

.method public blacklist insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 10

    .line 435
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 436
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 437
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 438
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 440
    iget-object p4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 443
    :try_start_1c
    iget-object p4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 445
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 443
    return-object p2

    .line 445
    :catchall_28
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 446
    throw p2

    .line 448
    :cond_2f
    const-string v1, "insert: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 452
    :try_start_40
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2, p3, p4}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4a} :catch_55
    .catchall {:try_start_40 .. :try_end_4a} :catchall_53

    .line 456
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 457
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 452
    return-object p2

    .line 456
    :catchall_53
    move-exception p2

    goto :goto_5b

    .line 453
    :catch_55
    move-exception p2

    .line 454
    :try_start_56
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_53

    .line 456
    :goto_5b
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 457
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 458
    throw p2
.end method

.method public blacklist openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 614
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 615
    invoke-direct {p0, p3}, Landroid/content/ContentProvider$Transport;->validateFileMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 616
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v0, "openAssetFile: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 621
    :try_start_25
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 622
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p4

    .line 621
    invoke-interface {v0, p2, p3, p4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_3a
    .catchall {:try_start_25 .. :try_end_2f} :catchall_38

    .line 626
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 627
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    return-object p2

    .line 626
    :catchall_38
    move-exception p2

    goto :goto_40

    .line 623
    :catch_3a
    move-exception p2

    .line 624
    :try_start_3b
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 626
    :goto_40
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 627
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 628
    throw p2
.end method

.method public blacklist openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 592
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 593
    invoke-direct {p0, p3}, Landroid/content/ContentProvider$Transport;->validateFileMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 594
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v0, "openFile: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 599
    :try_start_25
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 600
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p4

    .line 599
    invoke-interface {v0, p2, p3, p4}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_3a
    .catchall {:try_start_25 .. :try_end_2f} :catchall_38

    .line 604
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 605
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 599
    return-object p2

    .line 604
    :catchall_38
    move-exception p2

    goto :goto_40

    .line 601
    :catch_3a
    move-exception p2

    .line 602
    :try_start_3b
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_38

    .line 604
    :goto_40
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 605
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    throw p2
.end method

.method public blacklist openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 671
    const/4 v0, 0x1

    invoke-static {p4, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 672
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 673
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 674
    const-string/jumbo v0, "r"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 675
    const-string/jumbo v0, "openTypedAssetFile: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 679
    :try_start_28
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 680
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p5

    .line 679
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_3d
    .catchall {:try_start_28 .. :try_end_32} :catchall_3b

    .line 684
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 685
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 679
    return-object p2

    .line 684
    :catchall_3b
    move-exception p2

    goto :goto_43

    .line 681
    :catch_3d
    move-exception p2

    .line 682
    :try_start_3e
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 684
    :goto_43
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 685
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 686
    throw p2
.end method

.method public blacklist query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 10

    .line 255
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 256
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 265
    const/4 v0, 0x0

    if-eqz p3, :cond_1b

    .line 266
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-direct {p1, p3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p1

    .line 274
    :cond_1b
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 277
    :try_start_21
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 279
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p5

    .line 277
    invoke-interface {v1, p2, p3, p4, p5}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_41
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3f

    .line 283
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 284
    nop

    .line 285
    if-nez p2, :cond_35

    .line 286
    const/4 p1, 0x0

    return-object p1

    .line 290
    :cond_35
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p1

    .line 283
    :catchall_3f
    move-exception p2

    goto :goto_47

    .line 280
    :catch_41
    move-exception p2

    .line 281
    :try_start_42
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    .line 283
    :goto_47
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 284
    throw p2

    .line 292
    :cond_4d
    const-string/jumbo v0, "query: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 296
    :try_start_5f
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 298
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p5

    .line 296
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_69} :catch_74
    .catchall {:try_start_5f .. :try_end_69} :catchall_72

    .line 302
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 303
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 296
    return-object p2

    .line 302
    :catchall_72
    move-exception p2

    goto :goto_7a

    .line 299
    :catch_74
    move-exception p2

    .line 300
    :try_start_75
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_72

    .line 302
    :goto_7a
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 303
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 304
    throw p2
.end method

.method public blacklist refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 770
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 771
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 773
    const/4 p1, 0x0

    return p1

    .line 775
    :cond_12
    const-string/jumbo v0, "refresh: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 779
    :try_start_24
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 780
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p4

    .line 779
    invoke-interface {v0, p2, p3, p4}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result p2
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_37

    .line 782
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 783
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 779
    return p2

    .line 782
    :catchall_37
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 783
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 784
    throw p2
.end method

.method public blacklist uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8

    .line 732
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 733
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 734
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 735
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 737
    const/4 p1, 0x0

    return-object p1

    .line 739
    :cond_16
    const-string/jumbo v1, "uncanonicalize: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1, v2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 743
    :try_start_28
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v1, p2}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_3d
    .catchall {:try_start_28 .. :try_end_32} :catchall_3b

    .line 747
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 748
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 743
    return-object p2

    .line 747
    :catchall_3b
    move-exception p2

    goto :goto_43

    .line 744
    :catch_3d
    move-exception p2

    .line 745
    :try_start_3e
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 747
    :goto_43
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 748
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 749
    throw p2
.end method

.method public blacklist uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 755
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 757
    :try_start_5
    const-string/jumbo v1, "result"

    .line 758
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 757
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 762
    goto :goto_1b

    .line 759
    :catch_10
    move-exception p1

    .line 760
    new-instance p2, Landroid/os/ParcelableException;

    invoke-direct {p2, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 763
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 764
    return-void
.end method

.method public blacklist update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 9

    .line 568
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 569
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 570
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 572
    const/4 p1, 0x0

    return p1

    .line 574
    :cond_14
    const-string/jumbo v0, "update: "

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p1

    .line 578
    :try_start_26
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p2, p3, p4}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result p2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_37
    .catchall {:try_start_26 .. :try_end_2c} :catchall_35

    .line 582
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 583
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 578
    return p2

    .line 582
    :catchall_35
    move-exception p2

    goto :goto_3d

    .line 579
    :catch_37
    move-exception p2

    .line 580
    :try_start_38
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 582
    :goto_3d
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 583
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 584
    throw p2
.end method
