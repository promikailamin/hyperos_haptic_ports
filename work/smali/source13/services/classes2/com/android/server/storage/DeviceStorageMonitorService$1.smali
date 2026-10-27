.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 322
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 325
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 333
    return-void

    .line 330
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->-$$Nest$mcheckHigh(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 331
    return-void

    .line 327
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->-$$Nest$mcheckLow(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 328
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
