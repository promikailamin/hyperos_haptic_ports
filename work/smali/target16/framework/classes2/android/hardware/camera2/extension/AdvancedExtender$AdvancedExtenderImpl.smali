.class final Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;
.super Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;
.source "AdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/AdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdvancedExtenderImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/extension/AdvancedExtender;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/extension/AdvancedExtender;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 329
    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/extension/AdvancedExtender;Landroid/hardware/camera2/extension/AdvancedExtender-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;-><init>(Landroid/hardware/camera2/extension/AdvancedExtender;)V

    return-void
.end method


# virtual methods
.method public blacklist getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 9

    .line 394
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 395
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 398
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 399
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getMetadataVendorId(Ljava/lang/String;)J

    move-result-wide v2

    .line 400
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 401
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 402
    nop

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 404
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v5

    aput v5, p1, v4

    .line 405
    move v4, v6

    goto :goto_26

    .line 406
    :cond_40
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 408
    return-object v1

    .line 411
    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 9

    .line 416
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 417
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCaptureResultKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 420
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 421
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getMetadataVendorId(Ljava/lang/String;)J

    move-result-wide v2

    .line 422
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 423
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 424
    nop

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureResult$Key;

    .line 426
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v5

    aput v5, p1, v4

    .line 427
    move v4, v6

    goto :goto_26

    .line 428
    :cond_40
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 430
    return-object v1

    .line 433
    :cond_46
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 10

    .line 456
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 457
    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    .line 460
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 461
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v2}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 462
    iget-object v2, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v2}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_35

    :cond_30
    const-wide v2, 0x7fffffffffffffffL

    .line 463
    :goto_35
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setVendorId(J)V

    .line 464
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 465
    nop

    .line 466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 467
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTag(Ljava/lang/String;J)I

    move-result v6

    .line 468
    add-int/lit8 v7, v4, 0x1

    aput v6, p1, v4

    .line 469
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 470
    move v4, v7

    goto :goto_44

    .line 471
    :cond_6b
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 474
    return-object v1

    .line 477
    :cond_71
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;
    .registers 7

    .line 369
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    .line 370
    iget-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v1, Landroid/util/Size;

    iget v2, p2, Landroid/hardware/camera2/extension/Size;->width:I

    iget p2, p2, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v1, v2, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v1, p3}, Landroid/hardware/camera2/extension/AdvancedExtender;->getEstimatedCaptureLatencyRangeMillis(Landroid/util/Size;I)Landroid/util/Range;

    move-result-object p1

    .line 372
    if-nez p1, :cond_19

    .line 373
    return-object v0

    .line 376
    :cond_19
    new-instance p2, Landroid/hardware/camera2/extension/LatencyRange;

    invoke-direct {p2}, Landroid/hardware/camera2/extension/LatencyRange;-><init>()V

    .line 377
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p2, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    .line 378
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p2, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    .line 379
    return-object p2

    .line 381
    :cond_37
    return-object v0
.end method

.method public blacklist getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .registers 3

    .line 387
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSessionProcessor()Landroid/hardware/camera2/extension/SessionProcessor;

    move-result-object v0

    .line 388
    iget-object v1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-static {v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/AdvancedExtender;)Landroid/hardware/camera2/extension/CameraUsageTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/extension/SessionProcessor;->setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V

    .line 389
    invoke-virtual {v0}, Landroid/hardware/camera2/extension/SessionProcessor;->getSessionProcessorBinder()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 363
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 362
    invoke-static {p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/extension/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 346
    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/hardware/camera2/extension/Size;->width:I

    iget p1, p1, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    .line 347
    iget-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 348
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedPostviewOutputResolutions(Landroid/util/Size;)Ljava/util/Map;

    move-result-object p1

    .line 347
    invoke-static {p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 350
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    .line 357
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 356
    invoke-static {p1}, Landroid/hardware/camera2/extension/AdvancedExtender;->-$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist init(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)V"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v1, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->initialize(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)V

    .line 340
    return-void
.end method

.method public blacklist isCaptureProcessProgressAvailable()Z
    .registers 2

    .line 438
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 439
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->isCaptureProcessProgressAvailable()Z

    move-result v0

    return v0

    .line 441
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    new-instance v1, Landroid/hardware/camera2/extension/CharacteristicsMap;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/extension/CharacteristicsMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/extension/AdvancedExtender;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)Z

    move-result p1

    return p1
.end method

.method public blacklist isPostviewAvailable()Z
    .registers 2

    .line 447
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/camera/flags/Flags;->efvCaptureLatency()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 448
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;->this$0:Landroid/hardware/camera2/extension/AdvancedExtender;

    invoke-virtual {v0}, Landroid/hardware/camera2/extension/AdvancedExtender;->isPostviewAvailable()Z

    move-result v0

    return v0

    .line 450
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
