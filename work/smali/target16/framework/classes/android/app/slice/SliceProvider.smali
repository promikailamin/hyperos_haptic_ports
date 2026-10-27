.class public abstract Landroid/app/slice/SliceProvider;
.super Landroid/content/ContentProvider;
.source "SliceProvider.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o EXTRA_BIND_URI:Ljava/lang/String; = "slice_uri"

.field public static final greylist-max-o EXTRA_INTENT:Ljava/lang/String; = "slice_intent"

.field public static final greylist-max-o EXTRA_PKG:Ljava/lang/String; = "pkg"

.field public static final greylist-max-o EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final greylist-max-o EXTRA_SLICE:Ljava/lang/String; = "slice"

.field public static final greylist-max-o EXTRA_SLICE_DESCENDANTS:Ljava/lang/String; = "slice_descendants"

.field public static final greylist-max-o EXTRA_SUPPORTED_SPECS:Ljava/lang/String; = "supported_specs"

.field public static final greylist-max-o METHOD_GET_DESCENDANTS:Ljava/lang/String; = "get_descendants"

.field public static final greylist-max-o METHOD_GET_PERMISSIONS:Ljava/lang/String; = "get_permissions"

.field public static final greylist-max-o METHOD_MAP_INTENT:Ljava/lang/String; = "map_slice"

.field public static final greylist-max-o METHOD_MAP_ONLY_INTENT:Ljava/lang/String; = "map_only"

.field public static final greylist-max-o METHOD_PIN:Ljava/lang/String; = "pin"

.field public static final greylist-max-o METHOD_SLICE:Ljava/lang/String; = "bind_slice"

.field public static final greylist-max-o METHOD_UNPIN:Ljava/lang/String; = "unpin"

.field public static final whitelist SLICE_TYPE:Ljava/lang/String; = "vnd.android.slice"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceProvider"


