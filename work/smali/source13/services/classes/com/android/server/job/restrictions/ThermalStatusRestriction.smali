.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "ThermalStatusRestriction.java"


# static fields
.field private static final HIGHER_PRIORITY_THRESHOLD:I = 0x2

.field private static final LOWER_THRESHOLD:I = 0x1

.field private static final LOW_PRIORITY_THRESHOLD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThermalStatusRestriction"

.field private static final UPPER_THRESHOLD:I = 0x3


# instance fields
.field private volatile mThermalStatus:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 44
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;II)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    .line 46
    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 113
    const-string v0, "Thermal status: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 115
    return-void
.end method

.method getThermalStatus()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return v0
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 86
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_7

    .line 87
    return v1

    .line 89
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 90
    .local v0, "priority":I
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v2, v3, :cond_26

    .line 93
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-nez v2, :cond_24

    const/16 v2, 0x190

    if-ne v0, v2, :cond_23

    iget-object v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 95
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    goto :goto_25

    :cond_24
    move v1, v4

    .line 93
    :goto_25
    return v1

    .line 97
    :cond_26
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v2, v1, :cond_3d

    .line 100
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_36

    iget-object v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_36
    const/16 v2, 0x64

    if-ne v0, v2, :cond_3b

    :cond_3a
    goto :goto_3c

    :cond_3b
    move v1, v4

    :goto_3c
    return v1

    .line 103
    :cond_3d
    return v4
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 51
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 53
    .local v0, "powerManager":Landroid/os/PowerManager;
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 82
    return-void
.end method
