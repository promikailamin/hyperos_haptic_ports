.class public final synthetic Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/PackageManagerShellCommand;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/PackageManagerShellCommand;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->lambda$runGetOemPermissions$1$com-android-server-pm-PackageManagerShellCommand(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
