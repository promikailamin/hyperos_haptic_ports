.class Lcom/android/server/sensorprivacy/PersistedState$PVersion0;
.super Ljava/lang/Object;
.source "PersistedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/PersistedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PVersion0"
.end annotation


# instance fields
.field private mIndividualEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->addState(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->upgrade()V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 4
    .param p1, "version"    # I

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    .line 391
    if-nez p1, :cond_d

    .line 394
    return-void

    .line 392
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only version 0 supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion0-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;-><init>(I)V

    return-void
.end method

.method private addState(IZ)V
    .registers 5
    .param p1, "sensor"    # I
    .param p2, "enabled"    # Z

    .line 397
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v1, p2}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    return-void
.end method

.method private upgrade()V
    .registers 1

    .line 402
    return-void
.end method
