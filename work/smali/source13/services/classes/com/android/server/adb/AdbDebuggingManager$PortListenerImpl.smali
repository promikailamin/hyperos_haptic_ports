.class Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PortListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 367
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortReceived(I)V
    .registers 4
    .param p1, "port"    # I

    .line 370
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v0, v0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    if-lez p1, :cond_9

    .line 371
    const/16 v1, 0x18

    goto :goto_b

    .line 372
    :cond_9
    const/16 v1, 0x19

    .line 370
    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, v1, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    return-void
.end method
