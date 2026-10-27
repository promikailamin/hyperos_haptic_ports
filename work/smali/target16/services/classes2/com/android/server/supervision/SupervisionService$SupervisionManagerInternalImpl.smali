.class public final Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;
.super Landroid/app/supervision/SupervisionManagerInternal;
.source "SupervisionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .registers 2

    .line 889
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Landroid/app/supervision/SupervisionManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/supervision/SupervisionService;Lcom/android/server/supervision/SupervisionService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;-><init>(Lcom/android/server/supervision/SupervisionService;)V

    return-void
.end method


# virtual methods
.method public isActiveSupervisionApp(I)Z
    .registers 6

    .line 892
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 893
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v1, v0}, Lcom/android/server/supervision/SupervisionService;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 898
    :cond_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {p0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$fgetmInjector(Lcom/android/server/supervision/SupervisionService;)Lcom/android/server/supervision/SupervisionService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 900
    array-length p1, p0

    move v2, v1

    :goto_20
    if-ge v2, p1, :cond_2f

    aget-object v3, p0, v2

    .line 901
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2f
    return v1
.end method

.method public isSupervisionEnabledForUser(I)Z
    .registers 2

    .line 911
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->isSupervisionEnabledForUser(I)Z

    move-result p0

    return p0
.end method

.method public isSupervisionLockscreenEnabledForUser(I)Z
    .registers 3

    .line 921
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 922
    :try_start_7
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 923
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setSupervisionEnabledForUser(IZ)V
    .registers 3

    .line 916
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUser(IZ)V

    return-void
.end method

.method public setSupervisionLockscreenEnabledForUser(IZLandroid/os/PersistableBundle;)V
    .registers 6

    .line 929
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetLockObject(Lcom/android/server/supervision/SupervisionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 930
    :try_start_7
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {v1, p1}, Lcom/android/server/supervision/SupervisionService;->getUserDataLocked(I)Lcom/android/server/supervision/SupervisionUserData;

    move-result-object p1

    .line 931
    iput-boolean p2, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenEnabled:Z

    .line 932
    iput-object p3, p1, Lcom/android/server/supervision/SupervisionUserData;->supervisionLockScreenOptions:Landroid/os/PersistableBundle;

    .line 934
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService;->mSupervisionSettings:Lcom/android/server/supervision/SupervisionSettings;

    invoke-virtual {p0}, Lcom/android/server/supervision/SupervisionSettings;->saveUserData()V

    .line 936
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method
