.class Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSetupCompleteObserver"
.end annotation


# instance fields
.field private blacklist mIsRegistered:Z

.field private blacklist mUserId:I

.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 646
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 647
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 637
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 648
    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 649
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_13

    .line 650
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    .line 652
    :cond_13
    return-void
.end method

.method private blacklist isUserSetupComplete()Z
    .registers 5

    .line 655
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    move v3, v1

    :cond_18
    return v3
.end method

.method private blacklist registerObserver()V
    .registers 5

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-eqz v0, :cond_5

    .line 661
    return-void

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 664
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 663
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 667
    return-void
.end method

.method private blacklist setEmptyShortcutTargetIfNeeded()V
    .registers 8

    .line 691
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "shortcutTargets":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 696
    return-void

    .line 699
    :cond_15
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040243

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "defaultShortcutTarget":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v4, v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v5

    .line 702
    invoke-virtual {v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 703
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    .line 704
    .local v4, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_3b
    if-ltz v5, :cond_51

    .line 705
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 706
    return-void

    .line 704
    :cond_4e
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    .line 710
    .end local v5    # "i":I
    :cond_51
    iget v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    const-string v6, ""

    invoke-static {v0, v2, v6, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 712
    return-void
.end method

.method private blacklist unregisterObserver()V
    .registers 2

    .line 678
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 679
    return-void

    .line 681
    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mIsRegistered:Z

    .line 683
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 671
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 672
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    .line 673
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->setEmptyShortcutTargetIfNeeded()V

    .line 675
    :cond_c
    return-void
.end method

.method blacklist onUserSwitched(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 715
    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    if-ne v0, p1, :cond_5

    .line 716
    return-void

    .line 718
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->unregisterObserver()V

    .line 719
    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->mUserId:I

    .line 720
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_13

    .line 721
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->registerObserver()V

    .line 723
    :cond_13
    return-void
.end method
