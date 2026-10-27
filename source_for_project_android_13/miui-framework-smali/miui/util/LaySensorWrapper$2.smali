.class Lmiui/util/LaySensorWrapper$2;
.super Landroid/os/Handler;
.source "LaySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/LaySensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/LaySensorWrapper;


# direct methods
.method constructor blacklist <init>(Lmiui/util/LaySensorWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/util/LaySensorWrapper;

    .line 115
    iput-object p1, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 126
    :pswitch_6
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lmiui/util/LaySensorWrapper;I)V

    .line 127
    goto :goto_1b

    .line 123
    :pswitch_d
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lmiui/util/LaySensorWrapper;I)V

    .line 124
    goto :goto_1b

    .line 120
    :pswitch_14
    iget-object v0, p0, Lmiui/util/LaySensorWrapper$2;->this$0:Lmiui/util/LaySensorWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/LaySensorWrapper;->-$$Nest$mnotifyListeners(Lmiui/util/LaySensorWrapper;I)V

    .line 121
    nop

    .line 131
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
