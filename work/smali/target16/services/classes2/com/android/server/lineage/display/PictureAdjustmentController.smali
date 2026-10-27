.class public Lcom/android/server/lineage/display/PictureAdjustmentController;
.super Lcom/android/server/lineage/display/LiveDisplayFeature;
.source "PictureAdjustmentController.java"


# instance fields
.field public final mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

.field public final mHasDisplayModes:Z

.field public mRanges:Ljava/util/List;

.field public final mUsePictureAdjustment:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/lineage/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 p2, 0x2000

    .line 51
    invoke-virtual {p1, p2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHasDisplayModes:Z

    const/high16 p2, 0x40000

    .line 53
    invoke-virtual {p1, p2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 55
    iget-object v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object p1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ge p1, v0, :cond_35

    :goto_33
    move p2, v1

    goto :goto_65

    .line 59
    :cond_35
    iget-object p1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 60
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3b

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3b

    goto :goto_33

    :cond_65
    :goto_65
    if-nez p2, :cond_6c

    .line 68
    iget-object p1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 70
    :cond_6c
    iput-boolean p2, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 106
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_b4

    .line 107
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 108
    const-string v0, "PictureAdjustmentController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  adjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  hueRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  saturationRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  intensityRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  contrastRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  saturationThresholdRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  defaultAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b4
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .registers 3

    .line 122
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    .line 123
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 125
    :cond_9
    iget-boolean p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    return p0
.end method

.method public getContrastRange()Landroid/util/Range;
    .registers 4

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 144
    iget-boolean v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1b

    .line 145
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_1b
    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 7

    .line 155
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_b

    .line 156
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-nez p0, :cond_19

    .line 159
    new-instance v0, Lcom/android/internal/lineage/hardware/HSIC;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    :cond_19
    return-object p0
.end method

.method public getHueRange()Landroid/util/Range;
    .registers 3

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 129
    iget-boolean v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 130
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_1b
    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getIntensityRange()Landroid/util/Range;
    .registers 4

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 139
    iget-boolean v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1b

    .line 140
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_1b
    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public final getPAForMode(I)Lcom/android/internal/lineage/hardware/HSIC;
    .registers 4

    .line 200
    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_11

    .line 202
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/lineage/hardware/HSIC;

    return-object p0

    .line 204
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 7

    .line 166
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_19

    .line 168
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v0, :cond_13

    .line 169
    iget-object v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 171
    iget v0, v0, Lcom/android/internal/lineage/hardware/DisplayMode;->id:I

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 174
    :goto_14
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getPAForMode(I)Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-nez p0, :cond_27

    .line 177
    new-instance v0, Lcom/android/internal/lineage/hardware/HSIC;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v0

    :cond_27
    return-object p0
.end method

.method public getSaturationRange()Landroid/util/Range;
    .registers 4

    const/4 v0, 0x0

    .line 135
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 135
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_1b
    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSaturationThresholdRange()Landroid/util/Range;
    .registers 4

    const/4 v0, 0x0

    .line 150
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 149
    iget-boolean v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1b

    .line 150
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0

    :cond_1b
    invoke-static {v0, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->updatePictureAdjustment()V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 75
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "display_picture_adjustment"

    .line 80
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->registerSettings([Landroid/net/Uri;)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->updatePictureAdjustment()V

    return-void
.end method

.method public final packPreference(Landroid/util/SparseArray;)V
    .registers 7

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 231
    :goto_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 232
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 233
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/lineage/hardware/HSIC;

    if-lez v1, :cond_1d

    .line 235
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/lineage/hardware/HSIC;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 239
    :cond_2f
    const-string p1, "display_picture_adjustment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setPAForMode(ILcom/android/internal/lineage/hardware/HSIC;)V
    .registers 4

    .line 208
    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->packPreference(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
    .registers 4

    .line 183
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 185
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v0, :cond_15

    .line 186
    iget-object v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 188
    iget v1, v0, Lcom/android/internal/lineage/hardware/DisplayMode;->id:I

    .line 191
    :cond_15
    invoke-virtual {p0, v1, p1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->setPAForMode(ILcom/android/internal/lineage/hardware/HSIC;)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public final unpackPreference()Landroid/util/SparseArray;
    .registers 8

    .line 214
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 216
    const-string v1, "display_picture_adjustment"

    invoke-virtual {p0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 218
    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 219
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_3b

    aget-object v4, p0, v3

    .line 220
    const-string v5, ":"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 221
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_38

    .line 222
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/android/internal/lineage/hardware/HSIC;->unflattenFrom(Ljava/lang/String;)Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_3b
    return-object v0
.end method

.method public final updatePictureAdjustment()V
    .registers 3

    .line 94
    iget-boolean v0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 95
    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 97
    iget-object p0, p0, Lcom/android/server/lineage/display/PictureAdjustmentController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p0

    if-nez p0, :cond_32

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set picture adjustment! "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/HSIC;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LiveDisplay-PAC"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method
