.class final Lcom/android/server/pm/PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "PrepareFailure.java"


# instance fields
.field public mConflictingPackage:Ljava/lang/String;

.field public mConflictingPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "error"    # I

    .line 27
    const-string v0, "Failed to prepare for install."

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 28
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 32
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 35
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 36
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;
    .registers 3
    .param p1, "conflictingPermission"    # Ljava/lang/String;
    .param p2, "conflictingPackage"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    .line 43
    return-object p0
.end method
