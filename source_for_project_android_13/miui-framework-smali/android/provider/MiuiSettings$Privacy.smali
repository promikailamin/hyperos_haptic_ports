.class public final Landroid/provider/MiuiSettings$Privacy;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Privacy"
.end annotation


# static fields
.field public static final blacklist ACTION_PRIVACY_AUTHORIZATION_DIALOG:Ljava/lang/String; = "miui.intent.action.PRIVACY_AUTHORIZATION_DIALOG"

.field public static final blacklist PRIVACY_PREFIX:Ljava/lang/String; = "privacy_status_"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 8135
    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 8136
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->isAppPrivacyEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 8127
    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 8128
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    invoke-virtual {v0, p1, p2}, Lmiui/security/SecurityManager;->setAppPrivacyStatus(Ljava/lang/String;Z)V

    .line 8129
    return-void
.end method
