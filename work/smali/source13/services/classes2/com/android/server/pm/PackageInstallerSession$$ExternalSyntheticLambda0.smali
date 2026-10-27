.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/PackageSessionVerifier$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$verifyNonStaged$4$com-android-server-pm-PackageInstallerSession(ILjava/lang/String;)V

    return-void
.end method
