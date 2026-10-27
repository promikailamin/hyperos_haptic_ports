.class public Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAppOverrideSystemKey(Landroid/content/Context;I)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7168
    const-string v1, "android.permission.OVERRIDE_SYSTEM_KEY_BEHAVIOR_IN_FOCUSED_WINDOW"

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
