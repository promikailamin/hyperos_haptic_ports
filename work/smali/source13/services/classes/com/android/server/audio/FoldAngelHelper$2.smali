.class Lcom/android/server/audio/FoldAngelHelper$2;
.super Ljava/lang/Object;
.source "FoldAngleHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/FoldAngelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 136
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 139
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfputsFoldstatus(F)V

    .line 140
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldstatus()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    const-string v3, "foldangle=fold"

    if-nez v0, :cond_34

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v4, 0x41700000    # 15.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_34

    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldAngleRecord()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 142
    invoke-static {v3}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfputsFoldAngleRecord(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldAngleUpdateCb()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_5d

    .line 144
    :cond_34
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldstatus()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_5d

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v4, 0x43250000    # 165.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5d

    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldAngleRecord()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v4, "foldangle=unfold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 146
    invoke-static {v4}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfputsFoldAngleRecord(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldAngleUpdateCb()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 149
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetFoldstatusListenerFlag()Z

    move-result v0

    if-ne v0, v2, :cond_7b

    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetsFoldAngleRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 150
    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetmSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfgetmfoldstatusListener()Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 151
    invoke-static {v1}, Lcom/android/server/audio/FoldAngelHelper;->-$$Nest$sfputFoldstatusListenerFlag(Z)V

    .line 153
    :cond_7b
    return-void
.end method
