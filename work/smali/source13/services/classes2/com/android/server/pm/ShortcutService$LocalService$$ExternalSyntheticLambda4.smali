.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$2:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/infra/AndroidFuture;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;->f$1:Lcom/android/internal/infra/AndroidFuture;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$getShortcutIconFdAsync$8$com-android-server-pm-ShortcutService$LocalService(Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
