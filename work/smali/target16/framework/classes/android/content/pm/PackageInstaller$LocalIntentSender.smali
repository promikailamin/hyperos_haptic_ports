.class final Landroid/content/pm/PackageInstaller$LocalIntentSender;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalIntentSender"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSession:Landroid/content/pm/IPackageInstallerSession;

.field private final blacklist mSessionId:I

.field private final blacklist mStatusReceiver:Landroid/content/IntentSender;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetIntentSender(Landroid/content/pm/PackageInstaller$LocalIntentSender;)Landroid/content/IntentSender;
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;ILandroid/content/pm/IPackageInstallerSession;Landroid/content/IntentSender;)V
    .registers 5

    .line 1550
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1551
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    .line 1552
    iput p2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSessionId:I

    .line 1553
    iput-object p3, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1554
    iput-object p4, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mStatusReceiver:Landroid/content/IntentSender;

    .line 1555
    return-void
.end method

.method private blacklist getIntentSender()Landroid/content/IntentSender;
    .registers 5

    .line 1558
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.WAIT_INSTALL_CONSTRAINTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    .line 1559
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1558
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1560
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v2, p0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1562
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method

.method private blacklist unregisterReceiver()V
    .registers 2

    .line 1593
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1594
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1569
    const-string p1, "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

    const-class v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    .line 1573
    :try_start_a
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;->areAllConstraintsSatisfied()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1574
    iget-object p1, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSession:Landroid/content/pm/IPackageInstallerSession;

    iget-object p2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mStatusReceiver:Landroid/content/IntentSender;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    goto :goto_47

    .line 1577
    :cond_19
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1578
    const-string p1, "android.content.pm.extra.SESSION_ID"

    iget p2, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mSessionId:I

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    const-string p1, "android.content.pm.extra.STATUS"

    const/16 p2, 0x8

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    const-string p2, "Install constraints not satisfied within timeout"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$LocalIntentSender;->mStatusReceiver:Landroid/content/IntentSender;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3f} :catch_46
    .catchall {:try_start_a .. :try_end_3f} :catchall_40

    goto :goto_47

    .line 1588
    :catchall_40
    move-exception v0

    move-object p1, v0

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->unregisterReceiver()V

    .line 1589
    throw p1

    .line 1585
    :catch_46
    move-exception v0

    .line 1588
    :goto_47
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->unregisterReceiver()V

    .line 1589
    nop

    .line 1590
    return-void
.end method
