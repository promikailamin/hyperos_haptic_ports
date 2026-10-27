.class public final synthetic Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

.field public final synthetic f$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    iput-object p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    invoke-static {v0, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->$r8$lambda$6x3791Vpzm9EvFzqEU_YcvejCYI(Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    return-void
.end method
