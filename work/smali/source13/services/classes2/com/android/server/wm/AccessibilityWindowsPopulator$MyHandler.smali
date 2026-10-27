.class Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityWindowsPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityWindowsPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED_BY_TIMEOUT:I = 0x3

.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED_BY_UI_STABLE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 566
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    .line 567
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 568
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    .line 583
    :pswitch_6
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows change within in 2 frames continuously over 500 ms and notify windows changed immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    goto :goto_2f

    .line 579
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    .line 580
    goto :goto_2f

    .line 574
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 575
    .local v0, "displayIdsForWindowsChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {v1, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V

    .line 576
    .end local v0    # "displayIdsForWindowsChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 591
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1f
        :pswitch_6
    .end packed-switch
.end method
