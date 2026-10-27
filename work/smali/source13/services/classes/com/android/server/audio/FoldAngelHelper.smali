.class Lcom/android/server/audio/FoldAngelHelper;
.super Ljava/lang/Object;
.source "FoldAngleHelper.java"


# static fields
.field private static final FOLD_ANGLE_LIMIT:F = 15.0f

.field private static final FOLD_STATUS:F = 1.0f

.field private static FoldangelListenerFlag:Z = false

.field private static FoldstatusListenerFlag:Z = false

.field private static final SENSOR_FOLD_STATUS:I = 0x1fa268f

.field private static final TAG:Ljava/lang/String; = "AudioService.FoldAngelHelper"

.field private static final UNFOLD_ANGLE_LIMIT:F = 165.0f

.field private static final UNFOLD_STATUS:F

.field private static mAngleSensor:Landroid/hardware/Sensor;

.field private static final mListener:Landroid/hardware/SensorEventListener;

.field private static mSensorManager:Landroid/hardware/SensorManager;

.field private static mfoldSensor:Landroid/hardware/Sensor;

.field private static final mfoldstatusListener:Landroid/hardware/SensorEventListener;

.field private static sContext:Landroid/content/Context;

.field private static sFoldAngle:F

.field private static sFoldAngleRecord:Ljava/lang/String;

