.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "ThermalStatusRestriction.java"


# instance fields
.field public volatile mThermalStatus:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/job/restrictions/ThermalStatusRestriction;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 5

    const/16 v0, 0xc

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 46
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 153
    const-string v0, "Thermal status: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    return-void
.end method

.method public getThermalStatus()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    return p0
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 8

    const/16 v0, 0x28

    const/4 v1, 0x0

    if-lt p2, v0, :cond_6

    return v1

    .line 101
    :cond_6
    iget v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v2, :cond_d

    return v3

    .line 104
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 105
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_53

    .line 114
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p2

    if-eqz p2, :cond_1d

    return v1

    .line 117
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 118
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p2

    if-gtz p2, :cond_3b

    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 119
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_3a

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    return v3

    :cond_3c
    const/16 p2, 0x190

    if-ne v0, p2, :cond_52

    .line 123
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_52

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_52

    :cond_51
    return v1

    :cond_52
    :goto_52
    return v3

    .line 128
    :cond_53
    iget v2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    if-lt v2, v3, :cond_77

    const/16 v2, 0x23

    if-lt p2, v2, :cond_5c

    return v1

    :cond_5c
    const/16 p2, 0x64

    if-eq v0, p2, :cond_76

    const/16 p2, 0xc8

    if-ne v0, p2, :cond_75

    .line 138
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 140
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_76

    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_75

    goto :goto_76

    :cond_75
    return v1

    :cond_76
    :goto_76
    return v3

    :cond_77
    return v1
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    return-void
.end method
