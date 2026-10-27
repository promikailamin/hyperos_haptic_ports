.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$4:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iget-boolean v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$4:Ljava/util/Set;

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$getInstallablePackagesForUserType$3$com-android-server-pm-UserSystemPackageInstaller(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
