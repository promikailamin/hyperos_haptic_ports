.class Lcom/android/server/audio/AudioService$RestorableParameters;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestorableParameters"
.end annotation


# instance fields
.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    new-instance v0, Lcom/android/server/audio/AudioService$RestorableParameters$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RestorableParameters$1;-><init>(Lcom/android/server/audio/AudioService$RestorableParameters;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService$RestorableParameters-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;-><init>()V

    return-void
.end method

.method static synthetic lambda$restoreAll$1(Ljava/util/function/BooleanSupplier;)Z
    .registers 2
    .param p0, "v"    # Ljava/util/function/BooleanSupplier;

    .line 842
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setParameters$0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "parameter"    # Ljava/lang/String;

    .line 798
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "supplier"    # Ljava/util/function/BooleanSupplier;

    .line 820
    const-string/jumbo v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 822
    if-eqz p2, :cond_11

    .line 823
    :try_start_b
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 825
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :goto_16
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public restoreAll()V
    .registers 4

    .line 838
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 841
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 844
    monitor-exit v0

    .line 845
    return-void

    .line 844
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .line 792
    const-string/jumbo v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 793
    const-string/jumbo v0, "parameter must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 794
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    monitor-enter v0

    .line 795
    :try_start_f
    invoke-static {p2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v1

    .line 796
    .local v1, "status":I
    if-nez v1, :cond_1d

    .line 797
    new-instance v2, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioService$RestorableParameters;->queueRestoreWithRemovalIfTrue(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    .line 802
    :cond_1d
    monitor-exit v0

    return v1

    .line 803
    .end local v1    # "status":I
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v1
.end method
