.class Lcom/android/server/tare/DeviceIdleModifier;
.super Lcom/android/server/tare/Modifier;
.source "DeviceIdleModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

.field private final mIrs:Lcom/android/server/tare/InternalResourceService;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/DeviceIdleModifier;)Lcom/android/server/tare/InternalResourceService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/DeviceIdleModifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/DeviceIdleModifier;->TAG:Ljava/lang/String;

    .line 31
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_29

    const/4 v1, 0x3

    .line 32
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
    sput-boolean v0, Lcom/android/server/tare/DeviceIdleModifier;->DEBUG:Z

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 4
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;

    .line 39
    invoke-direct {p0}, Lcom/android/server/tare/Modifier;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 41
    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mPowerManager:Landroid/os/PowerManager;

    .line 42
    new-instance v0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-direct {v0, p0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;-><init>(Lcom/android/server/tare/DeviceIdleModifier;)V

    iput-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    .line 43
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 68
    const-string v0, "idle="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {v0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 70
    const-string v0, "lightIdle="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {v0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceLightIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 72
    return-void
.end method

.method getModifiedCostToProduce(J)J
    .registers 7
    .param p1, "ctp"    # J

    .line 57
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {v0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    const-wide v0, 0x3ff3333333333333L    # 1.2

    long-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0

    .line 60
    :cond_11
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    invoke-static {v0}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->-$$Nest$fgetmDeviceLightIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 61
    const-wide v0, 0x3ff199999999999aL    # 1.1

    long-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0

    .line 63
    :cond_22
    return-wide p1
.end method

.method public setup()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->startTracking(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public tearDown()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/tare/DeviceIdleModifier;->mDeviceIdleTracker:Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;

    iget-object v1, p0, Lcom/android/server/tare/DeviceIdleModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->stopTracking(Landroid/content/Context;)V

    .line 53
    return-void
.end method
