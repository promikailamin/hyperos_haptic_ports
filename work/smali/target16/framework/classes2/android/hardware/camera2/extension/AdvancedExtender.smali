.class public abstract Landroid/hardware/camera2/extension/AdvancedExtender;
.super Ljava/lang/Object;
.source "AdvancedExtender.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AdvancedExtender"


# instance fields
.field private final blacklist mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private blacklist mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

.field private blacklist mMetadataVendorIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraUsageTracker(Landroid/hardware/camera2/extension/AdvancedExtender;)Landroid/hardware/camera2/extension/CameraUsageTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetadataVendorIdMap(Landroid/hardware/camera2/extension/AdvancedExtender;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Ljava/util/Map;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/extension/AdvancedExtender;->initializeParcelable(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/CameraManager;)V
    .registers 10

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 75
    :try_start_c
    iget-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdListNoLazy()[Ljava/lang/String;

    move-result-object p1

    .line 76
    if-eqz p1, :cond_4d

    .line 77
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_4d

    aget-object v3, p1, v2

    .line 78
    iget-object v4, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 79
    const-class v5, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 80
    move-object v6, v5

    check-cast v6, Ljava/lang/Class;

    .line 82
    nop

    .line 83
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    .line 84
    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 85
    iget-object v5, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getVendorId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_4a} :catch_4e

    .line 77
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 91
    :cond_4d
    goto :goto_56

    .line 89
    :catch_4e
    move-exception p1

    .line 90
    const-string p1, "AdvancedExtender"

    const-string v0, "Failed to query camera characteristics!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_56
    return-void
.end method

.method private static blacklist initializeParcelable(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;"
        }
    .end annotation

    .line 487
    if-nez p0, :cond_4

    .line 488
    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 492
    new-instance v2, Landroid/hardware/camera2/extension/SizeList;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/SizeList;-><init>()V

    .line 493
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    .line 494
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    .line 495
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 496
    new-instance v4, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 498
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/Size;->width:I

    .line 499
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v4, Landroid/hardware/camera2/extension/Size;->height:I

    .line 500
    iget-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    goto :goto_43

    .line 502
    :cond_66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    goto :goto_15

    .line 505
    :cond_6a
    return-object v0
.end method


# virtual methods
.method blacklist getAdvancedExtenderBinder()Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 3

    .line 482
    new-instance v0, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/extension/AdvancedExtender$AdvancedExtenderImpl;-><init>(Landroid/hardware/camera2/extension/AdvancedExtender;Landroid/hardware/camera2/extension/AdvancedExtender-IA;)V

    return-object v0
.end method

.method public abstract whitelist getAvailableCaptureRequestKeys(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAvailableCaptureResultKeys(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public blacklist getEstimatedCaptureLatencyRangeMillis(Landroid/util/Size;I)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Subclasses must override this method"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getMetadataVendorId(Ljava/lang/String;)J
    .registers 4

    .line 107
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mMetadataVendorIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1a

    :cond_15
    const-wide v0, 0x7fffffffffffffffL

    .line 109
    :goto_1a
    return-wide v0
.end method

.method public abstract whitelist getSessionProcessor()Landroid/hardware/camera2/extension/SessionProcessor;
.end method

.method public abstract whitelist getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public blacklist getSupportedPostviewOutputResolutions(Landroid/util/Size;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Subclasses must override this method"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract whitelist getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract whitelist initialize(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)V
.end method

.method public blacklist isCaptureProcessProgressAvailable()Z
    .registers 3

    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclasses must override this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/extension/CharacteristicsMap;)Z
.end method

.method public blacklist isPostviewAvailable()Z
    .registers 3

    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclasses must override this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setCameraUsageTracker(Landroid/hardware/camera2/extension/CameraUsageTracker;)V
    .registers 2

    .line 95
    iput-object p1, p0, Landroid/hardware/camera2/extension/AdvancedExtender;->mCameraUsageTracker:Landroid/hardware/camera2/extension/CameraUsageTracker;

    .line 96
    return-void
.end method
