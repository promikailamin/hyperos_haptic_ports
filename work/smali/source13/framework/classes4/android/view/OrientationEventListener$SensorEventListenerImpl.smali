.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final greylist-max-o _DATA_X:I = 0x0

.field private static final greylist-max-o _DATA_Y:I = 0x1

.field private static final greylist-max-o _DATA_Z:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/OrientationEventListener;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/OrientationEventListener;

    .line 143
    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 208
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 22
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 151
    .local v2, "orientation":I
    iget-object v3, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v3}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmSensor(Landroid/view/OrientationEventListener;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne v3, v6, :cond_ee

    .line 152
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 153
    .local v3, "values":[F
    aget v7, v3, v7

    neg-float v7, v7

    .line 154
    .local v7, "X":F
    aget v9, v3, v6

    neg-float v9, v9

    .line 155
    .local v9, "Y":F
    const/4 v10, 0x2

    aget v10, v3, v10

    neg-float v10, v10

    .line 158
    .local v10, "Z":F
    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 159
    .local v11, "now":J
    iget-object v13, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v13}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredTimestampNanos(Landroid/view/OrientationEventListener;)J

    move-result-wide v13

    .line 160
    .local v13, "then":J
    sub-long v5, v11, v13

    long-to-float v5, v5

    const v6, 0x358637bd    # 1.0E-6f

    mul-float/2addr v5, v6

    .line 161
    .local v5, "timeDeltaMS":F
    cmp-long v6, v11, v13

    if-ltz v6, :cond_84

    const-wide/32 v16, 0x3b9aca00

    add-long v16, v13, v16

    cmp-long v6, v11, v16

    if-gtz v6, :cond_84

    cmpl-float v6, v7, v8

    if-nez v6, :cond_49

    cmpl-float v6, v9, v8

    if-nez v6, :cond_49

    cmpl-float v6, v10, v8

    if-nez v6, :cond_49

    goto :goto_84

    .line 166
    :cond_49
    const/high16 v6, 0x43480000    # 200.0f

    add-float/2addr v6, v5

    div-float v6, v5, v6

    .line 167
    .local v6, "alpha":F
    iget-object v8, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredX(Landroid/view/OrientationEventListener;)F

    move-result v8

    sub-float v8, v7, v8

    mul-float/2addr v8, v6

    iget-object v15, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v15}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredX(Landroid/view/OrientationEventListener;)F

    move-result v15

    add-float v7, v8, v15

    .line 168
    iget-object v8, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredY(Landroid/view/OrientationEventListener;)F

    move-result v8

    sub-float v8, v9, v8

    mul-float/2addr v8, v6

    iget-object v15, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v15}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredY(Landroid/view/OrientationEventListener;)F

    move-result v15

    add-float v9, v8, v15

    .line 169
    iget-object v8, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v8}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredZ(Landroid/view/OrientationEventListener;)F

    move-result v8

    sub-float v8, v10, v8

    mul-float/2addr v8, v6

    iget-object v15, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v15}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmLastFilteredZ(Landroid/view/OrientationEventListener;)F

    move-result v15

    add-float v10, v8, v15

    move/from16 v18, v5

    goto :goto_8d

    .line 164
    .end local v6    # "alpha":F
    :cond_84
    :goto_84
    iget-object v6, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    move/from16 v18, v5

    .end local v5    # "timeDeltaMS":F
    .local v18, "timeDeltaMS":F
    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v6, v4, v5}, Landroid/view/OrientationEventListener;->-$$Nest$fputmLastFilteredTimestampNanos(Landroid/view/OrientationEventListener;J)V

    .line 171
    :goto_8d
    iget-object v4, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v4, v11, v12}, Landroid/view/OrientationEventListener;->-$$Nest$fputmLastFilteredTimestampNanos(Landroid/view/OrientationEventListener;J)V

    .line 172
    iget-object v4, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v4, v7}, Landroid/view/OrientationEventListener;->-$$Nest$fputmLastFilteredX(Landroid/view/OrientationEventListener;F)V

    .line 173
    iget-object v4, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v4, v9}, Landroid/view/OrientationEventListener;->-$$Nest$fputmLastFilteredY(Landroid/view/OrientationEventListener;F)V

    .line 174
    iget-object v4, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v4, v10}, Landroid/view/OrientationEventListener;->-$$Nest$fputmLastFilteredZ(Landroid/view/OrientationEventListener;F)V

    .line 176
    mul-float v4, v7, v7

    mul-float v5, v9, v9

    add-float/2addr v4, v5

    .line 178
    .local v4, "magnitude":F
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v4

    mul-float v6, v10, v10

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d4

    .line 179
    const v5, 0x42652ee1

    .line 180
    .local v5, "OneEightyOverPi":F
    neg-float v6, v9

    move/from16 v19, v2

    move-object/from16 v17, v3

    .end local v2    # "orientation":I
    .end local v3    # "values":[F
    .local v17, "values":[F
    .local v19, "orientation":I
    float-to-double v2, v6

    move v6, v9

    .end local v9    # "Y":F
    .local v6, "Y":F
    float-to-double v8, v7

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v5

    .line 181
    .local v2, "angle":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5a

    .line 183
    .end local v19    # "orientation":I
    .local v3, "orientation":I
    :goto_c6
    const/16 v8, 0x168

    if-lt v3, v8, :cond_cd

    .line 184
    add-int/lit16 v3, v3, -0x168

    goto :goto_c6

    .line 186
    :cond_cd
    :goto_cd
    if-gez v3, :cond_d2

    .line 187
    add-int/lit16 v3, v3, 0x168

    goto :goto_cd

    .line 186
    :cond_d2
    move v2, v3

    goto :goto_d9

    .line 178
    .end local v5    # "OneEightyOverPi":F
    .end local v6    # "Y":F
    .end local v17    # "values":[F
    .local v2, "orientation":I
    .local v3, "values":[F
    .restart local v9    # "Y":F
    :cond_d4
    move/from16 v19, v2

    move-object/from16 v17, v3

    move v6, v9

    .line 190
    .end local v3    # "values":[F
    .end local v9    # "Y":F
    .restart local v6    # "Y":F
    .restart local v17    # "values":[F
    :goto_d9
    iget-object v3, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v3}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v3

    if-eqz v3, :cond_ed

    .line 191
    iget-object v3, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v3}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v3

    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v5}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    .line 194
    .end local v4    # "magnitude":F
    .end local v6    # "Y":F
    .end local v7    # "X":F
    .end local v10    # "Z":F
    .end local v11    # "now":J
    .end local v13    # "then":J
    .end local v17    # "values":[F
    .end local v18    # "timeDeltaMS":F
    :cond_ed
    goto :goto_110

    .line 195
    :cond_ee
    move/from16 v19, v2

    .end local v2    # "orientation":I
    .restart local v19    # "orientation":I
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    cmpg-float v2, v8, v2

    if-gtz v2, :cond_10e

    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10e

    .line 196
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    const/16 v3, 0x168

    rsub-int v2, v2, 0x168

    .end local v19    # "orientation":I
    .restart local v2    # "orientation":I
    goto :goto_110

    .line 200
    .end local v2    # "orientation":I
    .restart local v19    # "orientation":I
    :cond_10e
    move/from16 v2, v19

    .end local v19    # "orientation":I
    .restart local v2    # "orientation":I
    :goto_110
    iget-object v3, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v3}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I

    move-result v3

    if-eq v2, v3, :cond_122

    .line 201
    iget-object v3, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v3, v2}, Landroid/view/OrientationEventListener;->-$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V

    .line 202
    iget-object v3, v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {v3, v2}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    .line 204
    :cond_122
    return-void
.end method
