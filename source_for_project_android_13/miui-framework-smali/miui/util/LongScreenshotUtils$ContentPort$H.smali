.class public Lmiui/util/LongScreenshotUtils$ContentPort$H;
.super Landroid/os/Handler;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils$ContentPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final blacklist MSG_BROADCAST_CALLBACK:I = 0x3

.field public static final blacklist MSG_FINISH:I = 0x4

.field public static final blacklist MSG_SCROLL:I = 0x2

.field public static final blacklist MSG_START:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor blacklist <init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .registers 3
    .param p1, "this$0"    # Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 231
    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 255
    :pswitch_6
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$mfinish(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_3b

    .line 250
    :pswitch_c
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$fgetmMainScrollView(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 251
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$mbroadcastCallback(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_3b

    .line 244
    :pswitch_1a
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$fgetmMainScrollView(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 245
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$mscrollView(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    .line 246
    const/4 v0, 0x3

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3b

    .line 239
    :pswitch_2e
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$fgetmMainScrollView(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 240
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->-$$Nest$mstart(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    .line 258
    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1a
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
