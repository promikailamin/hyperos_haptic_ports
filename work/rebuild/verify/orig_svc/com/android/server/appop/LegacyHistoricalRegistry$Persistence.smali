.class public abstract Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"


# static fields
.field public static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetsHistoricalAppOpsDir()Lcom/android/internal/os/AtomicDirectory;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 926
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 927
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    return-void
.end method
