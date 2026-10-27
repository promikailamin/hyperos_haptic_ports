.class public final Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoclickController.java"


# instance fields
.field public final mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

.field public final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field public final mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

.field public mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

.field public final mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

.field public mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .registers 3

    .line 795
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 755
    const-string p2, "accessibility_autoclick_delay"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 765
    const-string p2, "accessibility_autoclick_cursor_area_size"

    .line 766
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

    .line 773
    const-string p2, "accessibility_autoclick_ignore_minor_cursor_movement"

    .line 774
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

    .line 785
    const-string p2, "accessibility_autoclick_revert_to_left_click"

    .line 786
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

    .line 796
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 879
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 880
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    sget v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->DEFAULT_AUTOCLICK_DELAY_TIME:I

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 881
    const-string v2, "accessibility_autoclick_delay"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 886
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->updateDelay(I)V

    .line 890
    :cond_19
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 891
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v0, 0x3c

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 892
    const-string v2, "accessibility_autoclick_cursor_area_size"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 897
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v0, :cond_34

    .line 898
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->updateCursorAreaSize(I)V

    .line 900
    :cond_34
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->-$$Nest$mupdateMovementSlop(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;D)V

    .line 903
    :cond_3a
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_58

    .line 904
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accessibility_autoclick_ignore_minor_cursor_movement"

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 905
    invoke-static {p1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_52

    move p1, v1

    goto :goto_53

    :cond_52
    move p1, v0

    .line 914
    :goto_53
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->setIgnoreMinorCursorMovement(Z)V

    .line 917
    :cond_58
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 918
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "accessibility_autoclick_revert_to_left_click"

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    .line 919
    invoke-static {p1, p2, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_6d

    move v0, v1

    .line 928
    :cond_6d
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->setRevertToLeftClick(Z)V

    :cond_72
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;)V
    .registers 6

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-nez v0, :cond_5b

    if-eqz p1, :cond_53

    if-eqz p2, :cond_4b

    .line 823
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 824
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    .line 825
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    .line 826
    iget-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    iget p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 833
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 837
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    invoke-virtual {p1, p3, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 843
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickCursorAreaSizeSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 846
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    invoke-virtual {p1, p3, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 851
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickIgnoreMinorCursorMovementSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 854
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mUserId:I

    invoke-virtual {p1, p3, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 859
    iget-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mAutoclickRevertToLeftClickSettingUri:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 820
    :cond_4b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "clickScheduler not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 817
    :cond_53
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentResolver not set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 814
    :cond_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Observer already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stop()V
    .registers 3

    .line 870
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickSettingsObserver;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v1, :cond_c

    .line 874
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    .line 871
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AutoclickSettingsObserver not started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