.field private static sFoldAngleUpdateCb:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFoldstatus:F

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$sfgetFoldstatusListenerFlag()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSensorManager()Landroid/hardware/SensorManager;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmfoldstatusListener()Landroid/hardware/SensorEventListener;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mfoldstatusListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsFoldAngleRecord()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsFoldAngleUpdateCb()Ljava/util/function/Consumer;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleUpdateCb:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsFoldstatus()F
    .registers 1

    sget v0, Lcom/android/server/audio/FoldAngelHelper;->sFoldstatus:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputFoldstatusListenerFlag(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsFoldAngle(F)V
    .registers 1

    sput p0, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsFoldAngleRecord(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsFoldstatus(F)V
    .registers 1

    sput p0, Lcom/android/server/audio/FoldAngelHelper;->sFoldstatus:F

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldangelListenerFlag:Z

    .line 25
    sput-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    .line 28
    sput v0, Lcom/android/server/audio/FoldAngelHelper;->sFoldstatus:F

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mAngleSensor:Landroid/hardware/Sensor;

    .line 33
    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    const-string v1, ""

    sput-object v1, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mfoldSensor:Landroid/hardware/Sensor;

    .line 122
    new-instance v0, Lcom/android/server/audio/FoldAngelHelper$1;

    invoke-direct {v0}, Lcom/android/server/audio/FoldAngelHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mListener:Landroid/hardware/SensorEventListener;

    .line 133
    new-instance v0, Lcom/android/server/audio/FoldAngelHelper$2;

    invoke-direct {v0}, Lcom/android/server/audio/FoldAngelHelper$2;-><init>()V

    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mfoldstatusListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disableFlodAngleHelper()V
    .registers 2

    .line 72
    sget-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldangelListenerFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 73
    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/audio/FoldAngelHelper;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldangelListenerFlag:Z

    .line 76
    :cond_f
    return-void
.end method

.method static enableFoldAngleHelper()V
    .registers 5

    .line 47
    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 48
    const-string v1, "AudioService.FoldAngelHelper"

    if-nez v0, :cond_16

    .line 49
    const-string v0, "get fold sensor manager faild"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_16
    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mAngleSensor:Landroid/hardware/Sensor;

    .line 52
    const-string v2, "get fold sensor faild"

    if-nez v0, :cond_27

    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_27
    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x1fa268f

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->mfoldSensor:Landroid/hardware/Sensor;

    .line 56
    if-nez v0, :cond_37

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_37
    sget-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldangelListenerFlag:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-nez v0, :cond_48

    .line 60
    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/android/server/audio/FoldAngelHelper;->mListener:Landroid/hardware/SensorEventListener;

    sget-object v4, Lcom/android/server/audio/FoldAngelHelper;->mAngleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v3, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 62
    sput-boolean v1, Lcom/android/server/audio/FoldAngelHelper;->FoldangelListenerFlag:Z

    .line 64
    :cond_48
    sget-boolean v0, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    if-nez v0, :cond_57

    .line 65
    sget-object v0, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/android/server/audio/FoldAngelHelper;->mfoldstatusListener:Landroid/hardware/SensorEventListener;

    sget-object v4, Lcom/android/server/audio/FoldAngelHelper;->mfoldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v3, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 67
    sput-boolean v1, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    .line 69
    :cond_57
    return-void
.end method

.method static initFoldAngleHelper(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "foldangleUpdateCb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    if-eqz p0, :cond_a

    .line 41
    sput-object p0, Lcom/android/server/audio/FoldAngelHelper;->sContext:Landroid/content/Context;

    .line 42
    sput-object p1, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleUpdateCb:Ljava/util/function/Consumer;

    .line 43
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->enableFoldAngleHelper()V

    .line 44
    return-void

    .line 39
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static updateFoldAngleHelper()V
    .registers 18

    .line 79
    const-string v0, ""

    .line 80
    .local v0, "foldangleParam":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "refresh_flag":Z
    sget v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    const-wide v7, 0x405a400000000000L    # 105.0

    const-wide v9, 0x4060e00000000000L    # 135.0

    const-wide v11, 0x4052c00000000000L    # 75.0

    if-ltz v3, :cond_58

    float-to-double v3, v2

    const-wide v13, 0x4066800000000000L    # 180.0

    cmpg-double v3, v3, v13

    if-gtz v3, :cond_58

    .line 82
    float-to-double v3, v2

    cmpl-double v3, v3, v11

    if-ltz v3, :cond_32

    float-to-double v3, v2

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_32

    .line 83
    const-string v0, "foldangle=angle_75-105"

    goto :goto_58

    .line 84
    :cond_32
    float-to-double v3, v2

    cmpl-double v3, v3, v7

    if-lez v3, :cond_3f

    float-to-double v3, v2

    cmpg-double v3, v3, v9

    if-gtz v3, :cond_3f

    .line 85
    const-string v0, "foldangle=angle_105-135"

    goto :goto_58

    .line 86
    :cond_3f
    float-to-double v3, v2

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_4c

    float-to-double v3, v2

    cmpg-double v3, v3, v11

    if-gez v3, :cond_4c

    .line 87
    const-string v0, "foldangle=fold"

    goto :goto_58

    .line 88
    :cond_4c
    float-to-double v3, v2

    cmpl-double v3, v3, v9

    if-lez v3, :cond_58

    float-to-double v2, v2

    cmpg-double v2, v2, v13

    if-gez v2, :cond_58

    .line 89
    const-string v0, "foldangle=unfold"

    .line 93
    :cond_58
    :goto_58
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "foldangle=unfold"

    const-string v13, "foldangle=angle_105-135"

    const-string v14, "foldangle=angle_75-105"

    const-string v15, "foldangle=fold"

    sparse-switch v3, :sswitch_data_f8

    :cond_6a
    goto :goto_8a

    :sswitch_6b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v2, v4

    goto :goto_8a

    :sswitch_73
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v2, 0x2

    goto :goto_8a

    :sswitch_7b
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v2, 0x0

    goto :goto_8a

    :sswitch_83
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    move v2, v5

    :goto_8a
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    packed-switch v2, :pswitch_data_10a

    goto :goto_d3

    .line 106
    :pswitch_90
    sget v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v2, v2

    sub-double/2addr v2, v9

    cmpl-double v2, v2, v16

    if-lez v2, :cond_d3

    const/4 v1, 0x1

    goto :goto_d3

    .line 102
    :pswitch_9a
    sget-object v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    if-ne v2, v14, :cond_a6

    sget v3, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v11, v3

    sub-double/2addr v11, v7

    cmpl-double v3, v11, v16

    if-gtz v3, :cond_b0

    :cond_a6
    if-ne v2, v6, :cond_d3

    sget v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v2, v2

    sub-double/2addr v9, v2

    cmpl-double v2, v9, v16

    if-lez v2, :cond_d3

    .line 103
    :cond_b0
    const/4 v1, 0x1

    goto :goto_d3

    .line 98
    :pswitch_b2
    sget-object v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    if-ne v2, v15, :cond_be

    sget v3, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v9, v3

    sub-double/2addr v9, v11

    cmpl-double v3, v9, v16

    if-gtz v3, :cond_c8

    :cond_be
    if-ne v2, v13, :cond_d3

    sget v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v2, v2

    sub-double/2addr v7, v2

    cmpl-double v2, v7, v16

    if-lez v2, :cond_d3

    .line 99
    :cond_c8
    const/4 v1, 0x1

    goto :goto_d3

    .line 95
    :pswitch_ca
    sget v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngle:F

    float-to-double v2, v2

    sub-double/2addr v11, v2

    cmpl-double v2, v11, v16

    if-lez v2, :cond_d3

    const/4 v1, 0x1

    .line 111
    :cond_d3
    :goto_d3
    sget-object v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    if-eq v0, v2, :cond_f7

    if-eqz v1, :cond_f7

    .line 112
    sput-object v0, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    .line 113
    sget-object v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleUpdateCb:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 114
    sget-boolean v2, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    if-nez v2, :cond_f7

    sget-object v2, Lcom/android/server/audio/FoldAngelHelper;->sFoldAngleRecord:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 115
    sget-object v2, Lcom/android/server/audio/FoldAngelHelper;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/android/server/audio/FoldAngelHelper;->mfoldstatusListener:Landroid/hardware/SensorEventListener;

    sget-object v6, Lcom/android/server/audio/FoldAngelHelper;->mfoldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v6, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 117
    sput-boolean v5, Lcom/android/server/audio/FoldAngelHelper;->FoldstatusListenerFlag:Z

    .line 120
    :cond_f7
    return-void

    :sswitch_data_f8
    .sparse-switch
        -0x68313402 -> :sswitch_83
        -0x1caf8874 -> :sswitch_7b
        0x1c8c0365 -> :sswitch_73
        0x6a98dae5 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_b2
        :pswitch_9a
        :pswitch_90
    .end packed-switch
.end method
