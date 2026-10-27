.class public Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 19684
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 19685
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19686
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 19702
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->update()V

    return-void
.end method

.method public registerObserver()V
    .registers 5

    .line 19690
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "three_finger_gesture"

    .line 19691
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 19690
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 19693
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->update()V

    return-void
.end method

.method public final update()V
    .registers 5

    .line 19697
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$SwipeToScreenshotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string/jumbo v2, "three_finger_gesture"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_15

    move v3, v1

    :cond_15
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fputmIsSwipeToScreenshotEnabled(Lcom/android/server/am/ActivityManagerService;Z)V

    return-void
.end method
