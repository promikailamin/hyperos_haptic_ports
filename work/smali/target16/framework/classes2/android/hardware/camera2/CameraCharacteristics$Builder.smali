.class public final Landroid/hardware/camera2/CameraCharacteristics$Builder;
.super Ljava/lang/Object;
.source "CameraCharacteristics.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 767
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 3

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 775
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 3

    .line 884
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v1, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-object v0
.end method

.method public whitelist set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Landroid/hardware/camera2/CameraCharacteristics$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Builder;"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 793
    return-object p0
.end method

.method public whitelist setAvailableCaptureRequestKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Builder;"
        }
    .end annotation

    .line 825
    nop

    .line 826
    if-eqz p1, :cond_24

    .line 827
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 828
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 829
    nop

    .line 830
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 826
    :cond_24
    const/4 v0, 0x0

    .line 833
    :cond_25
    iget-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 836
    return-object p0
.end method

.method public whitelist setAvailableCaptureResultKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Builder;"
        }
    .end annotation

    .line 845
    nop

    .line 846
    if-eqz p1, :cond_24

    .line 847
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 848
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 849
    nop

    .line 850
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 846
    :cond_24
    const/4 v0, 0x0

    .line 853
    :cond_25
    iget-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 856
    return-object p0
.end method

.method public whitelist setAvailableCharacteristicsKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "*>;>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Builder;"
        }
    .end annotation

    .line 805
    nop

    .line 806
    if-eqz p1, :cond_24

    .line 807
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 808
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 809
    nop

    .line 810
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 806
    :cond_24
    const/4 v0, 0x0

    .line 813
    :cond_25
    iget-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 816
    return-object p0
.end method

.method public whitelist setAvailableSessionKeys(Ljava/util/List;)Landroid/hardware/camera2/CameraCharacteristics$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;)",
            "Landroid/hardware/camera2/CameraCharacteristics$Builder;"
        }
    .end annotation

    .line 865
    nop

    .line 866
    if-eqz p1, :cond_23

    .line 867
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 868
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 869
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v2

    aput v2, v0, v1

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 866
    :cond_23
    const/4 v0, 0x0

    .line 872
    :cond_24
    iget-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$Builder;->mNativeMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_SESSION_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 874
    return-object p0
.end method
