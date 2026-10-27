.class public Lcom/android/server/lineage/LineageHardwareService;
.super Lcom/android/server/SystemService;
.source "LineageHardwareService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LineageHardwareService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLineageHwImpl:Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService;->mLineageHwImpl:Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/lineage/LineageHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance v0, Lcom/android/server/lineage/LineageHardwareService$1;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/LineageHardwareService$1;-><init>(Lcom/android/server/lineage/LineageHardwareService;)V

    iput-object v0, p0, Lcom/android/server/lineage/LineageHardwareService;->mService:Landroid/os/IBinder;

    .line 335
    iput-object p1, p0, Lcom/android/server/lineage/LineageHardwareService;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/LineageHardwareService;->getImpl(Landroid/content/Context;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/LineageHardwareService;->mLineageHwImpl:Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    .line 337
    const-string p1, "lineagehardware"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final getImpl(Landroid/content/Context;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;
    .registers 2

    .line 330
    new-instance p1, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;

    invoke-direct {p1, p0}, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;-><init>(Lcom/android/server/lineage/LineageHardwareService;)V

    return-object p1
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_19

    .line 343
    new-instance p1, Landroid/content/Intent;

    const-string v0, "lineageos.intent.action.INITIALIZE_LINEAGE_HARDWARE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method
