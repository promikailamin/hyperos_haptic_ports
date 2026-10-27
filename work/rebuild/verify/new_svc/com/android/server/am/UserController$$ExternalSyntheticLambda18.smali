.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Landroid/util/Pair;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/UserController;

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda18;->f$1:Landroid/util/Pair;

    invoke-static {v0, p0}, Lcom/android/server/am/UserController;->$r8$lambda$MEdDVsapJ-2rX5J2LPOF8oC_5BY(Lcom/android/server/am/UserController;Landroid/util/Pair;)V

    return-void
.end method
