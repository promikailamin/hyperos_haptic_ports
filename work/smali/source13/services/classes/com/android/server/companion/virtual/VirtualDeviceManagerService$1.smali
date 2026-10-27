.class Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;
.super Lcom/android/server/wm/ActivityInterceptorCallback;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 110
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityInterceptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .registers 7
    .param p1, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 115
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 116
    return-object v1

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    move-result-object v0

    .line 119
    .local v0, "pt":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    if-nez v0, :cond_15

    .line 120
    return-object v1

    .line 122
    :cond_15
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 123
    iget-object v1, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 124
    .local v1, "options":Landroid/app/ActivityOptions;
    if-nez v1, :cond_23

    .line 125
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 127
    :cond_23
    new-instance v2, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    iget-object v3, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->intent:Landroid/content/Intent;

    iget v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mDisplayId:I

    .line 128
    invoke-virtual {v1, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 127
    return-object v2
.end method
