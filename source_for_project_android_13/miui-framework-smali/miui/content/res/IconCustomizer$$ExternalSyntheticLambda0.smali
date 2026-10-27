.class public final synthetic Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/ResolveInfo;

.field public final synthetic blacklist f$1:Landroid/content/pm/PackageManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lmiui/content/res/IconCustomizer;->lambda$prepareCustomizedIcons$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    return-void
.end method
