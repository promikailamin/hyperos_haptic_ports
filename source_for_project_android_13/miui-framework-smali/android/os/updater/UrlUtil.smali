.class public Landroid/os/updater/UrlUtil;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# static fields
.field public static final whitelist HTTPS_PROTOCOL:Ljava/lang/String; = "https://"

.field public static final whitelist HTTP_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final blacklist UPDATE_GLOBAL_HOST:Ljava/lang/String; = "update.intl.miui.com"

.field public static final whitelist UPDATE_HOST:Ljava/lang/String;

.field private static final blacklist UPDATE_HOST_HOST:Ljava/lang/String; = "update.miui.com"

.field public static final whitelist UPDATE_KEY:Ljava/lang/String; = "bWl1aW90YXZhbGlkZWQxMQ=="

.field public static final whitelist UPDATE_PROTOCOL:Ljava/lang/String;

.field private static final blacklist UPDATE_TEST_HOST:Ljava/lang/String; = "staging.update.miui.srv"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http://"

    goto :goto_b

    :cond_9
    const-string v0, "https://"

    :goto_b
    sput-object v0, Landroid/os/updater/UrlUtil;->UPDATE_PROTOCOL:Ljava/lang/String;

    .line 11
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "staging.update.miui.srv"

    goto :goto_21

    .line 12
    :cond_16
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "update.intl.miui.com"

    goto :goto_21

    :cond_1f
    const-string v0, "update.miui.com"

    :goto_21
    sput-object v0, Landroid/os/updater/UrlUtil;->UPDATE_HOST:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
