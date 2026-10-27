.class public Lcom/android/server/dreams/DreamManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DreamManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 232
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmBatteryManagerInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object p2

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fputmIsCharging(Lcom/android/server/dreams/DreamManagerService;Z)V

    .line 233
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmBatteryManagerInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fputmIsWirelessCharging(Lcom/android/server/dreams/DreamManagerService;Z)V

    return-void
.end method
