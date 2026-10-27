.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$JkO4sj9VCYtuY-BJgBDA7ldenrE(Lcom/android/server/pm/ShortcutPackage;Landroid/app/appsearch/AppSearchSession;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletionStage;

    return-object p1
.end method
