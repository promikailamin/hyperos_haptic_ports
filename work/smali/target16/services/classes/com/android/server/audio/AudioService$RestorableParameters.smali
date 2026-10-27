.class public Lcom/android/server/audio/AudioService$RestorableParameters;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public mMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$JVps76o3ZM2FTHiX-AHAgS-pysM(Ljava/util/function/BooleanSupplier;)Z
    .registers 1

    .line 1186
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l7AV0DaGl0hY4s25VX3wTbeGuso(Ljava/lang/String;)Z
    .registers 1

    .line 1142
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    new-instance v0, Lcom/android/server/audio/AudioService$RestorableParameters$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RestorableParameters$1;-><init>(Lcom/android/server/audio/AudioService$RestorableParameters;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .registers 4

    .line 1164
    const-string v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1165
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    if-eqz p2, :cond_12

    .line 1167
    :try_start_a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catchall_10
    move-exception p0

    goto :goto_19

    .line 1169
    :cond_12
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_10

    throw p0
.end method

.method public restoreAll()V
    .registers 3

    .line 1182
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 1185
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1188
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1136
    const-string v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1137
    const-string/jumbo v0, "parameter must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1138
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 1139
    :try_start_e
    invoke-static {p2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 1141
    new-instance v2, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioService$RestorableParameters;->queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 1146
    :cond_1f
    :goto_1f
    monitor-exit v0

    return v1

    .line 1147
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_1d

    throw p0
.end method
