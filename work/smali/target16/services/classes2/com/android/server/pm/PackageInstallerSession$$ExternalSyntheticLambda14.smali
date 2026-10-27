.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->$r8$lambda$f6n35EaqIZ4S6NFJy5mm0eUIK6Y(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerificationFutureResult;)V

    return-void
.end method
