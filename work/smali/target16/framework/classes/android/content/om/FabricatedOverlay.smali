.class public Landroid/content/om/FabricatedOverlay;
.super Ljava/lang/Object;
.source "FabricatedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/FabricatedOverlay$StringTypeOverlayResource;,
        Landroid/content/om/FabricatedOverlay$Builder;
    }
.end annotation


# instance fields
.field final blacklist mOverlay:Landroid/os/FabricatedOverlayInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/FabricatedOverlayInternal;)V
    .registers 2

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    .line 354
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 364
    nop

    .line 366
    invoke-static {p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    const-string v0, "\'targetPackage\' must not be empty nor null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    .line 371
    return-void
.end method

.method private static blacklist ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 451
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 453
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 456
    if-ltz v0, :cond_19

    if-eqz v1, :cond_19

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    const-string v1, "\"%s\" is invalid resource name"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 462
    return-object p0
.end method

.method private static blacklist generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;)",
            "Landroid/os/FabricatedOverlayInternal;"
        }
    .end annotation

    .line 336
    new-instance v0, Landroid/os/FabricatedOverlayInternal;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternal;-><init>()V

    .line 337
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    .line 338
    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    .line 339
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    .line 340
    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    .line 341
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 342
    iget-object p0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;FILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 7

    .line 528
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 529
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 530
    const/4 p0, 0x5

    iput p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 531
    const/4 v1, 0x0

    const-string v2, "dimensionUnit"

    invoke-static {p2, v1, p0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 533
    invoke-static {p1, p2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result p0

    iput p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 534
    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 535
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;FLjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 4

    .line 541
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 542
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 543
    const/4 p0, 0x4

    iput p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 544
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    iput p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 545
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 546
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 7

    .line 470
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 471
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 472
    nop

    .line 473
    const/16 p0, 0x10

    const/16 v1, 0x1f

    const-string v2, "dataType"

    invoke-static {p1, p0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 478
    iput p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 479
    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 480
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 7

    .line 487
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 488
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 489
    nop

    .line 490
    const/4 p0, 0x3

    const/4 v1, 0x6

    const-string v2, "dataType"

    invoke-static {p1, p0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 492
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->stringData:Ljava/lang/String;

    .line 493
    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 494
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 6

    .line 515
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 516
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    .line 518
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    .line 519
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide p0

    iput-wide p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    .line 520
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 521
    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;
    .registers 7

    .line 501
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 502
    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    .line 504
    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    .line 505
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    .line 506
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide p0

    iput-wide p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    .line 507
    iput-boolean p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->isNinePatch:Z

    .line 508
    return-object v0
.end method

.method static synthetic blacklist lambda$getEntries$0(Ljava/util/Set;Landroid/os/FabricatedOverlayInternalEntry;)Z
    .registers 2

    .line 440
    iget p1, p1, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs blacklist getEntries([I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    array-length v0, p1

    if-nez v0, :cond_c

    goto :goto_3d

    .line 435
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 436
    array-length v1, p1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget v3, p1, v2

    .line 437
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 439
    :cond_21
    iget-object p1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object p1, p1, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Landroid/content/om/FabricatedOverlay$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/content/om/FabricatedOverlay$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 440
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 441
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 439
    return-object p1

    .line 433
    :cond_3d
    :goto_3d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getIdentifier()Landroid/content/om/OverlayIdentifier;
    .registers 4

    .line 97
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v1, v1, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public blacklist getInternal()Landroid/os/FabricatedOverlayInternal;
    .registers 2

    .line 417
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    return-object v0
.end method

.method public blacklist getTargetOverlayable()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setNinePatchResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 6

    .line 635
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 636
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 637
    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    .line 636
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method

.method public blacklist setOwningPackage(Ljava/lang/String;)V
    .registers 3

    .line 380
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;FILjava/lang/String;)V
    .registers 6

    .line 688
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 689
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;FILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;FLjava/lang/String;)V
    .registers 5

    .line 715
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;FLjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 566
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 567
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 597
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 598
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .registers 5

    .line 655
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 656
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 657
    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    .line 656
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 6

    .line 616
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 617
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 618
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    .line 617
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method public whitelist setTargetOverlayable(Ljava/lang/String;)V
    .registers 3

    .line 392
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    .line 393
    return-void
.end method
