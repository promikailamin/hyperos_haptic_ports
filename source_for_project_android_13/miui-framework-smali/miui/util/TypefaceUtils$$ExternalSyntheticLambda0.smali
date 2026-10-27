.class public final synthetic Lmiui/util/TypefaceUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/Application;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/Application;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/TypefaceUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lmiui/util/TypefaceUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Application;

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->lambda$recordApplication$0(Landroid/app/Application;)V

    return-void
.end method
