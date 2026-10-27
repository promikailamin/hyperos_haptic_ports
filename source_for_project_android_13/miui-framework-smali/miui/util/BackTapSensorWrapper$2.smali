.class Lmiui/util/BackTapSensorWrapper$2;
.super Landroid/os/Handler;
.source "BackTapSensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/BackTapSensorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/BackTapSensorWrapper;


# direct methods
.method constructor blacklist <init>(Lmiui/util/BackTapSensorWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/util/BackTapSensorWrapper;

    .line 46
    iput-object p1, p0, Lmiui/util/BackTapSensorWrapper$2;->this$0:Lmiui/util/BackTapSensorWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget-object v0, p0, Lmiui/util/BackTapSensorWrapper$2;->this$0:Lmiui/util/BackTapSensorWrapper;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lmiui/util/BackTapSensorWrapper;->-$$Nest$mnotifyListeners(Lmiui/util/BackTapSensorWrapper;I)V

    .line 50
    return-void
.end method
