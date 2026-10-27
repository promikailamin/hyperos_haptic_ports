.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentSender;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;->f$0:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;->f$0:Landroid/content/IntentSender;

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$sendPendingUserActionIntentIfNeeded$2(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    return p1
.end method
