.class public Lcom/android/server/am/AppProfiler$ProfileData;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# instance fields
.field public mProfileApp:Ljava/lang/String;

.field public mProfileProc:Lcom/android/server/am/ProcessRecord;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 2

    .line 348
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 350
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 351
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;)V

    return-void
.end method


# virtual methods
.method public getProfileApp()Ljava/lang/String;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileProc()Lcom/android/server/am/ProcessRecord;
    .registers 1

    .line 373
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getProfilerInfo()Landroid/app/ProfilerInfo;
    .registers 1

    .line 384
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-object p0
.end method

.method public setProfileApp(Ljava/lang/String;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_17

    .line 356
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileApp(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public setProfileProc(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 365
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 366
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_1f

    .line 367
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-nez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_1c

    .line 368
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 367
    :goto_1c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileProc(Lcom/android/server/wm/WindowProcessController;)V

    :cond_1f
    return-void
.end method

.method public setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .registers 3

    .line 377
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 378
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_17

    .line 379
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    :cond_17
    return-void
.end method
