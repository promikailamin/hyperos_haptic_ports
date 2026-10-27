.class public Lcom/android/server/resources/ResourcesManagerService;
.super Lcom/android/server/SystemService;
.source "ResourcesManagerService.java"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManagerService(Lcom/android/server/resources/ResourcesManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/resources/ResourcesManagerService$1;-><init>(Lcom/android/server/resources/ResourcesManagerService;)V

    iput-object v0, p0, Lcom/android/server/resources/ResourcesManagerService;->mService:Landroid/os/IBinder;

    .line 53
    const-string/jumbo v1, "resources"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/resources/ResourcesManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 1

    .line 59
    return-void
.end method

.method public setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 100
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 101
    return-void
.end method
