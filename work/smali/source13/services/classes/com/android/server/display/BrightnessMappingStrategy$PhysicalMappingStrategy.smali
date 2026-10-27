.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private final mBrightness:[F

.field private mBrightnessRangeAdjustmentApplied:Z

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mBrightnessToNitsSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mIsForIdleMode:Z

.field private final mMaxGamma:F

.field private final mNits:[F

.field private mNitsToBrightnessSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFZLcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V
    .registers 11
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"    # [F
    .param p3, "brightness"    # [F
    .param p4, "maxGamma"    # F
    .param p5, "isForIdleMode"    # Z
    .param p6, "displayWhiteBalanceController"    # Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 834
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 836
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    array-length v0, p3

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Nits and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 839
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    const-string v0, "Nits and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 841
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const-string/jumbo v2, "nits"

    invoke-static {p2, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 843
    const/high16 v0, 0x3f800000    # 1.0f

    const-string v2, "brightness"

    invoke-static {p3, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 846
    iput-boolean p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mIsForIdleMode:Z

    .line 847
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 848
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 849
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 850
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 851
    iput-object p6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 853
    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNits:[F

    .line 854
    iput-object p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    .line 855
    invoke-direct {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeNitsBrightnessSplines([F)V

    .line 857
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategyStub;->getInstance()Lcom/android/server/display/BrightnessMappingStrategyStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/display/BrightnessMappingStrategyStub;->initMiuiCurve(Landroid/hardware/display/BrightnessConfiguration;Landroid/util/Spline;Landroid/util/Spline;)V

    .line 859
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 860
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_62

    .line 861
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string/jumbo v1, "physical mapping strategy"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 863
    :cond_62
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 864
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 865
    return-void
.end method

.method private computeNitsBrightnessSplines([F)V
    .registers 3
    .param p1, "nits"    # [F

    .line 1166
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1167
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {v0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    .line 1169
    return-void
.end method

.method private computeSpline()V
    .registers 12

    .line 1172
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1173
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1174
    .local v1, "defaultLux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, [F

    .line 1175
    .local v9, "defaultNits":[F
    array-length v2, v9

    new-array v10, v2, [F

    .line 1176
    .local v10, "defaultBrightness":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v3, v10

    if-ge v2, v3, :cond_23

    .line 1177
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    aget v4, v9, v2

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aput v3, v10, v2

    .line 1176
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1179
    .end local v2    # "i":I
    :cond_23
    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    move-object v2, p0

    move-object v3, v1

    move-object v4, v10

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v2

    .line 1181
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 1182
    .local v3, "lux":[F
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    .line 1183
    .local v4, "brightness":[F
    array-length v5, v4

    new-array v5, v5, [F

    .line 1184
    .local v5, "nits":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3e
    array-length v7, v5

    if-ge v6, v7, :cond_4e

    .line 1185
    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    aput v7, v5, v6

    .line 1184
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 1187
    .end local v6    # "i":I
    :cond_4e
    invoke-static {v3, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 1188
    return-void
.end method

.method private correctBrightness(FLjava/lang/String;I)F
    .registers 6
    .param p1, "brightness"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 1197
    if-eqz p2, :cond_f

    .line 1198
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 1199
    .local v0, "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_f

    .line 1200
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 1203
    .end local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_f
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1f

    .line 1204
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 1205
    .restart local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_1f

    .line 1206
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 1209
    .end local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_1f
    return p1
.end method

.method private dumpConfigDiff(Ljava/io/PrintWriter;F)V
    .registers 43
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "hbmTransition"    # F

    .line 1053
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "  Difference between current config and default: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    iget-object v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v2

    .line 1056
    .local v2, "currentCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v3, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1058
    .local v3, "currSpline":Landroid/util/Spline;
    iget-object v4, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v4}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v4

    .line 1059
    .local v4, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v5

    .line 1062
    .local v5, "defaultSpline":Landroid/util/Spline;
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [F

    .line 1063
    .local v6, "luxes":[F
    iget v7, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    const/4 v8, 0x1

    if-ltz v7, :cond_50

    .line 1064
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [F

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [F

    array-length v9, v9

    add-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    .line 1065
    array-length v7, v6

    sub-int/2addr v7, v8

    iget v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    aput v9, v6, v7

    .line 1066
    invoke-static {v6}, Ljava/util/Arrays;->sort([F)V

    .line 1069
    :cond_50
    const/4 v7, 0x0

    .line 1070
    .local v7, "sbLux":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 1071
    .local v9, "sbNits":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 1072
    .local v10, "sbLong":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1073
    .local v11, "sbShort":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 1074
    .local v12, "sbBrightness":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 1075
    .local v13, "sbPercent":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 1076
    .local v14, "sbPercentHbm":Ljava/lang/StringBuilder;
    const/4 v15, 0x1

    .line 1077
    .local v15, "needsHeaders":Z
    const-string v16, ""

    .line 1078
    .local v16, "separator":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v8, v16

    move/from16 v39, v17

    move-object/from16 v17, v2

    move/from16 v2, v39

    .end local v16    # "separator":Ljava/lang/String;
    .local v2, "i":I
    .local v8, "separator":Ljava/lang/String;
    .local v17, "currentCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :goto_64
    move-object/from16 v18, v4

    .end local v4    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .local v18, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    array-length v4, v6

    if-ge v2, v4, :cond_257

    .line 1079
    aget v4, v6, v2

    .line 1080
    .local v4, "lux":F
    if-eqz v15, :cond_b3

    .line 1081
    move-object/from16 v19, v7

    .end local v7    # "sbLux":Ljava/lang/StringBuilder;
    .local v19, "sbLux":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v20, v9

    .end local v9    # "sbNits":Ljava/lang/StringBuilder;
    .local v20, "sbNits":Ljava/lang/StringBuilder;
    const-string v9, "            lux: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1082
    .end local v19    # "sbLux":Ljava/lang/StringBuilder;
    .restart local v7    # "sbLux":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v19, v7

    .end local v7    # "sbLux":Ljava/lang/StringBuilder;
    .restart local v19    # "sbLux":Ljava/lang/StringBuilder;
    const-string v7, "        default: "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 1083
    .end local v20    # "sbNits":Ljava/lang/StringBuilder;
    .local v7, "sbNits":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v20, v7

    .end local v7    # "sbNits":Ljava/lang/StringBuilder;
    .restart local v20    # "sbNits":Ljava/lang/StringBuilder;
    const-string v7, "      long-term: "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 1084
    .end local v10    # "sbLong":Ljava/lang/StringBuilder;
    .local v7, "sbLong":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "        current: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    .end local v11    # "sbShort":Ljava/lang/StringBuilder;
    .local v9, "sbShort":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "    current(bl): "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1086
    .end local v12    # "sbBrightness":Ljava/lang/StringBuilder;
    .local v10, "sbBrightness":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "     current(%): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    .end local v13    # "sbPercent":Ljava/lang/StringBuilder;
    .local v11, "sbPercent":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "  current(hbm%): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    .end local v14    # "sbPercentHbm":Ljava/lang/StringBuilder;
    .local v12, "sbPercentHbm":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    move-object v13, v11

    move-object v14, v12

    move-object v11, v9

    move-object v12, v10

    move-object/from16 v9, v20

    move-object v10, v7

    move-object/from16 v7, v19

    goto :goto_b7

    .line 1080
    .end local v19    # "sbLux":Ljava/lang/StringBuilder;
    .end local v20    # "sbNits":Ljava/lang/StringBuilder;
    .local v7, "sbLux":Ljava/lang/StringBuilder;
    .local v9, "sbNits":Ljava/lang/StringBuilder;
    .local v10, "sbLong":Ljava/lang/StringBuilder;
    .local v11, "sbShort":Ljava/lang/StringBuilder;
    .local v12, "sbBrightness":Ljava/lang/StringBuilder;
    .restart local v13    # "sbPercent":Ljava/lang/StringBuilder;
    .restart local v14    # "sbPercentHbm":Ljava/lang/StringBuilder;
    :cond_b3
    move-object/from16 v19, v7

    move-object/from16 v20, v9

    .line 1091
    :goto_b7
    move/from16 v19, v15

    .end local v15    # "needsHeaders":Z
    .local v19, "needsHeaders":Z
    invoke-virtual {v5, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v15

    .line 1092
    .local v15, "defaultNits":F
    move-object/from16 v21, v5

    .end local v5    # "defaultSpline":Landroid/util/Spline;
    .local v21, "defaultSpline":Landroid/util/Spline;
    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 1093
    .local v5, "longTermNits":F
    move-object/from16 v22, v3

    .end local v3    # "currSpline":Landroid/util/Spline;
    .local v22, "currSpline":Landroid/util/Spline;
    iget-object v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 1094
    .local v3, "shortTermNits":F
    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1096
    .local v1, "brightness":F
    move/from16 v23, v2

    .end local v2    # "i":I
    .local v23, "i":I
    iget v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    cmpl-float v2, v4, v2

    move-object/from16 v24, v6

    .end local v6    # "luxes":[F
    .local v24, "luxes":[F
    const-string v6, ""

    if-nez v2, :cond_e0

    const-string v2, "^"

    goto :goto_e1

    :cond_e0
    move-object v2, v6

    .line 1097
    .local v2, "luxPrefix":Ljava/lang/String;
    :goto_e1
    move-object/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v25, v2

    .end local v2    # "luxPrefix":Ljava/lang/String;
    .local v25, "luxPrefix":Ljava/lang/String;
    invoke-direct {v0, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, "strLux":Ljava/lang/String;
    invoke-direct {v0, v15}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v6

    .line 1099
    .local v6, "strNits":Ljava/lang/String;
    invoke-direct {v0, v5}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v26

    .line 1100
    .local v26, "strLong":Ljava/lang/String;
    invoke-direct {v0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v27

    .line 1101
    .local v27, "strShort":Ljava/lang/String;
    invoke-direct {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v28

    .line 1103
    .local v28, "strBrightness":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/MiuiBrightnessUtilsStub;->getInstance()Lcom/android/server/display/MiuiBrightnessUtilsStub;

    move-result-object v0

    move/from16 v29, v3

    .end local v3    # "shortTermNits":F
    .local v29, "shortTermNits":F
    div-float v3, v1, p2

    invoke-virtual {v0, v3}, Lcom/android/server/display/MiuiBrightnessUtilsStub;->convertLinearToGamma(F)F

    move-result v0

    .line 1104
    .local v0, "percent":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_123

    div-float v3, v1, p2

    invoke-static {v3}, Lcom/android/server/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v3

    goto :goto_124

    :cond_123
    move v3, v0

    :goto_124
    move v0, v3

    .line 1106
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v30, v0, v3

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    .line 1108
    .local v30, "strPercent":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/MiuiBrightnessUtilsStub;->getInstance()Lcom/android/server/display/MiuiBrightnessUtilsStub;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/display/MiuiBrightnessUtilsStub;->convertLinearToGamma(F)F

    move-result v3

    .line 1109
    .local v3, "percentHbm":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v32

    if-eqz v32, :cond_144

    invoke-static {v1}, Lcom/android/server/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v32

    goto :goto_146

    :cond_144
    move/from16 v32, v3

    :goto_146
    move/from16 v3, v32

    .line 1111
    const/high16 v31, 0x42c80000    # 100.0f

    mul-float v31, v31, v3

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->round(F)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    .line 1113
    .local v31, "strPercentHbm":Ljava/lang/String;
    move/from16 v32, v0

    .end local v0    # "percent":F
    .local v32, "percent":F
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1114
    move/from16 v33, v1

    .end local v1    # "brightness":F
    .local v33, "brightness":F
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 1115
    move/from16 v34, v3

    .end local v3    # "percentHbm":F
    .local v34, "percentHbm":F
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    .line 1116
    move/from16 v35, v4

    .end local v4    # "lux":F
    .local v35, "lux":F
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    .line 1117
    move/from16 v36, v5

    .end local v5    # "longTermNits":F
    .local v36, "longTermNits":F
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    .line 1118
    move/from16 v37, v15

    .end local v15    # "defaultNits":F
    .local v37, "defaultNits":F
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v38, v14

    .end local v14    # "sbPercentHbm":Ljava/lang/StringBuilder;
    .local v38, "sbPercentHbm":Ljava/lang/StringBuilder;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1117
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1116
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1115
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1114
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1113
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1119
    .local v0, "maxLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    .local v1, "format":Ljava/lang/String;
    const-string v3, ", "

    .line 1122
    .end local v8    # "separator":Ljava/lang/String;
    .local v3, "separator":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v26, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v27, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v28, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v30, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v31, v5, v8

    invoke-static {v1, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, v38

    .end local v38    # "sbPercentHbm":Ljava/lang/StringBuilder;
    .restart local v14    # "sbPercentHbm":Ljava/lang/StringBuilder;
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v8, 0x50

    if-gt v5, v8, :cond_21b

    move-object/from16 v5, v24

    .end local v24    # "luxes":[F
    .local v5, "luxes":[F
    array-length v8, v5

    sub-int/2addr v8, v4

    move/from16 v15, v23

    .end local v23    # "i":I
    .local v15, "i":I
    if-ne v15, v8, :cond_218

    goto :goto_21f

    :cond_218
    move-object/from16 v8, p1

    goto :goto_246

    .end local v5    # "luxes":[F
    .end local v15    # "i":I
    .restart local v23    # "i":I
    .restart local v24    # "luxes":[F
    :cond_21b
    move/from16 v15, v23

    move-object/from16 v5, v24

    .line 1132
    .end local v23    # "i":I
    .end local v24    # "luxes":[F
    .restart local v5    # "luxes":[F
    .restart local v15    # "i":I
    :goto_21f
    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1133
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1134
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1135
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {v8, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1137
    invoke-virtual {v8, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1138
    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v16, p2, v16

    if-gez v16, :cond_23c

    .line 1139
    invoke-virtual {v8, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1141
    :cond_23c
    move-object/from16 v4, v20

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    const/4 v4, 0x1

    .line 1143
    .end local v19    # "needsHeaders":Z
    .local v4, "needsHeaders":Z
    const-string v3, ""

    move/from16 v19, v4

    .line 1078
    .end local v0    # "maxLen":I
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "strLux":Ljava/lang/String;
    .end local v4    # "needsHeaders":Z
    .end local v6    # "strNits":Ljava/lang/String;
    .end local v25    # "luxPrefix":Ljava/lang/String;
    .end local v26    # "strLong":Ljava/lang/String;
    .end local v27    # "strShort":Ljava/lang/String;
    .end local v28    # "strBrightness":Ljava/lang/String;
    .end local v29    # "shortTermNits":F
    .end local v30    # "strPercent":Ljava/lang/String;
    .end local v31    # "strPercentHbm":Ljava/lang/String;
    .end local v32    # "percent":F
    .end local v33    # "brightness":F
    .end local v34    # "percentHbm":F
    .end local v35    # "lux":F
    .end local v36    # "longTermNits":F
    .end local v37    # "defaultNits":F
    .restart local v19    # "needsHeaders":Z
    :goto_246
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p0

    move-object v6, v5

    move-object v1, v8

    move-object/from16 v4, v18

    move/from16 v15, v19

    move-object/from16 v5, v21

    move-object v8, v3

    move-object/from16 v3, v22

    .end local v15    # "i":I
    .local v2, "i":I
    goto/16 :goto_64

    .line 1146
    .end local v2    # "i":I
    .end local v19    # "needsHeaders":Z
    .end local v21    # "defaultSpline":Landroid/util/Spline;
    .end local v22    # "currSpline":Landroid/util/Spline;
    .local v3, "currSpline":Landroid/util/Spline;
    .local v5, "defaultSpline":Landroid/util/Spline;
    .local v6, "luxes":[F
    .restart local v8    # "separator":Ljava/lang/String;
    .local v15, "needsHeaders":Z
    :cond_257
    return-void
.end method

.method private getUnadjustedBrightness(F)F
    .registers 6
    .param p1, "lux"    # F

    .line 1191
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1192
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 1193
    .local v1, "spline":Landroid/util/Spline;
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method

.method private toStrFloatForDump(F)Ljava/lang/String;
    .registers 6
    .param p1, "value"    # F

    .line 1149
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 1150
    const-string v0, "0"

    return-object v0

    .line 1151
    :cond_8
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_22

    .line 1152
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.3f"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1153
    :cond_22
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_39

    .line 1154
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2f"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_39
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_50

    .line 1156
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.1f"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1158
    :cond_50
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 946
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 948
    .local v0, "unadjustedBrightness":F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategyStub;->getInstance()Lcom/android/server/display/BrightnessMappingStrategyStub;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategyStub;->updateUnadjustedBrightness(FFF)V

    .line 950
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_4d

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 953
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 954
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 956
    :cond_4d
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 959
    .local v1, "adjustment":F
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_79

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_79
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 964
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 965
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 966
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 967
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 6

    .line 971
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4a

    .line 972
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_40

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 975
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 977
    :cond_40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 978
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 979
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 980
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 982
    :cond_4a
    return-void
.end method

.method public convertToBrightness(F)F
    .registers 3
    .param p1, "nit"    # F

    .line 1018
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public convertToNits(F)F
    .registers 3
    .param p1, "brightness"    # F

    .line 941
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "hbmTransition"    # F

    .line 1024
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessToNitsSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRangeAdjustmentApplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->dumpConfigDiff(Ljava/io/PrintWriter;F)V

    .line 1038
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategyStub;->getInstance()Lcom/android/server/display/BrightnessMappingStrategyStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategyStub;->dump(Ljava/io/PrintWriter;)V

    .line 1039
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 920
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 8
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 900
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 903
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v1, :cond_e

    .line 904
    invoke-virtual {v1, v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->calculateAdjustedBrightnessNits(F)F

    move-result v0

    .line 907
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 910
    .local v1, "brightness":F
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    .line 911
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result v1

    goto :goto_2d

    .line 912
    :cond_21
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_2d

    .line 913
    const-string v2, "BrightnessMappingStrategy"

    const-string/jumbo v3, "user point set, correction not applied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_2d
    :goto_2d
    return v1
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 894
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 996
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getShortTermModelTimeout()J
    .registers 5

    .line 869
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    .line 870
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0

    .line 872
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserDataPoint()F
    .registers 2

    .line 1008
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    return v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 986
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDefaultConfig()Z
    .registers 3

    .line 991
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isForIdleMode()Z
    .registers 2

    .line 1043
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mIsForIdleMode:Z

    return v0
.end method

.method public recalculateSplines(Z[F)V
    .registers 4
    .param p1, "applyAdjustment"    # Z
    .param p2, "adjustedNits"    # [F

    .line 1001
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    .line 1002
    if-eqz p1, :cond_6

    move-object v0, p2

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNits:[F

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeNitsBrightnessSplines([F)V

    .line 1003
    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"    # F

    .line 925
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 926
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 927
    const/4 v0, 0x0

    return v0

    .line 929
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_42

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 934
    :cond_42
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 935
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 936
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 4
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 878
    if-nez p1, :cond_4

    .line 879
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 881
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 882
    const/4 v0, 0x0

    return v0

    .line 884
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1b

    .line 885
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 887
    :cond_1b
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 888
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 889
    const/4 v0, 0x1

    return v0
.end method
