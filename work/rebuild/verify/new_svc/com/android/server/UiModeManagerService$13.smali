.class public Lcom/android/server/UiModeManagerService$13;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 456
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$13;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 459
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$13;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateForceInvertOverrideStates(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method
