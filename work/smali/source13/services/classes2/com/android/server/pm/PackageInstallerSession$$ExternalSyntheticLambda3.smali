.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$install$5$com-android-server-pm-PackageInstallerSession(Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
