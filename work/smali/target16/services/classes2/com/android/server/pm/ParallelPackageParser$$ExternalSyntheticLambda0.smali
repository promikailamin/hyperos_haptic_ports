.class public final synthetic Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ParallelPackageParser;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Lcom/android/server/pm/InitAppsHelper$ScanParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/InitAppsHelper$ScanParams;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/ParallelPackageParser;->$r8$lambda$emkxoYaw1Ep3JTEL3MsSosv7fPA(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;Lcom/android/server/pm/InitAppsHelper$ScanParams;)V

    return-void
.end method
