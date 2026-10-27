.class public final Lcom/android/server/TradeInModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TradeInModeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .registers 2

    .line 500
    iput-object p1, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    const/4 p1, 0x0

    .line 501
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 506
    iget-object p1, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p1}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p1}, Lcom/android/server/TradeInModeService;->-$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 507
    iget-object p0, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {p0}, Lcom/android/server/TradeInModeService;->-$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V

    :cond_16
    return-void
.end method
