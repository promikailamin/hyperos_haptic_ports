.class Landroid/app/ForegroundServiceTypePolicy$SystemDialerPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemDialerPermission"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 1321
    const-string v0, "System Dialer"

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    .line 1322
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .registers 6

    .line 1328
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->systemDialerPhoneCallFgsGrant()Z

    move-result p2

    const/4 p3, -0x1

    if-nez p2, :cond_8

    .line 1329
    return p3

    .line 1332
    :cond_8
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/role/RoleManager;

    .line 1333
    const-string p5, "android.app.role.DIALER"

    invoke-virtual {p2, p5}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 1336
    return p3

    .line 1338
    :cond_19
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 1339
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object p1

    .line 1340
    if-eqz p1, :cond_2f

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1341
    const/4 p3, 0x0

    goto :goto_30

    :cond_2f
    nop

    .line 1340
    :goto_30
    return p3
.end method
