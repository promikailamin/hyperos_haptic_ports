.class Lmiui/util/HapticFeedbackUtil$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HapticFeedbackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method constructor blacklist <init>(Lmiui/util/HapticFeedbackUtil;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 309
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    .line 310
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 311
    return-void
.end method


# virtual methods
.method blacklist observe()V
    .registers 4

    .line 314
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->-$$Nest$fgetmContext(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 316
    const-string v1, "haptic_feedback_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 315
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 317
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v1}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 318
    return-void
.end method

.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 327
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 328
    return-void
.end method

.method blacklist unobserve()V
    .registers 2

    .line 321
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$SettingsObserver;->this$0:Lmiui/util/HapticFeedbackUtil;

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->-$$Nest$fgetmContext(Lmiui/util/HapticFeedbackUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 323
    return-void
.end method
