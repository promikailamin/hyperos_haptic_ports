.class Lcom/android/server/policy/TalkbackShortcutController;
.super Ljava/lang/Object;
.source "TalkbackShortcutController.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isTalkBackShortcutGestureEnabled()Z
    .registers 4

    .line 78
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "wear_accessibility_gesture_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public final logStemTriplePressAccessibilityTelemetry(Landroid/content/ComponentName;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 90
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wear_accessibility_gesture_enabled_during_oobe"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 94
    :cond_16
    iget-object p0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public toggleTalkback(I)Z
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    const-string v2, "TalkBack"

    .line 55
    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getInstalledAccessibilityServiceComponentNameByLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_12
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    xor-int/lit8 v2, v0, 0x1

    .line 66
    iget-object v3, p0, Lcom/android/server/policy/TalkbackShortcutController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    if-nez v0, :cond_28

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/server/policy/TalkbackShortcutController;->logStemTriplePressAccessibilityTelemetry(Landroid/content/ComponentName;)V

    :cond_28
    return v2

    :cond_29
    return v0
.end method
