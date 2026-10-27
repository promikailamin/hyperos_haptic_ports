.class public final Landroid/hardware/camera2/TotalCaptureResult;
.super Landroid/hardware/camera2/CaptureResult;
.source "TotalCaptureResult.java"


# instance fields
.field private final greylist-max-o mPartialResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPhysicalCaptureResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSessionId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V
    .registers 3

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 138
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 139
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "IJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    .line 108
    if-nez v1, :cond_13

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_15

    .line 111
    :cond_13
    iput-object v1, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 114
    :goto_15
    move/from16 v11, p8

    iput v11, v0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 117
    array-length v1, v2

    const/4 v13, 0x0

    move v14, v13

    :goto_23
    if-ge v14, v1, :cond_4b

    aget-object v15, v2, v14

    .line 118
    new-instance v3, Landroid/hardware/camera2/TotalCaptureResult;

    .line 119
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v15}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    const/4 v10, 0x0

    new-array v12, v13, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v12}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 123
    iget-object v4, v0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, p8

    goto :goto_23

    .line 126
    :cond_4b
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/impl/CaptureResultExtras;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;I[",
            "Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;",
            ")V"
        }
    .end annotation

    .line 76
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p4}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 78
    if-nez v0, :cond_11

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    goto :goto_13

    .line 81
    :cond_11
    iput-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    .line 84
    :goto_13
    move/from16 v8, p6

    iput v8, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    .line 86
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    .line 87
    array-length p1, v1

    const/4 p2, 0x0

    move v0, p2

    :goto_21
    if-ge v0, p1, :cond_45

    aget-object v10, v1, v0

    .line 88
    new-instance v2, Landroid/hardware/camera2/TotalCaptureResult;

    .line 89
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    const/4 v7, 0x0

    new-array v9, p2, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v9}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 92
    iget-object v3, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p6

    goto :goto_21

    .line 95
    :cond_45
    return-void
.end method


# virtual methods
.method public whitelist getPartialResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPartialResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraResults()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhysicalCameraTotalResults()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mPhysicalCaptureResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSessionId()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/hardware/camera2/TotalCaptureResult;->mSessionId:I

    return v0
.end method
