.class public Lcom/android/server/supervision/SupervisionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SupervisionService.java"


# instance fields
.field public final mSupervisionService:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSupervisionService(Lcom/android/server/supervision/SupervisionService$Lifecycle;)Lcom/android/server/supervision/SupervisionService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 838
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 839
    new-instance v0, Lcom/android/server/supervision/SupervisionService;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/supervision/SupervisionService;)V
    .registers 3

    .line 844
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 845
    iput-object p2, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 850
    const-class v0, Landroid/app/supervision/SupervisionManagerInternal;

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    iget-object v1, v1, Lcom/android/server/supervision/SupervisionService;->mInternal:Landroid/app/supervision/SupervisionManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 851
    const-string/jumbo v0, "supervision"

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Lifecycle;->registerProfileOwnerListener()V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 873
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mupdateSupervisionRoleHolders(Lcom/android/server/supervision/SupervisionService;I)V

    .line 874
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isPreCreated()Z

    move-result v0

    if-nez v0, :cond_18

    .line 875
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$msyncStateWithDevicePolicyManager(Lcom/android/server/supervision/SupervisionService;I)V

    .line 877
    :cond_18
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mmaybeApplyUserRestrictionsFor(Lcom/android/server/supervision/SupervisionService;Landroid/os/UserHandle;)V

    return-void
.end method

.method public registerProfileOwnerListener()V
    .registers 5

    .line 860
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 861
    const-string v1, "android.app.action.PROFILE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 862
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 863
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;-><init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;Lcom/android/server/supervision/SupervisionService-IA;)V

    .line 864
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
