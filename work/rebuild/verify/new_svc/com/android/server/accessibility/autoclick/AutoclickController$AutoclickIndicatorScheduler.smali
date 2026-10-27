.class public final Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIndicatorCallbackActive:Z

.field public mScheduledShowIndicatorTime:J

.field public final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;)V
    .registers 3

    .line 943
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 941
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    .line 944
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 984
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 988
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    const-wide/16 v0, -0x1

    .line 989
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    .line 990
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 6

    .line 949
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 951
    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    .line 952
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    sub-long/2addr v2, v0

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 956
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->redrawIndicator()V

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    return-void
.end method

.method public update()V
    .registers 8

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    .line 965
    iget-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    if-eqz v4, :cond_1b

    iget-wide v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_1b

    .line 968
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v2}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->clearIndicator()V

    .line 969
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    return-void

    :cond_1b
    if-eqz v4, :cond_22

    .line 974
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_22
    const/4 v4, 0x1

    .line 977
    iput-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    .line 978
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    .line 980
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateCursorAreaSize(I)V
    .registers 3

    .line 995
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmCursorAreaSize(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    .line 996
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-static {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmCursorAreaSize(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->setRadius(I)V

    return-void
.end method
