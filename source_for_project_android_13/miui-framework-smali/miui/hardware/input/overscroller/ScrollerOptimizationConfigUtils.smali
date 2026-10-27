.class public Lmiui/hardware/input/overscroller/ScrollerOptimizationConfigUtils;
.super Ljava/lang/Object;
.source "ScrollerOptimizationConfigUtils.java"


# static fields
.field private static final blacklist FLING_VELOCITY_MAXIMUM:Ljava/lang/String; = "flingVelocityMaximum"

.field private static final blacklist FLING_VELOCITY_SCALED:Ljava/lang/String; = "flingVelocityScaled"

.field private static final blacklist FLING_VELOCITY_THRESHOLD:Ljava/lang/String; = "flingVelocityThreshold"

.field private static final blacklist FLY_WHEEL:Ljava/lang/String; = "flywheel"

.field private static final blacklist FLY_WHEEL_PARAM_1:Ljava/lang/String; = "flywheelParam1"

.field private static final blacklist FLY_WHEEL_PARAM_2:Ljava/lang/String; = "flywheelParam2"

.field private static final blacklist FLY_WHEEL_PARAM_3:Ljava/lang/String; = "flywheelParam3"

.field private static final blacklist FLY_WHEEL_TIME_INTERVAL_THRESHOLD:Ljava/lang/String; = "flywheelTimeIntervalThreshold"

.field private static final blacklist FLY_WHEEL_VELOCITY_THRESHOLD_1:Ljava/lang/String; = "flywheelVelocityThreshold1"

.field private static final blacklist FLY_WHEEL_VELOCITY_THRESHOLD_2:Ljava/lang/String; = "flywheelVelocityThreshold2"

.field private static final blacklist FRICTION:Ljava/lang/String; = "friction"

.field private static final blacklist OPTIMIZE_ENABLE:Ljava/lang/String; = "isOptimizeEnable"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist VELOCITY_THRESHOLD:Ljava/lang/String; = "velocityThreshold"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfigUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfigUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseAppOptimizationConfig(Ljava/lang/String;)Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;
    .registers 19
    .param p0, "configString"    # Ljava/lang/String;

    .line 32
    const-string v0, "flingVelocityMaximum"

    const-string v1, "flingVelocityScaled"

    const-string v2, "flingVelocityThreshold"

    const-string v3, "flywheelParam3"

    const-string v4, "flywheelParam2"

    const-string v5, "flywheelParam1"

    const-string v6, "flywheelVelocityThreshold2"

    const-string v7, "flywheelVelocityThreshold1"

    const-string v8, "flywheelTimeIntervalThreshold"

    const-string v9, "flywheel"

    const-string v10, "velocityThreshold"

    const-string v11, "friction"

    const-string v12, "isOptimizeEnable"

    const-string v13, "packageName"

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_24
    new-instance v14, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-direct {v14}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;-><init>()V

    .line 37
    .local v14, "scrollerOptimizationConfig":Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;
    :try_start_29
    new-instance v15, Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2b} :catch_ed

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    :try_start_2f
    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v15, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3f

    .line 40
    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 41
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v14, v13}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setPackageName(Ljava/lang/String;)V

    .line 43
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_3f
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 44
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 45
    .local v12, "isOptimizeEnable":I
    invoke-virtual {v14, v12}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setIsOptimizeEnable(I)V

    .line 47
    .end local v12    # "isOptimizeEnable":I
    :cond_4c
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_59

    .line 48
    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 49
    .local v11, "friction":D
    invoke-virtual {v14, v11, v12}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFriction(D)V

    .line 51
    .end local v11    # "friction":D
    :cond_59
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 52
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 53
    .local v10, "velocityThreshold":I
    invoke-virtual {v14, v10}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setVelocityThreshold(I)V

    .line 55
    .end local v10    # "velocityThreshold":I
    :cond_66
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_73

    .line 56
    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 57
    .local v9, "flywheel":I
    invoke-virtual {v14, v9}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheel(I)V

    .line 59
    .end local v9    # "flywheel":I
    :cond_73
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 60
    invoke-virtual {v15, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 61
    .local v8, "flywheelTimeIntervalThreshold":I
    invoke-virtual {v14, v8}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheelTimeIntervalThreshold(I)V

    .line 63
    .end local v8    # "flywheelTimeIntervalThreshold":I
    :cond_80
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 64
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 65
    .local v7, "flywheelVelocityThreshold1":I
    invoke-virtual {v14, v7}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheelVelocityThreshold1(I)V

    .line 67
    .end local v7    # "flywheelVelocityThreshold1":I
    :cond_8d
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 68
    invoke-virtual {v15, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "flywheelVelocityThreshold2":I
    invoke-virtual {v14, v6}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheelVelocityThreshold2(I)V

    .line 71
    .end local v6    # "flywheelVelocityThreshold2":I
    :cond_9a
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 72
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 73
    .local v5, "flywheelParam1":D
    invoke-virtual {v14, v5, v6}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheelParam1(D)V

    .line 75
    .end local v5    # "flywheelParam1":D
    :cond_a7
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 76
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 77
    .local v4, "flywheelParam2":D
    invoke-virtual {v14, v4, v5}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheelParam2(D)V

    .line 79
    .end local v4    # "flywheelParam2":D
    :cond_b4
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 80
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 81
    .local v3, "flywheelParam3":I
    invoke-virtual {v14, v3}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlywheelParam3(I)V

    .line 83
    .end local v3    # "flywheelParam3":I
    :cond_c1
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 84
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 85
    .local v2, "flingVelocityThreshold":I
    invoke-virtual {v14, v2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlingVelocityThreshold(I)V

    .line 87
    .end local v2    # "flingVelocityThreshold":I
    :cond_ce
    move-object/from16 v2, v16

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 88
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 89
    .local v2, "flingVelocityScaled":D
    invoke-virtual {v14, v2, v3}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlingVelocityScaled(D)V

    .line 91
    .end local v2    # "flingVelocityScaled":D
    :cond_dd
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 92
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "flingVelocityMaximum":I
    invoke-virtual {v14, v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;->setFlingVelocityMaximum(I)V
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_ea} :catch_eb

    .line 97
    .end local v0    # "flingVelocityMaximum":I
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_ea
    goto :goto_f9

    .line 95
    :catch_eb
    move-exception v0

    goto :goto_f0

    :catch_ed
    move-exception v0

    move-object/from16 v1, p0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    :goto_f0
    sget-object v2, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfigUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_f9
    return-object v14
.end method
