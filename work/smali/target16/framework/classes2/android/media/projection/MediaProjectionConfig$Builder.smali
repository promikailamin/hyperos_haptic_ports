.class public final Landroid/media/projection/MediaProjectionConfig$Builder;
.super Ljava/lang/Object;
.source "MediaProjectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mInitialSelection:I

.field private blacklist mOptions:I

.field private blacklist mOwnAppContentProvided:Z

.field private blacklist mRequesterHint:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    .line 455
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->appContentSharing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 458
    return-void

    .line 456
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Flag FLAG_APP_CONTENT_SHARING disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/media/projection/MediaProjectionConfig;
    .registers 8

    .line 594
    new-instance v0, Landroid/media/projection/MediaProjectionConfig;

    iget v1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    iget-object v2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    iget v4, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mInitialSelection:I

    iget-boolean v5, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOwnAppContentProvided:Z

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/projection/MediaProjectionConfig;-><init>(ILjava/lang/String;IIZLandroid/media/projection/MediaProjectionConfig-IA;)V

    return-object v0
.end method

.method public blacklist setInitiallySelectedSource(I)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 6

    .line 469
    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget v3, v0, v2

    .line 470
    if-ne p1, v3, :cond_f

    .line 471
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mInitialSelection:I

    .line 472
    return-object p0

    .line 469
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 475
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {p1}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$smprojectionSourceToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 478
    const-string v1, "projectionSource is no a valid projection source. projectionSource must be one of %s but was %s"

    invoke-virtual {v1, p1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setOwnAppContentProvided(Landroid/content/Context;Z)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 6

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.projection.AppContentProjectionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 535
    const/high16 v2, 0x20000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 537
    if-eqz p1, :cond_1d

    .line 542
    iput-boolean p2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOwnAppContentProvided:Z

    .line 543
    return-object p0

    .line 538
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    .line 539
    const-string v0, "No service with an <intent-filter> defining action=%s found"

    invoke-virtual {v0, p2}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setRequesterHint(Ljava/lang/String;)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 2

    .line 562
    iput-object p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mRequesterHint:Ljava/lang/String;

    .line 563
    return-object p0
.end method

.method public blacklist setSourceEnabled(IZ)Landroid/media/projection/MediaProjectionConfig$Builder;
    .registers 4

    .line 578
    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetVALID_PROJECTION_SOURCES()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_14

    .line 585
    if-eqz p2, :cond_d

    iget p2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    or-int/2addr p1, p2

    goto :goto_11

    :cond_d
    iget p2, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_11
    iput p1, p0, Landroid/media/projection/MediaProjectionConfig$Builder;->mOptions:I

    .line 586
    return-object p0

    .line 579
    :cond_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$sfgetPROJECTION_SOURCES_STRING()[Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {p1}, Landroid/media/projection/MediaProjectionConfig;->-$$Nest$smprojectionSourceToString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 582
    const-string v0, "source is no a valid projection source. source must be any of %s but was %s"

    invoke-virtual {v0, p1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
