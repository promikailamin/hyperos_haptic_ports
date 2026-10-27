.class final Lcom/android/server/wm/CompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/CompatModePackages;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 247
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    .line 248
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 249
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 253
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    goto :goto_b

    .line 255
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    invoke-static {v0}, Lcom/android/server/wm/CompatModePackages;->-$$Nest$msaveCompatModes(Lcom/android/server/wm/CompatModePackages;)V

    .line 258
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x12c
        :pswitch_6
    .end packed-switch
.end method
