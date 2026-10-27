.class Lcom/android/server/am/AnrHelper$1;
.super Landroid/os/Handler;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AnrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/AnrHelper;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/AnrHelper;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 242
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_13

    .line 247
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AnrHelper$AnrRecord;

    .line 248
    .local v0, "record":Lcom/android/server/am/AnrHelper$AnrRecord;
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/AnrHelper$AnrRecord;

    invoke-static {v1, v2}, Lcom/android/server/am/AnrHelper;->-$$Nest$mappNotResponding(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/AnrHelper$AnrRecord;)V

    .line 251
    .end local v0    # "record":Lcom/android/server/am/AnrHelper$AnrRecord;
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method
