.class public Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$1;
.super Ljava/lang/Object;
.source "MultiUserAppFunctionAccessHistory.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/os/UserHandle;)Lcom/android/server/appfunctions/AppFunctionAccessHistory;
    .registers 4

    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionSQLiteAccessHistory;

    iget-object p0, p0, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/appfunctions/AppFunctionSQLiteAccessHistory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 171
    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory$1;->apply(Landroid/os/UserHandle;)Lcom/android/server/appfunctions/AppFunctionAccessHistory;

    move-result-object p0

    return-object p0
.end method
