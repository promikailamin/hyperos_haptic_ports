.class Lcom/android/server/tare/ChargingModifier;
.super Lcom/android/server/tare/Modifier;
.source "ChargingModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/ChargingModifier$ChargingTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

.field private final mIrs:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/tare/ChargingModifier;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/tare/ChargingModifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/ChargingModifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/ChargingModifier;->TAG:Ljava/lang/String;

    .line 33
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_29

    const/4 v1, 0x3

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    sput-boolean v0, Lcom/android/server/tare/ChargingModifier;->DEBUG:Z

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 4
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 40
    invoke-direct {p0}, Lcom/android/server/tare/Modifier;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 42
    new-instance v0, Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;-><init>(Lcom/android/server/tare/ChargingModifier;Lcom/android/server/tare/ChargingModifier$ChargingTracker-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    .line 43
    return-void
.end method

.method private modifyValue(J)J
    .registers 5
    .param p1, "val"    # J

    .line 66
    iget-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    invoke-static {v0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->-$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 67
    const-wide/16 v0, 0x0

    return-wide v0

    .line 69
    :cond_b
    return-wide p1
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 74
    const-string v0, "charging="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    invoke-static {v0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->-$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 76
    return-void
.end method

.method getModifiedCostToProduce(J)J
    .registers 5
    .param p1, "ctp"    # J

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/ChargingModifier;->modifyValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getModifiedPrice(J)J
    .registers 5
    .param p1, "price"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/tare/ChargingModifier;->modifyValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setup()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    iget-object v1, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->startTracking(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public tearDown()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    iget-object v1, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->stopTracking(Landroid/content/Context;)V

    .line 53
    return-void
.end method
