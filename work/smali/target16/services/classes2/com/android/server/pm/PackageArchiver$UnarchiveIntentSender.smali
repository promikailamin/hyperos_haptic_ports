.class public Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;
.super Landroid/content/IIntentSender$Stub;
.source "PackageArchiver.java"


# instance fields
.field public final mCallerPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/pm/PackageArchiver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;)V
    .registers 3

    .line 1537
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 1538
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1545
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "android.content.pm.extra.UNARCHIVE_STATUS"

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_e

    goto :goto_42

    .line 1551
    :cond_e
    const-string p1, "android.intent.extra.INTENT"

    const-class p3, Landroid/content/Intent;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 1552
    const-string p3, "android.intent.extra.USER"

    const-class p4, Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    if-eqz p1, :cond_42

    if-eqz p2, :cond_42

    .line 1553
    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-static {p3}, Lcom/android/server/pm/PackageArchiver;->-$$Nest$fgetmAppStateHelper(Lcom/android/server/pm/PackageArchiver;)Lcom/android/server/pm/AppStateHelper;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/android/server/pm/AppStateHelper;->isAppTopVisible(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_42

    const/high16 p3, 0x10000000

    .line 1555
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1556
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-static {p0}, Lcom/android/server/pm/PackageArchiver;->-$$Nest$fgetmContext(Lcom/android/server/pm/PackageArchiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_42
    :goto_42
    return-void
.end method
