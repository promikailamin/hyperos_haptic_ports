.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DexOptHelper;

.field public final synthetic f$1:Lcom/android/server/pm/InstallRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/InstallRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/DexOptHelper;

    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/InstallRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/DexOptHelper;

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/InstallRequest;

    invoke-static {v0, p0}, Lcom/android/server/pm/DexOptHelper;->$r8$lambda$VUbJuU_rIge_7A69vm4AK0Fc5dE(Lcom/android/server/pm/DexOptHelper;Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method
