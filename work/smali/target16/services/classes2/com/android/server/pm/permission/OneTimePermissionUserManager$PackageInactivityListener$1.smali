.class public Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;
.super Landroid/app/UidObserver;
.source "OneTimePermissionUserManager.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidGone(IZ)V
    .registers 3

    .line 216
    iget-object p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    invoke-static {p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$fgetmUid(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)I

    move-result p2

    if-ne p1, p2, :cond_e

    .line 217
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mupdateUidState(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    :cond_e
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 224
    iget-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    invoke-static {p3}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$fgetmUid(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)I

    move-result p3

    if-ne p1, p3, :cond_1c

    const/4 p1, 0x4

    if-le p2, p1, :cond_16

    const/16 p1, 0x14

    if-eq p2, p1, :cond_16

    .line 227
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mupdateUidState(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    return-void

    .line 229
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mupdateUidState(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    :cond_1c
    return-void
.end method
