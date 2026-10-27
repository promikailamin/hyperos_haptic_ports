.class final Lcom/android/server/power/LowPowerStandbyController$LocalService;
.super Lcom/android/server/power/LowPowerStandbyControllerInternal;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyControllerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    return-void
.end method


# virtual methods
.method public addToAllowlist(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V

    .line 607
    return-void
.end method

.method public removeFromAllowlist(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 611
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$LocalService;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {v0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V

    .line 612
    return-void
.end method
