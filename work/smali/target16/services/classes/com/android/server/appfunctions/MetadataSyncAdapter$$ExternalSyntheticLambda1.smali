.class public final synthetic Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    iget-object p0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->$r8$lambda$SeyFeyEwMVc51ZkcP_LPvzDFeP4(Lcom/android/server/appfunctions/MetadataSyncAdapter;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
