.class public final synthetic Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lmiui/security/WakePathChecker;

.field public final synthetic blacklist f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;->f$0:Lmiui/security/WakePathChecker;

    iput-object p2, p0, Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;->f$0:Lmiui/security/WakePathChecker;

    iget-object v1, p0, Lmiui/security/WakePathChecker$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/security/WakePathChecker;->lambda$onPackageAdded$0$miui-security-WakePathChecker(Landroid/content/Context;)V

    return-void
.end method
