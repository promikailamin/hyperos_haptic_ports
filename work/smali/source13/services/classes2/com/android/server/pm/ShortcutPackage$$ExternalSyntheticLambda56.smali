.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;->f$0:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda56;->f$0:Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$enableWithId$9$com-android-server-pm-ShortcutPackage(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
