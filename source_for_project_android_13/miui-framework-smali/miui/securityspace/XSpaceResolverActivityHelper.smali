.class public Lmiui/securityspace/XSpaceResolverActivityHelper;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
    }
.end annotation


# static fields
.field private static final blacklist PACKAGE_GOOGLE_VOICEASSIST:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final blacklist PACKAGE_VOICEASSIST:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final blacklist TAG:Ljava/lang/String; = "XSpaceResolverActivity"

.field private static final blacklist XSPACE_SERVICE_COMPONENT:Ljava/lang/String; = "com.miui.securitycore/com.miui.xspace.service.XSpaceService"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 41
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_19

    .line 44
    :cond_f
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {v0, p0, p1, p2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;-><init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V

    invoke-virtual {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V

    .line 45
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method
