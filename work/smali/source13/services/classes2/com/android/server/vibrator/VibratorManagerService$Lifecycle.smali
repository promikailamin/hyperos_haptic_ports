.class public Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 119
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->systemReady()V

    .line 122
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 113
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$Injector;

    invoke-direct {v2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 114
    const-string/jumbo v1, "vibrator_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 115
    return-void
.end method
