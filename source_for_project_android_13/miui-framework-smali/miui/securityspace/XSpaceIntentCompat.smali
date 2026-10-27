.class public Lmiui/securityspace/XSpaceIntentCompat;
.super Ljava/lang/Object;
.source "XSpaceIntentCompat.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist prepareToLeaveUser(Landroid/content/Intent;I)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 12
    return-void
.end method