# instance fields
.field private final greylist-max-o mAutoGrantPermissions:[Ljava/lang/String;

.field private greylist-max-o mSliceManager:Landroid/app/slice/SliceManager;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 187
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 188
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 189
    return-void
.end method

.method public varargs constructor whitelist <init>([Ljava/lang/String;)V
    .registers 2

    .line 183
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 184
    iput-object p1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 185
    return-void
.end method

.method public static blacklist createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.REQUEST_SLICE_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040303

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 483
    const-string/jumbo p0, "slice_uri"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 484
    const-string/jumbo p0, "pkg"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo p1, "package"

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 487
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 486
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 488
    return-object v0
.end method

.method public static blacklist createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 4

    .line 470
    nop

    .line 471
    invoke-static {p0, p1, p2}, Landroid/app/slice/SliceProvider;->createPermissionIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 470
    const/4 p2, 0x0

    const/high16 v0, 0x4000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 497
    nop

    .line 499
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 497
    const v0, 0x1040a2b

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_21} :catch_22

    return-object p0

    .line 501
    :catch_22
    move-exception p0

    .line 503
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown calling app"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private greylist-max-o handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 421
    if-eqz p3, :cond_3

    goto :goto_f

    .line 422
    :cond_3
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p3

    :goto_f
    nop

    .line 424
    :try_start_10
    iget-object v0, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {v0, p1, p5, p4, v1}, Landroid/app/slice/SliceManager;->enforceSlicePermission(Landroid/net/Uri;II[Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_17} :catch_1d

    .line 428
    nop

    .line 429
    invoke-direct {p0, p1, p2}, Landroid/app/slice/SliceProvider;->onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;

    move-result-object p1

    return-object p1

    .line 426
    :catch_1d
    move-exception p2

    .line 427
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Landroid/app/slice/SliceProvider;->createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o onBindSliceStrict(Landroid/net/Uri;Ljava/util/List;)Landroid/app/slice/Slice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 508
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 510
    :try_start_4
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 511
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 510
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 515
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/slice/SliceProvider;->onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    .line 517
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 515
    return-object p1

    .line 517
    :catchall_29
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 518
    throw p1
.end method

.method private blacklist validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 414
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_8
    return-object p1
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 3

    .line 193
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 194
    const-class p2, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/slice/SliceManager;

    iput-object p1, p0, Landroid/app/slice/SliceProvider;->mSliceManager:Landroid/app/slice/SliceManager;

    .line 195
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    .line 347
    const-string v0, "bind_slice"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "supported_specs"

    const-string/jumbo v2, "slice"

    const-string/jumbo v3, "slice_uri"

    if-eqz v0, :cond_41

    .line 348
    const-class p1, Landroid/net/Uri;

    .line 349
    invoke-virtual {p3, v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 348
    invoke-direct {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 350
    const-class p1, Landroid/app/slice/SliceSpec;

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    .line 352
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 356
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object p1

    .line 357
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 358
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 359
    return-object p2

    .line 360
    :cond_41
    move-object v0, v3

    move-object v3, p0

    const-string/jumbo v4, "map_slice"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "slice_intent"

    const/4 v6, 0x0

    if-eqz v4, :cond_88

    .line 361
    const-class p1, Landroid/content/Intent;

    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 362
    if-nez p1, :cond_5b

    return-object v6

    .line 363
    :cond_5b
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 364
    const-class p1, Landroid/app/slice/SliceSpec;

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    .line 365
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 366
    if-eqz v4, :cond_84

    .line 367
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 367
    invoke-direct/range {v3 .. v8}, Landroid/app/slice/SliceProvider;->handleBindSlice(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;II)Landroid/app/slice/Slice;

    move-result-object p2

    .line 369
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    goto :goto_87

    .line 371
    :cond_84
    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    :goto_87
    return-object p1

    .line 374
    :cond_88
    const-string/jumbo v1, "map_only"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 375
    const-class p1, Landroid/content/Intent;

    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 376
    if-nez p1, :cond_9c

    return-object v6

    .line 377
    :cond_9c
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 378
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 379
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    return-object p2

    .line 381
    :cond_ad
    const-string/jumbo v1, "pin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Only the system can pin/unpin slices"

    const/16 v4, 0x3e8

    if-eqz v1, :cond_db

    .line 382
    const-class v1, Landroid/net/Uri;

    .line 383
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 382
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v4, :cond_d5

    .line 387
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onSlicePinned(Landroid/net/Uri;)V

    .line 388
    goto/16 :goto_155

    .line 385
    :cond_d5
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_db
    const-string/jumbo v1, "unpin"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104

    .line 389
    const-class v1, Landroid/net/Uri;

    .line 390
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 389
    invoke-direct {p0, v0}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v1, v4, :cond_fe

    .line 394
    invoke-virtual {p0, v0}, Landroid/app/slice/SliceProvider;->onSliceUnpinned(Landroid/net/Uri;)V

    .line 395
    goto :goto_155

    .line 392
    :cond_fe
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_104
    const-string v1, "get_descendants"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 396
    const-class p1, Landroid/net/Uri;

    .line 397
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Landroid/app/slice/SliceProvider;->validateIncomingUriOrNull(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 396
    invoke-static {p1}, Landroid/app/slice/SliceProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 398
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 399
    new-instance p3, Ljava/util/ArrayList;

    .line 400
    invoke-virtual {p0, p1}, Landroid/app/slice/SliceProvider;->onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    const-string/jumbo p1, "slice_descendants"

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 401
    return-object p2

    .line 402
    :cond_131
    const-string v0, "get_permissions"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, v4, :cond_14d

    .line 406
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 407
    const-string/jumbo p2, "result"

    iget-object p3, v3, Landroid/app/slice/SliceProvider;->mAutoGrantPermissions:[Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 408
    return-object p1

    .line 404
    :cond_14d
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only the system can get permissions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_155
    :goto_155
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o createPermissionSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/slice/Slice;
    .registers 11

    .line 437
    invoke-virtual {p0, p2}, Landroid/app/slice/SliceProvider;->onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 438
    new-instance v1, Landroid/app/slice/Slice$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 439
    new-instance v3, Landroid/app/slice/Slice$Builder;

    invoke-direct {v3, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 440
    const v4, 0x10805c2

    invoke-static {p1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 442
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 440
    invoke-virtual {v3, v4, v2, v5}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "shortcut"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/slice/Slice$Builder;

    invoke-direct {v4, v1}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    .line 444
    invoke-virtual {v4}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 446
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 447
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v5, 0x103012b

    invoke-direct {v4, p1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 448
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 449
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 451
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo v4, "permission"

    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 452
    new-instance v4, Landroid/app/slice/Slice$Builder;

    invoke-direct {v4, p2, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 453
    const p2, 0x10803bb

    invoke-static {p1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    .line 455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 453
    invoke-virtual {v4, p2, v2, v5}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object p2

    .line 456
    invoke-static {p1, p3}, Landroid/app/slice/SliceProvider;->getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 456
    invoke-virtual {p2, p1, v2, p3}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object p1

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 458
    const-string p3, "color"

    invoke-virtual {p1, v3, p3, p2}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object p1

    .line 460
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 462
    const-string/jumbo p1, "permission_request"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 309
    const/4 p1, 0x0

    return p1
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 342
    const-string/jumbo p1, "vnd.android.slice"

    return-object p1
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 336
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onBindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Landroid/app/slice/Slice;"
        }
    .end annotation

    .line 215
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreatePermissionRequest(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .registers 4

    .line 296
    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/slice/SliceProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/slice/SliceProvider;->createPermissionPendingIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3

    .line 278
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This provider has not implemented intent to uri mapping"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist onSlicePinned(Landroid/net/Uri;)V
    .registers 2

    .line 237
    return-void
.end method

.method public whitelist onSliceUnpinned(Landroid/net/Uri;)V
    .registers 2

    .line 248
    return-void
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 5

    .line 330
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 316
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 7

    .line 323
    const/4 p1, 0x0

    return-object p1
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 303
    const/4 p1, 0x0

    return p1
.end method
